CREATE TABLE [CONTACTS] (
  [idContact] integer PRIMARY KEY,
  [name] nvarchar(255),
  [lastName] nvarchar(255),
  [email] nvarchar(255),
  [address] nvarchar(255),
  [company] nvarchar(255)
)
GO

CREATE TABLE [NUMBERS] (
  [idNumber] integer PRIMARY KEY,
  [number] nvarchar(255),
  [idNumberType] integer,
  [idContact] integer
)
GO

CREATE TABLE [NUMBER_TYPE] (
  [idNumberType] integer PRIMARY KEY,
  [description] nvarchar(255)
)
GO

ALTER TABLE [NUMBERS] ADD FOREIGN KEY ([idContact]) REFERENCES [CONTACTS] ([idContact])
GO

ALTER TABLE [NUMBERS] ADD FOREIGN KEY ([idNumberType]) REFERENCES [NUMBER_TYPE] ([idNumberType])
GO
