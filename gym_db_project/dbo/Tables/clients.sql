CREATE TABLE dbo.clients
(
    id INT IDENTITY(1,1) NOT NULL,
    display_name NVARCHAR(100) NOT NULL,
    email NVARCHAR(100) NOT NULL,
    CONSTRAINT PK_clients
        PRIMARY KEY (id),
    CONSTRAINT UQ_clients_email
        UNIQUE (email),
    CONSTRAINT UQ_clients_display_name
        UNIQUE (display_name)
)
