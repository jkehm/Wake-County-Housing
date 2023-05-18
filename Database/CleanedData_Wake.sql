-- Creating tables from Cleaned_WC_Data
CREATE TABLE Cleaned_WC_Data (
	REAL_ESTATE_ID int,
	Township text,
	Deeded_Acreage text,
	Total_sale_Price int,
	Year_Built text,
	HEATED_AREA int,
	DESIGN_STYLE text,
	BATH text,
	Story_Height text,
	PHYSICAL_CITY text,
	PHYSICAL_ZIP_CODE text,
	year int,
	month text,
	Quarter text
);
-- Query all fields from table
Select *
FROM Cleaned_WC_Data;

-- Table for looking at Square Feet Heated Area
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

-- Table for just looking at sale prices
CREATE TABLE Wake_County_SalePrices AS
	Select REAL_ESTATE_ID, Year_Built, PHYSICAL_CITY, PHYSICAL_ZIP_CODE, Total_sale_Price, year, month
	FROM Cleaned_WC_Data;
	
-- Query all fields from table
Select *
FROM Wake_County_SalePrices;

-- Drop Tables
DROP TABLE Wake_County_SqFtYr;
DROP TABLE Cleaned_WC_Data;
DROP TABLE Wake_County_SalePrices;