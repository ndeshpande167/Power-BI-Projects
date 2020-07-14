/* UPDATE SCRIPT */

/* Set all genders to one of the options */
UPDATE covidrawdata
SET Sex = 'Indeterminate'
WHERE Sex = ''

/* Set all unknown cases of travel to 'Unspecified' */
UPDATE covidrawdata
SET [International travel] = 'Not specified'
WHERE [International travel] = ''

/* Set country of all non-travel cases to New Zealand */
UPDATE covidrawdata
SET [Last country before return] = 'New Zealand'
WHERE [International travel] = 'No'

/* Set country of all unspecified travel to 'Unspecified' */
UPDATE covidrawdata
SET [Last country before return] = 'Not specified'
WHERE [International travel] = 'Not specified'

/* Set country to 'Unspecified' where country is blank */
UPDATE covidrawdata
SET [Last country before return] = 'Not specified'
WHERE [Last country before return] = ''

/* New column to hold datetime, which is used to find datekey in lookup */
IF COL_LENGTH('covidrawdata', 'CaseDateTime') IS NULL
BEGIN
	ALTER TABLE covidrawdata
	ADD CaseDateTime datetime2(7)
END


/* Populate new datetime column */
UPDATE covidrawdata 
SET CaseDateTime = 
CONVERT(datetime2(7), 
RIGHT([Date of report], 4) + '-' + 
LEFT(RIGHT([Date of report], 7), 2) + '-' + 
LEFT([Date of report], CHARINDEX('/', [Date of report]) - 1))


/* Update district names */
/* Tairawhiti */
UPDATE covidrawdata
SET DHB = 'Tairawhiti'
WHERE DHB = 'Tair?whiti'

/* Waitemata */
UPDATE covidrawdata
SET DHB = 'Waitemata'
WHERE DHB = 'Waitemat?'