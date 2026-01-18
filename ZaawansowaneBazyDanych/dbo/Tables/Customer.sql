CREATE TABLE [dbo].[Customer] (
    [CustomerID]   INT                                         NOT NULL,
    [NameStyle]    BIT                                         NOT NULL,
    [Title]        NVARCHAR (8)                                NULL,
    [FirstName]    NVARCHAR (50)                               NOT NULL,
    [MiddleName]   NVARCHAR (50)                               NULL,
    [LastName]     NVARCHAR (50)                               NOT NULL,
    [Suffix]       NVARCHAR (10)                               NULL,
    [CompanyName]  NVARCHAR (128)                              NULL,
    [SalesPerson]  NVARCHAR (256)                              NULL,
    [EmailAddress] NVARCHAR (50)                               NULL,
    [Phone]        NVARCHAR (25)                               NULL,
    [PasswordHash] VARCHAR (128)                               NOT NULL,
    [PasswordSalt] VARCHAR (10)                                NOT NULL,
    [rowguid]      UNIQUEIDENTIFIER                            DEFAULT (newid()) NOT NULL,
    [ModifiedDate] DATETIME                                    DEFAULT (getdate()) NOT NULL,
    [SysStartTime] DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    [SysEndTime]   DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    PRIMARY KEY CLUSTERED ([CustomerID] ASC),
    PERIOD FOR SYSTEM_TIME ([SysStartTime], [SysEndTime])
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[dbo].[CustomerHistory], DATA_CONSISTENCY_CHECK=ON));

