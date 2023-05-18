-- Creating tables for Cleaned_WC_Data
CREATE TABLE Wake_County_SqFtYr (
    REAL_ESTATE_ID INT,
    PHYSICAL_CITY TEXT,
	PHYSICAL_ZIP_CODE INT,
	year INT,
    month INT,
    HEATED_AREA INT,
    DESIGN_STYLE TEXT,
	Story_Height TEXT
);

-- Query all fields from table
Select *
FROM Wake_County_SqFtYr;

-- Drop Table
DROP TABLE Wake_County_SqFtYr;