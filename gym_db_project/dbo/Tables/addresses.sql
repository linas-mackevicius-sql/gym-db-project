CREATE TABLE gym.addresses
(
    id INT IDENTITY(1,1) NOT NULL,
    city_id INT NOT NULL,
    street_name NVARCHAR(255) NOT NULL,
    house_number NVARCHAR(50) NOT NULL,
    CONSTRAINT PK_addresses
        PRIMARY KEY (id),
    CONSTRAINT FK_addresses_cities
        FOREIGN KEY (city_id)
        REFERENCES gym.cities (id),
    CONSTRAINT UQ_addresses_city_street_house
        UNIQUE (city_id, street_name, house_number)
);
GO

CREATE NONCLUSTERED INDEX IX_addresses_city_id 
    ON gym.addresses (city_id);

    