CREATE TABLE gym.equipment_items
(
    id INT IDENTITY(1,1) NOT NULL,
    title NVARCHAR(255) NOT NULL,
    manufacturer_id INT NULL,
    weight_kg DECIMAL (6,2) NULL,
    [description] NVARCHAR(500) NULL,
    CONSTRAINT PK_equipment_items
        PRIMARY KEY (id),
    CONSTRAINT FK_equipment_items_manufacturers
        FOREIGN KEY (manufacturer_id) 
        REFERENCES gym.manufacturers (id),
    CONSTRAINT equipment_items_weight_kg_range
        CHECK (weight_kg IS NULL OR (weight_kg >= 0.25 AND weight_kg <= 1000.00)),
    CONSTRAINT equipment_items_weight_kg_round
        CHECK(weight_kg IS NULL OR (ROUND(weight_kg, 2, 1) = weight_kg))
);
GO
CREATE NONCLUSTERED INDEX IX_equipment_items_manufacturer_id
on gym.equipment_items (manufacturer_id);

