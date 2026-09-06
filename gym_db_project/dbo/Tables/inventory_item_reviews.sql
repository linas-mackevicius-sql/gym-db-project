CREATE TABLE gym.inventory_item_reviews
(
    inventory_id INT NOT NULL,  
    rom_rating_id INT NULL,
    [description] NVARCHAR(500) NULL,
    CONSTRAINT PK_inventory_item_reviews
        PRIMARY KEY (inventory_id),
    CONSTRAINT FK_inventory_item_reviews_inventories
        FOREIGN KEY (inventory_id) 
        REFERENCES gym.inventories (id) 
        ON DELETE CASCADE
    CONSTRAINT FK_inventory_item_reviews_rom_rating
        FOREIGN KEY (rom_rating_id),
        REFERENCES gym.rom_ratings (id)
);
