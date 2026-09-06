CREATE TABLE gym.inventories
(
  id INT IDENTITY(1,1) NOT NULL,
  gym_id INT NOT NULL,
  equipment_item_id INT NOT NULL,
  quantity_total INT NOT NULL,
  quantity_under_repair INT NOT NULL DEFAULT 0,
  created_at DATETIME2(3) DEFAULT SYSUTCDATETIME() NOT NULL,
  CONSTRAINT PK_inventories
      PRIMARY KEY (id),
  CONSTRAINT FK_inventories_equipment_items
      FOREIGN KEY (equipment_item_id)
      REFERENCES gym.equipment_items (id),
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
  CONSTRAINT FK_inventories_gyms  
      FOREIGN KEY (gym_id)
      REFERENCES gym.gyms (id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  CONSTRAINT CHK_inventories_quantity
      CHECK (quantity_total >= 0),
  CONSTRAINT CHK_inventories_quantity_under_repair
      CHECK (quantity_under_repair <= quantity_total),
  CONSTRAINT UQ_inventories_gym_equipment 
    UNIQUE (gym_id, equipment_item_id)
);
GO
CREATE NONCLUSTERED INDEX IX_inventories_equipment_item_id 
    ON gym.inventories (equipment_item_id);
