CREATE TABLE gym.gyms
(
    id INT IDENTITY(1,1) NOT NULL,
    company_id INT NOT NULL,
    address_id INT NOT NULL,
    CONSTRAINT PK_gyms
        PRIMARY KEY (id),
    CONSTRAINT FK_gyms_companies
        FOREIGN KEY (company_id)
        REFERENCES gym.companies (id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT FK_gyms_addresses
        FOREIGN KEY (address_id)
        REFERENCES gym.addresses (id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT UQ_gyms_company_id_address_id 
        UNIQUE (company_id, address_id)
);

GO
CREATE NONCLUSTERED INDEX IX_gyms_address_id 
    ON gym.gyms (address_id);


