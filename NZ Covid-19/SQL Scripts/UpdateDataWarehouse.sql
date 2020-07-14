/* Update DHB table to contain island */
UPDATE DimDHB
SET DHBIsland = 
(SELECT CASE 
	WHEN DimDHB.DHBName = 'Auckland' THEN 'North'
	WHEN DimDHB.DHBName = 'Bay of Plenty' THEN 'North'
	WHEN DimDHB.DHBName = 'Canterbury' THEN 'South'
	WHEN DimDHB.DHBName = 'Capital and Coast' THEN 'North'
	WHEN DimDHB.DHBName = 'Counties Manukau' THEN 'North'
	WHEN DimDHB.DHBName = 'Hawke''s Bay' THEN 'North'
	WHEN DimDHB.DHBName = 'Hutt Valley' THEN 'North'
	WHEN DimDHB.DHBName = 'Lakes' THEN 'South'
	WHEN DimDHB.DHBName = 'MidCentral' THEN 'North'
	WHEN DimDHB.DHBName = 'Nelson Marlborough' THEN 'South'
	WHEN DimDHB.DHBName = 'Northland' THEN 'North'
	WHEN DimDHB.DHBName = 'South Canterbury' THEN 'South'
	WHEN DimDHB.DHBName = 'Southern' THEN 'South'
	WHEN DimDHB.DHBName = 'Tairawhiti' THEN 'North'
	WHEN DimDHB.DHBName = 'Taranaki' THEN 'North'
	WHEN DimDHB.DHBName = 'Waikato' THEN 'North'
	WHEN DimDHB.DHBName = 'Wairarapa' THEN 'North'
	WHEN DimDHB.DHBName = 'Waitemata' THEN 'North'
	WHEN DimDHB.DHBName = 'West Coast' THEN 'South'
	WHEN DimDHB.DHBName = 'Whanganui' THEN 'North'
END
)

/* Update country names - USA */
UPDATE DimLastVisitedCountry
SET CountryName = 'USA'
WHERE CountryName = 'United States of America'

/* Update country names - UAE */
UPDATE DimLastVisitedCountry
SET CountryName = 'UAE'
WHERE CountryName = 'United Arab Emirates'

/* Update country names - UK */
UPDATE DimLastVisitedCountry
SET CountryName = 'UK'
WHERE CountryName = 'United Kingdom'

/* Update age from */
UPDATE DimAgeGroup
SET AgeFrom = 0
WHERE AgeGroupKey = 1

UPDATE DimAgeGroup
SET AgeFrom = 1
WHERE AgeGroupKey = 2

UPDATE DimAgeGroup
SET AgeFrom = 5
WHERE AgeGroupKey = 8

UPDATE DimAgeGroup
SET AgeFrom = 10
WHERE AgeGroupKey = 3

UPDATE DimAgeGroup
SET AgeFrom = 15
WHERE AgeGroupKey = 4

UPDATE DimAgeGroup
SET AgeFrom = 20
WHERE AgeGroupKey = 5

UPDATE DimAgeGroup
SET AgeFrom = 30
WHERE AgeGroupKey = 6

UPDATE DimAgeGroup
SET AgeFrom = 40
WHERE AgeGroupKey = 7

UPDATE DimAgeGroup
SET AgeFrom = 50
WHERE AgeGroupKey = 9

UPDATE DimAgeGroup
SET AgeFrom = 60
WHERE AgeGroupKey = 10

UPDATE DimAgeGroup
SET AgeFrom = 70
WHERE AgeGroupKey = 11