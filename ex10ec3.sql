-- SELECT pet.id, pet.name, pet.age, pet.dead
--     FROM pet, person_pet, person
--     WHERE
--     pet.id = person_pet.pet_id AND
--     person_pet.person_id = person.id AND
--     person.first_name = "Zed";

SELECT address.id, address.house_number, address.street, address.postcode
    FROM person, address, person_address
    WHERE address.id = person_address.address_id AND
    person_address.person_id = person.id AND
    person.first_name = "Lucy";