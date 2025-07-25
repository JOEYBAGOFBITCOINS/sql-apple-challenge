SELECT
  p.phone_id,
  p.phone_names,
  p.price_usd,
  TRIM(
    CASE
      WHEN phone_names LIKE '%-%' THEN SUBSTRING_INDEX(phone_names, '-', 1)
      WHEN phone_names LIKE '%:%' THEN SUBSTRING_INDEX(phone_names, ':', 1)
      WHEN phone_names LIKE '%*%' THEN SUBSTRING_INDEX(phone_names, '*', 1)
      WHEN phone_names LIKE '%~%' THEN SUBSTRING_INDEX(phone_names, '~', 1)
    END
  ) AS brand,
  TRIM(
    CASE
      WHEN phone_names LIKE '%-%' THEN SUBSTRING_INDEX(phone_names, '-', -1)
      WHEN phone_names LIKE '%:%' THEN SUBSTRING_INDEX(phone_names, ':', -1)
      WHEN phone_names LIKE '%*%' THEN SUBSTRING_INDEX(phone_names, '*', -1)
      WHEN phone_names LIKE '%~%' THEN SUBSTRING_INDEX(phone_names, '~', -1)
    END
  ) AS model_name
FROM dim_phones_apple p;
