-- Mineralen en voedingswoorden, 20 oktober 2026
-- Plak dit in de Supabase SQL-editor en klik op Run.
--
-- 1. Oesterschelp en eierschaal zijn mineralen, geen schaaldier en geen ei.
--    Ze gaan uit de woordenlijst; de site kent ze daarna als mineraal.
-- 2. Woorden die nog onschuldig stonden maar wel een echt voedingsmiddel zijn,
--    krijgen hun eigen allergeen.
-- 3. Oude automatisch aangevulde rijen die alleen door een verkeerd woord
--    zijn ontstaan, gaan weg. Anders blijft de kaart het oude oordeel houden.

begin;

delete from public.ingredient_terms
where term in ('oesterschelp', 'oesterschaal', 'eierschaal', 'eischaal');

with nieuwe_indeling(term, allergeen) as (
  values
    ('psyllium', 'psyllium'),
    ('psylliumschil', 'psyllium'),
    ('psylliumschillen', 'psyllium'),
    ('psylliumzaden', 'psyllium'),
    ('vlozaad', 'psyllium'),
    ('vlozaadschillen', 'psyllium'),
    ('biergist', 'yeast'),
    ('saccharomyces', 'yeast'),
    ('cerevisiae', 'yeast'),
    ('chiazaad', 'chia'),
    ('lijnzaden', 'flax'),
    ('kopraolie', 'coconut'),
    ('honing', 'honey'),
    ('aloe', 'aloe'),
    ('yucca', 'yucca'),
    ('schidigera', 'yucca'),
    ('tagetes', 'tagetes'),
    ('tagetesbloemen', 'tagetes'),
    ('borage', 'borage'),
    ('bernagieolie', 'borage'),
    ('mariadistel', 'milkthistle'),
    ('mariadistelzaad', 'milkthistle'),
    ('teunisbloemolie', 'eveningprimrose')
)
update public.ingredient_terms as t
set kind = 'bron',
    allergen_keys = array[n.allergeen]
from nieuwe_indeling n
where t.term = n.term;

