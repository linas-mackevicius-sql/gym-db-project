CREATE TABLE gym.machines_specs
(
    equipment_id INT NOT NULL,  
    rom_rating_id INT NULL,
    guided_angle_deg DECIMAL(4,2) NULL,
    CONSTRAINT PK_machines_specs 
        PRIMARY KEY (equipment_id),
    CONSTRAINT FK_machines_specs_equipment_items 
        FOREIGN KEY (equipment_id) 
        REFERENCES gym.equipment_items (id) 
        ON DELETE CASCADE
    CONSTRAINT machines_specs_rom_ratings
        FOREIGN KEY (rom_rating_id),
        REFERENCES gym.rom_ratings (id)
);
