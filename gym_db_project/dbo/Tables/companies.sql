CREATE TABLE gym.companies
(
  id INT IDENTITY(1,1) NOT NULL,
  title NVARCHAR(100) NOT NULL,
  CONSTRAINT PK_companies
      PRIMARY KEY (id),
  CONSTRAINT UQ_companies_title
      UNIQUE (title)
);