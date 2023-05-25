-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Last_Decade_WakeCounty" (
    "Township" int   NOT NULL,
    "Deeded_Acreage" float(3)   NOT NULL,
    "Total_sale_Price" int   NOT NULL,
    "Year_Built" int   NOT NULL,
    "HEATED_AREA" int   NOT NULL,
    "DESIGN_STYLE" text   NOT NULL,
    "BATH" text   NOT NULL,
    "Story_Height" text   NOT NULL,
    "PHYSICAL_CITY" text   NOT NULL,
    "PHYSICAL_ZIP_CODE" float(5)   NOT NULL,
    "year" int   NOT NULL,
    "month" int   NOT NULL,
    "Quarter" int   NOT NULL
);

CREATE TABLE "WakeCounty_Cleaned_wDate" (
    "Township" int   NOT NULL,
    "Deeded_Acreage" float(3)   NOT NULL,
    "Total_sale_Price" int   NOT NULL,
    "Total_Sale_Date" text   NOT NULL,
    "Year_Built" int   NOT NULL,
    "HEATED_AREA" int   NOT NULL,
    "DESIGN_STYLE" text   NOT NULL,
    "BATH" text   NOT NULL,
    "Story_Height" text   NOT NULL,
    "PHYSICAL_CITY" text   NOT NULL,
    "PHYSICAL_ZIP_CODE" float(5)   NOT NULL,
    "year" int   NOT NULL,
    "month" int   NOT NULL,
    "Quarter" int   NOT NULL
);

SELECT*
FROM "Last_Decade_WakeCounty";

SELECT*
FROM "WakeCounty_Cleaned_wDate";