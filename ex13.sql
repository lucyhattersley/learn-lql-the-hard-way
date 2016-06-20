/* Add a dead column to person that's like the one in pet. */
ALTER TABLE person ADD COLUMN dead INTEGER;

/* Add a phone_number column to person. */
ALTER TABLE person ADD COLUMN phone_number TEXT;

/*Add a salary column to person that is float.*/
ALTER TABLE person ADD COLUMN salary REAL;

/*Add a dob column to both person and pet that is a DATETIME.*/
ALTER TABLE person ADD COLUMN dob DATETIME;
ALTER TABLE pet ADD COLUMN dob DATETIME;

/*Add a purchased_on column to person_pet of type DATETIME.*/
ALTER TABLE person_pet ADD COLUMN purchased_on DATETIME; 

/*Add a parent to pet column that's an INTEGER and holds the id for this pet's parent.*/
ALTER TABLE pet ADD COLUMN parent INTEGER;

/*Update the existing database records with the new column data using UPDATE statements. Don't forget about the purchased_on column in person_pet relation table to indicate when that person bought the pet.*/
UPDATE person SET dead=0 WHERE id=0;
UPDATE person SET phone_number="555_1234" WHERE id=0;
UPDATE person SET salary=12345.99 WHERE id=0;
UPDATE person set dob='1979-01-01' WHERE id=0;
UPDATE pet set dob='2014-01-01' WHERE id=0;
UPDATE pet set dob='2015-01-01' WHERE id=1;
UPDATE pet set parent=0 WHERE id=0;
UPDATE pet set parent=0 WHERE id=1;

/*Add 4 more people and 5 more pets and assign their ownership and what pet's are parents. On this last part remember that you get the id of the parent, then set it in the parent column.*/
INSERT INTO person (id,first_name,last_name,age,dead,phone_number,salary,dob)
    VALUES (1,"Lucy","Hattersley",29,0,"07515 352353",30000.00,'1987-06-10');
INSERT INTO pet (id,name,breed,age,dead,dob,parent)
    VALUES (2,"Siouxsie","Cat",4,0,'2012-07-01',1);
INSERT INTO person_pet (person_id,pet_id)
    VALUES (1,2);
INSERT INTO pet(id,name,breed,age,dead,dob,parent)
    VALUES (3,"Amber","Cat",3,1,'2009-04-10',1);
INSERT INTO person_pet (person_id,pet_id)
    VALUES (1,3);

INSERT INTO person (id,first_name,last_name,age,dead,phone_number,salary,dob)
    VALUES (2,"Rosie","Hattersley",29,0,"07861 026420",20000.00,'1987-12-18');
INSERT INTO pet (id,name,breed,age,dead,dob,parent)
    VALUES (4,"Bella","Dog",9,0,'1990-01-01',2);
INSERT INTO person_pet (person_id,pet_id)
    VALUES (2,4);

INSERT INTO person (id,first_name,last_name,age,dead,phone_number,salary,dob)
    VALUES (3,"Jonny","Evans",29,0,"555 1234 1234",40000.00,'1987-09-02');
INSERT INTO pet (id,name,breed,age,dead,dob,parent)
    VALUES (5,"Biffo","Dog",4,0,'2012-01-01',3);
INSERT INTO person_pet (person_id,pet_id)
    VALUES (3,5);

INSERT INTO person (id,first_name,last_name,age,dead,phone_number,salary,dob)
    VALUES (4,"Phoebe","Astle",10,0,"07519 775596",1000.00,'1971-04-11');
INSERT INTO pet (id,name,breed,age,dead,dob,parent)
    VALUES (6,"Charlie","Dog",5,1,'2009-01-01',4);
INSERT INTO person_pet (person_id,pet_id)
    VALUES (4,6);

/*Write a query that can find all the names of pets and their owners bought after 2004. Key to this is to map the person_pet based on the purchased_on column to the pet and parent.*/
SELECT * FROM pet WHERE dob > '2004-01-01';


/*Write a query that can find the pets that are children of a given pet. Again look at the pet.parent to do this. It's actually easy so don't over think it.*/