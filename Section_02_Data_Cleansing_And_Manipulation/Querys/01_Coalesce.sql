SELECT
    *
FROM
    stores;


SELECT
    store_name
  , web_address
  , COALESCE(web_address, store_name)
FROM
    stores;


SELECT
    store_name
  , web_address
  , COALESCE(store_name, web_address)
FROM
    stores;
