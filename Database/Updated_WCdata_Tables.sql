CREATE TABLE Last_Decade_WakeCounty(
    Township int  NOT NULL,
    Deeded_Acreage float(3)   NOT NULL,
    Total_sale_Price int   NOT NULL,
    Year_Built int   NOT NULL,
    HEATED_AREA int   NOT NULL,
    DESIGN_STYLE text   NOT NULL,
    BATH text   NOT NULL,
    Story_Height text   NOT NULL,
    PHYSICAL_CITY text   NOT NULL,
    PHYSICAL_ZIP_CODE float(5)   NOT NULL,
    year int   NOT NULL,
    month int   NOT NULL,
    Quarter int   NOT NULL
);

CREATE TABLE WakeCounty_Cleaned_wDate (
    Township int  NOT NULL,
    Deeded_Acreage float(3)   NOT NULL,
    Total_sale_Price int   NOT NULL,
    Total_Sale_Date text   NOT NULL,
    Year_Built int   NOT NULL,
    HEATED_AREA int   NOT NULL,
    DESIGN_STYLE text   NOT NULL,
    BATH text   NOT NULL,
    Story_Height text   NOT NULL,
    PHYSICAL_CITY text   NOT NULL,
    PHYSICAL_ZIP_CODE float(5)   NOT NULL,
    year int   NOT NULL,
    month int   NOT NULL,
    Quarter int   NOT NULL
);

CREATE TABLE WakeCounty_Population (
    PHYSCIAL_CITY text  NOT NULL,
    Multipart_Flag text   NOT NULL,
    Year_Incorporated int   NOT NULL,
    Estimated_Date date   NOT NULL,
    Population int   NOT NULL,
    Estimate_Type text   NOT NULL,
    Geo_Point text   NOT NULL,
    year int   NOT NULL,
    month int   NOT NULL,
    day int   NOT NULL
);

SELECT * FROM Last_Decade_WakeCounty;
SELECT * FROM WakeCounty_Cleaned_wDate;
SELECT * FROM WakeCounty_Population;