/* Clear all tables, except for DimDate */
DELETE FROM DimAgeGroup
DELETE FROM DimDHB
DELETE FROM DimGender
DELETE FROM DimLastVisitedCountry
DELETE FROM FactCovidCase

/* Reset identity seed for DimAgeGroup */
DBCC CHECKIDENT (DimAgeGroup, RESEED, 0);
GO

/* Reset identity seed for DimDHB */
DBCC CHECKIDENT (DimDHB, RESEED, 0);
GO

/* Reset identity seed for DimGender */
DBCC CHECKIDENT (DimGender, RESEED, 0);
GO

/* Reset identity seed for DimLastVisitedCountry */
DBCC CHECKIDENT (DimLastVisitedCountry, RESEED, 0);
GO

/* Reset identity seed for FactCovidCase */
DBCC CHECKIDENT (FactCovidCase, RESEED, 0);
GO