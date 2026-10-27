-- De openbare catalogus haalt alleen gepubliceerde producten op, gesorteerd op
-- id. Deze partial index voorkomt dat de query ook niet-gepubliceerde rijen
-- meeneemt en blijft nuttig als de catalogus groeit.
--
-- Opnieuw uitvoeren is veilig.

create index if not exists products_published_id_idx
  on public.products (id)
  where published;
