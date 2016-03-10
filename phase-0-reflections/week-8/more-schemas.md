Release 2:

![one-to-one schema](imgs/one-to-one-ex-schema.png?raw=true "One-to-one Schema")

The user and security check is a one-to-one relationship because there can only be one unique answer to each security question. (Ex: What's your hometown?) Additionally the fields in security checks can be NULL because the user can choose not to ansewr a security check question.


Release 4: Refactor

![many-to-many schema](imgs/many-to-many-ex-schema.png?raw=true "many-to-many Schema")


Release 6 - Reflect:


**What is a one-to-one database?**

  One-to-one databases demonstate a one-to-one relationship (a pair relationship) where one of the tables does not need to have a field for its id.


**When would you use a one-to-one database? (Think generally, not in terms of the example you created).**

  In general, you would create a one-to-one database when two things have a single relationship to one another, and a group of fields can all optionally be empty (NULL).


**What is a many-to-many database?**

  Many objects with many relationships in both directions.


**When would you use a many-to-many database? (Think generally, not in terms of the example you created).**

  To model complex schemas and map out relationships. To model a many-to-many relationship, two disticnt tables are connected by a join table. A join table connects the two independent tables by keeping track of the two ids


**What is confusing about database schemas? What makes sense?**

  I'm not sure if I fully understand when and why one would use a one-to-one database. I understand the importance of having these 3 fundamental relationships to build more complex databases. I'm hoping codeacademy's course will be helpful!
