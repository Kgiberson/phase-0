1. Select all data for all states:
sqlite> SELECT *
   ...> FROM states;

2. Select all data for all regions.
sqlite> SELECT *
   ...> FROM regions;

3. Select the 'state_name' and 'population' for all states.
sqlite> SELECT state_name, population
   ...> FROM states;

4. Select the 'state_name' and 'population' for all states ordered by population. The state with the highest population should be at the top.
sqlite> SELECT state_name, population
   ...> FROM states
   ...> ORDER BY population DESC;

5. Select the 'state_name' for the states in region 7.
sqlite> SELECT state_name
   ...> FROM states
   ...> WHERE region_id = 7;

6. Select the 'state_name' and 'population_density' for states with a population density over 50 ordered from least to most dense.
sqlite> SELECT state_name, population_density
   ...> FROM states
   ...> WHERE population_density > 50
   ...> ORDER BY population_density;

7. Select the 'state_name' for states with a population between 1 million and 1.5 million people.
sqlite> SELECT state_name
   ...> FROM states
   ...> WHERE population
   ...> BETWEEN 1000000 AND 1500000;

8. Select the 'state_name' and 'region_id' for states ordered by region in ascending order.
sqlite> SELECT state_name, region_id
   ...> FROM states
   ...> ORDER BY region_id;

9. Select the 'region_name' for the regions with "Central" in the name.
sqlite> SELECT region_name
   ...> FROM regions
   ...> WHERE region_name like "%Central%";

10. Select the 'region_name' and the 'state_name' for all states and regions in ascending order by 'region_id'. Refer to the region by name. (This will involve joining the tables.)
sqlite> SELECT region_name, state_name
   ...> FROM regions
   ...> INNER JOIN states
   ...> ON regions.id=states.region_id;

Reflection:
What are databases for?
What is a one-to-many relationship?
What is a primary key? What is a foreign key? How can you determine which is which?
How can you select information out of a SQL database? What are some general guidelines for that?

Release 6:

![outfits schema](outfits.schema.png?raw=true "Outfits Schema")

Release 7: Reflect
What are databases for?

  A database is a collection of information organized to allow it to be easily accessed, managed, and updated.


What is a one-to-many relationship?

  A one-to-many relationship exists in a relational database when one row in table A may be linked with many rows in table B, but one row in table B is linked to only one row in table A. It is a property of the relationship itself.


What is a primary key? What is a foreign key? How can you determine which is which?

  A primary key is a field (or collection of fields) which uniquely identify that row from all other rows. It is assumed in Rails that the primary key is an auto-incrementing integer called 'id'. A foreign key is used to connect one table to another. They are generally used to connect a primary key to another table with a field for that primary key as well.


How can you select information out of a SQL database? What are some general guidelines for that?

  SELECT column_name
  FROM table_name
  end statement with a ';'
  other keywords to use: WHERE, ORDER BY, BETWEEN, INNER JOIN
