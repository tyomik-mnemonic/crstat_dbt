

  create  table "postgres"."dbt"."vandalism__dbt_tmp"
  as (
    /*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

--

with source_data as (

   select * from "postgres"."dbt"."crime"
)

select *
from source_data
where OFFENSE_CODE_GROUP = 'Vandalism'

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
  );