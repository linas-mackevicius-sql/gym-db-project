CREATE TABLE gym.inventory_item_reviews
(
    id INT IDENTITY(1,1) NOT NULL,
    inventory_id INT NOT NULL,
    client_id INT NOT NULL,  
    rating TINYINT NOT NULL,
    comment NVARCHAR(500) NULL,
    created_at DATETIME2(3) DEFAULT SYSUTCDATETIME() NOT NULL,
    CONSTRAINT PK_inventory_item_reviews
        PRIMARY KEY (id),
    CONSTRAINT FK_inventory_item_reviews_inventories
        FOREIGN KEY (inventory_id) 
        REFERENCES gym.inventories (id) 
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT FK_inventory_item_reviews_clients
        FOREIGN KEY (client_id)
        REFERENCES gym.clients (id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT CHK_reviews_rating CHECK (rating BETWEEN 1 AND 5)
);
GO
CREATE NONCLUSTERED INDEX IX_inventory_item_reviews_inventory_id
    ON gym.inventory_item_reviews (inventory_id);
GO
CREATE NONCLUSTERED INDEX IX_inventory_item_reviews_client_id
    ON gym.inventory_item_reviews (client_id);




