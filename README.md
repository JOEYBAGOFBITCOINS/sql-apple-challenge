# Apple SQL Challenge

Solution to the Apple SQL challenge to split `phone_names` into `brand` and `model_name`.

## Problem

The `phone_names` column contains values such as:

- Acer - Iconia Talk S  
- Samsung: Galaxy Note  
- Nokia * Lumia  
- Sony~Xperia XZ  

Each value includes a brand and model name, separated by one of the following delimiters:
- `-`
- `:`
- `*`
- `~`

The objective is to:
- Extract the brand (text before the delimiter)
- Extract the model_name (text after the delimiter)
- Remove any leading or trailing whitespace using `TRIM`

## Solution

The SQL query uses `SUBSTRING_INDEX`, `TRIM`, and `CASE WHEN` logic to identify and split based on the delimiter present in each row.

See `split_phone_names.sql` for the full implementation.

