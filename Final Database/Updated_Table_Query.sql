--------- Tables Used -----------
CREATE TABLE WakeCountyPopulation (
    physical_city varchar(20)  NOT NULL,
    multipart_flag varchar(50)  NOT NULL,
    Year_Incorporated int   NOT NULL,
    estimated_date date   NOT NULL,
    population int   NOT NULL,
    estimate_type varchar(20)  NOT NULL,
    year int   NOT NULL,
    month int   NOT NULL,
    day int   NOT NULL,
    latitude float(6) NOT NULL,
    longitude float(6) NOT NULL,
	PRIMARY KEY (
        physical_city
     )
);

CREATE TABLE LastDecadeWakeCounty(
    township int  NOT NULL,
    deeded_acreage float(3)   NOT NULL,
    total_sale_Price int   NOT NULL,
    year_built int   NOT NULL,
    heated_area int   NOT NULL,
    design_style text   NOT NULL,
    bath text   NOT NULL,
    story_height text   NOT NULL,
    physical_city varchar(20)  NOT NULL,
    physical_zip_code float(5)   NOT NULL,
    year int   NOT NULL,
    month int   NOT NULL,
    quarter int   NOT NULL,
		CONSTRAINT fk_LastDecadeWakeCounty 
		FOREIGN KEY (physical_city)
			REFERENCES WakeCountyPopulation(physical_city)
);

CREATE TABLE WakeCountyCleanedwDate (
    township int  NOT NULL,
    deeded_acreage float(3)   NOT NULL,
    total_sale_price int   NOT NULL,
    total_sale_date text   NOT NULL,
    year_built int   NOT NULL,
    heated_area int   NOT NULL,
    design_style text   NOT NULL,
    bath text   NOT NULL,
    story_height text   NOT NULL,
    physical_city text   NOT NULL,
    physical_zip_code float(5)   NOT NULL,
    year int   NOT NULL,
    month int   NOT NULL,
    Quarter int   NOT NULL
);

SELECT * 
FROM LastDecadeWakeCounty;
SELECT * 
FROM WakeCountyCleanedwDate;
SELECT * 
FROM WakeCountyPopulation;

DROP TABLE LastDecadeWakeCounty;
DROP TABLE WakeCountyCleanedwDate;
DROP TABLE WakeCountyPopulation;
