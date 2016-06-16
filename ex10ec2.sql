DROP TABLE address;
DROP TABLE person_address;

CREATE TABLE address (
    id INTEGER PRIMARY KEY,
    house_number TEXT,
    street TEXT,
    postcode TEXT
    );

CREATE TABLE person_address (
    person_id INTEGER,
    address_id INTEGER
    );

INSERT INTO person(ID,Fi) VALUES(1, "Lucy", "Hattersley",29);

INSERT INTO address VALUES(0, "6A", "Vicars Hill", "SE13 7JH");

INSERT INTO person_address VALUES(1,0);