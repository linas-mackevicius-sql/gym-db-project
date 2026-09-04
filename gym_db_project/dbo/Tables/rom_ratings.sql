CREATE TABLE gym.rom_ratings
(
  id INT IDENTITY(1,1) NOT NULL,
  title NVARCHAR(100) NOT NULL,
  CONSTRAINT PK_rom_ratings
      PRIMARY KEY (id),
  CONSTRAINT UQ_rom_ratings_title
      UNIQUE (title)
);
