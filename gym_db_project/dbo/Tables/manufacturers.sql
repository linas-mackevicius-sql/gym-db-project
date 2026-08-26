CREATE TABLE gym.manufacturers
(
    id INT IDENTITY(1,1) NOT NULL,
    title NVARCHAR(100) NOT NULL,
    CONSTRAINT PK_manufacturers
        PRIMARY KEY (id),
    CONSTRAINT UQ_manufacturers_title
        UNIQUE (title)
);