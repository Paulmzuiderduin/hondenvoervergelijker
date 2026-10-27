
update public.products p
   set source_url = 'https://www.eukanuba.eu/dog/dry-food/life-care/adult-medium-breed-rich-in-fresh-chicken', source_status = 'ok', source_note = null, last_checked_at = current_date
 where p.brand = 'Eukanuba' and p.name = 'Active Adult Medium Breed kip';

update public.recipe_versions rv
   set import_note = 'Nederlandse vertaling van de etiket tekst; origineel staat op de bronpagina van het product.', import_hash = 'sha256:b6c4e4c50cfa47a508cd6b19fea369174c25efd47db23b5626fc220fb84b54e2'
  from public.products p
 where p.brand = 'Eukanuba' and p.name = 'Active Adult Medium Breed kip' and rv.product_id = p.id and rv.is_current;
