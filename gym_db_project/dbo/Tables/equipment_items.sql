CREATE TABLE gym.equipment_items
(
    id INT IDENTITY(1,1) NOT NULL,
    title NVARCHAR(255) NOT NULL,
    manufacturer_id INT NULL,
    category_id INT NOT NULL,
    product_page_url NVARCHAR(500) NULL,
    CONSTRAINT PK_equipment_items
        PRIMARY KEY (id),
    CONSTRAINT FK_equipment_items_manufacturers
        FOREIGN KEY (manufacturer_id) 
        REFERENCES gym.manufacturers (id),
    CONSTRAINT FK_equipment_items_categories
        FOREIGN KEY (category_id)
        REFERENCES gym.categories(id),
    CONSTRAINT UQ_equipment_items_title_manufacturer_id
        UNIQUE (title, manufacturer_id)
);

GO
CREATE NONCLUSTERED INDEX IX_equipment_items_manufacturer_id
on gym.equipment_items (manufacturer_id);