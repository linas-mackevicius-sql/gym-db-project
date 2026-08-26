CREATE TABLE gym.cities
(
  id INT IDENTITY(1,1) NOT NULL,
  title NVARCHAR(100) NOT NULL,
      PRIMARY KEY (id),
  CONSTRAINT UQ_cities_title
      UNIQUE (title)
);



