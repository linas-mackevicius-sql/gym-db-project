CREATE TABLE gym.categories
(
    id INT IDENTITY(1,1) NOT NULL,
    title NVARCHAR(100) NOT NULL,
    CONSTRAINT PK_categories
        PRIMARY KEY (id),
    CONSTRAINT UQ_categories_title
        UNIQUE (title) 

)