-- Oude rijen die alleen door de verkeerde woorden zijn ontstaan.
delete from public.recipe_ingredients as r
using (values
  -- Schaaldieren die alleen uit oesterschelp of oesterschaal kwamen.
  ('4426e98a-7050-426e-869f-ddaa4bc6a93f'::uuid, 'shellfish'),
  ('17bff68a-437a-4de3-afe8-5357e169e7d4'::uuid, 'shellfish'),
  ('564bab31-3bf8-49b7-96f7-09f1917d534e'::uuid, 'shellfish'),
  ('4425d4b8-61ea-4697-bbdf-e1c3e1834f5f'::uuid, 'shellfish'),
  ('e843444e-4065-472b-981d-52d7b0a70bf8'::uuid, 'shellfish'),
  ('ec187f0b-e45e-47cf-bdb7-8404e86faa2c'::uuid, 'shellfish'),
  ('39efd3b9-ec14-4d45-94a8-aad69a419723'::uuid, 'shellfish'),
  ('6be29750-6055-4a28-a602-4745424fa117'::uuid, 'shellfish'),
  ('57c40f18-4913-40c8-b4eb-86a493f989ff'::uuid, 'shellfish'),
  ('a53f193f-5aa2-4a6e-b853-e2a2a13a16c0'::uuid, 'shellfish'),
  ('7647f86d-3bc1-4ab4-9799-f40af67f43f0'::uuid, 'shellfish'),
  ('fc3a7b2e-da01-4d0e-8bb9-ac6f260771d6'::uuid, 'shellfish'),
  ('7ad743c0-df2d-43cd-bcb4-9f131e22ed12'::uuid, 'shellfish'),
  ('e8982822-293e-4d4d-a47e-e48582016206'::uuid, 'shellfish'),
  ('b82aeb7f-6121-4754-8677-77f5a81d276c'::uuid, 'shellfish'),
  -- Ei dat alleen uit eierschaal of eischaal kwam.
  ('e72f3f8c-c066-47d8-ad9e-4fd506efed5e'::uuid, 'egg'),
  ('a656ee6a-ccf4-40b7-82b9-013c0c288c9e'::uuid, 'egg'),
  ('8fe8fcf8-a767-41fa-8aee-272318625209'::uuid, 'egg'),
  ('7d1fe85c-a8e1-499f-9b3c-68b90f5d47a0'::uuid, 'egg'),
  ('47f7e941-3cdf-406c-a13a-a4da32f5e2c1'::uuid, 'egg'),
  ('410f9af7-ef63-47ea-9d9c-936910ca0570'::uuid, 'egg'),
  ('4c74e1ad-4224-4ec0-b952-19ba470a719c'::uuid, 'egg'),
  ('9c28472e-1916-4f0d-864f-cb84b5342089'::uuid, 'egg'),
  ('6b3fde16-fe63-4b0d-bbe5-a19998d7f6af'::uuid, 'egg'),
  ('86c2529a-48c3-4e22-b8d5-25646211a89a'::uuid, 'egg'),
  ('5e02da22-8345-47f9-aba6-667b45a990b7'::uuid, 'egg'),
  ('8cb8d75d-0901-4462-99ab-72e2a6e12514'::uuid, 'egg'),
  ('79c00d62-3570-4a9d-a77c-75d0cd1dfabf'::uuid, 'egg'),
  ('21d9e213-b1f0-4885-8211-a7fe54f7ca0e'::uuid, 'egg'),
  -- Paard dat alleen uit paardenbloem kwam.
  ('0ab3438e-7d21-45e2-bdb3-382277099978'::uuid, 'horse'),
  ('a429850f-e40c-42de-96f4-a3c833cebc56'::uuid, 'horse'),
  ('dfdac6a2-f16d-4dcf-ae78-894e9fe7e80d'::uuid, 'horse'),
  ('88ca84f4-ad96-44bc-ab83-1ec698c06c4b'::uuid, 'horse'),
  ('bd4a0c79-d06d-435c-ba5c-fb25cddf572e'::uuid, 'horse'),
  ('dd075810-926d-45da-8bc2-6096e7b05d1d'::uuid, 'horse'),
  ('1b0a721a-4a08-412d-9323-6d5764a23567'::uuid, 'horse'),
  ('ff25c620-529b-4a42-9947-c482b2e0d9b5'::uuid, 'horse'),
  ('5f0482bb-9a6b-495a-b38f-7719e4f442ae'::uuid, 'horse'),
  ('ceb3c88f-c459-4825-9288-e337c14b8074'::uuid, 'horse'),
  ('2f351807-25dc-4908-84b1-be2a6ae99db7'::uuid, 'horse'),
  ('1809b531-c24c-4733-804c-f696b072746a'::uuid, 'horse'),
  ('effaa9de-5915-418c-88ec-8c0d7b4e848e'::uuid, 'horse'),
  ('4426e98a-7050-426e-869f-ddaa4bc6a93f'::uuid, 'horse'),
  ('17bff68a-437a-4de3-afe8-5357e169e7d4'::uuid, 'horse'),
  ('564bab31-3bf8-49b7-96f7-09f1917d534e'::uuid, 'horse'),
  ('a656ee6a-ccf4-40b7-82b9-013c0c288c9e'::uuid, 'horse'),
  ('8fe8fcf8-a767-41fa-8aee-272318625209'::uuid, 'horse'),
  ('4425d4b8-61ea-4697-bbdf-e1c3e1834f5f'::uuid, 'horse'),
  ('e843444e-4065-472b-981d-52d7b0a70bf8'::uuid, 'horse'),
  ('39efd3b9-ec14-4d45-94a8-aad69a419723'::uuid, 'horse'),
  ('57c40f18-4913-40c8-b4eb-86a493f989ff'::uuid, 'horse'),
  ('7ad743c0-df2d-43cd-bcb4-9f131e22ed12'::uuid, 'horse'),
  ('e0866963-3525-4ad1-b93e-836846aad734'::uuid, 'horse'),
  ('32561d78-a81f-479c-ad75-c1493bf8c758'::uuid, 'horse'),
  ('2076f669-5885-43a2-806e-297e040c9a7c'::uuid, 'horse'),
  ('8b18504d-cfa2-4bc4-aa75-392b34cc1702'::uuid, 'horse'),
  ('d00222a1-8868-4f13-8713-7b412484f24c'::uuid, 'horse'),
  ('ad441d99-e22b-425e-98ae-a3287790614f'::uuid, 'horse'),
  -- Boon dat alleen uit bonenkruid kwam.
  ('dfdac6a2-f16d-4dcf-ae78-894e9fe7e80d'::uuid, 'bean'),
  ('6be29750-6055-4a28-a602-4745424fa117'::uuid, 'bean'),
  -- Granen dat alleen uit een graanvrij-woord kwam.
  ('151279fc-f9df-43f3-9beb-6a285abd5dd6'::uuid, 'grains'),
  ('7bca8ef9-7494-4a2d-8433-2ae5ca911c1d'::uuid, 'grains'),
  -- Tarwe dat alleen uit een tarwevrij-woord kwam.
  ('260d5ad6-d547-47c9-b37e-faac5d555c45'::uuid, 'wheat')
) as v(recipe_version_id, allergen_key)
where r.recipe_version_id = v.recipe_version_id
  and r.allergen_key = v.allergen_key;

commit;
