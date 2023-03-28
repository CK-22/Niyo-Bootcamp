SELECT * FROM `project3-the-colour-of-covid19.Covid19_RaceTracker.CRT`
ORDER BY 2 DESC;
--Total Cases = Cases_White	+ Cases_Black + Cases_Latinx + Cases_Asian + Cases_AIAN	+ Cases_NHPI + Cases_Multiracial + Cases_Other + Cases_Unknown//Same goes for deaths total and Hosp total
--Cases_Ethnicity_Hispanic + Cases_Ethnicity_NonHispanic + Cases_Ethnicity_Unknown = Total Cases
-- WILL NOT BE USING Ethnicity_Hispanic, Ethnicity_NonHispanic, Ethnicity_Unknown COLUMNS - NUMBERS DONT ADD UP LATINX columns is sometimes alwasy NULL

--Which race/ethnicity has the highest number of recorded COVID cases in each State? it identifies the ethnicity group with the highest number of cases. The CASE statement checks which ethnicity group has the highest number of cases among the eight groups (White, Black, Latinx, Asian, AIAN, NHPI, Multiracial, and Other) and assigns a corresponding label
SELECT
     DISTINCT State,
  CASE 
    WHEN Cases_White >= Cases_Black AND Cases_White >= Cases_Latinx AND Cases_White >= Cases_Asian 
        AND Cases_White >= Cases_AIAN AND Cases_White >= Cases_NHPI AND Cases_White >= Cases_Multiracial 
        AND Cases_White >= Cases_Other AND Cases_White >= Cases_Unknown 
      THEN 'White'
    WHEN Cases_Black >= Cases_White AND Cases_Black >= Cases_Latinx AND Cases_Black >= Cases_Asian 
        AND Cases_Black >= Cases_AIAN AND Cases_Black >= Cases_NHPI AND Cases_Black >= Cases_Multiracial 
        AND Cases_Black >= Cases_Other AND Cases_Black >= Cases_Unknown 
      THEN 'Black'
    WHEN Cases_Latinx >= Cases_White AND Cases_Latinx >= Cases_Black AND Cases_Latinx >= Cases_Asian 
        AND Cases_Latinx >= Cases_AIAN AND Cases_Latinx >= Cases_NHPI AND Cases_Latinx >= Cases_Multiracial 
        AND Cases_Latinx >= Cases_Other AND Cases_Latinx >= Cases_Unknown 
      THEN 'Latinx'
    WHEN Cases_Asian >= Cases_White AND Cases_Asian >= Cases_Black AND Cases_Asian >= Cases_Latinx 
        AND Cases_Asian >= Cases_AIAN AND Cases_Asian >= Cases_NHPI AND Cases_Asian >= Cases_Multiracial 
        AND Cases_Asian >= Cases_Other AND Cases_Asian >= Cases_Unknown 
      THEN 'Asian'
    WHEN Cases_AIAN >= Cases_White AND Cases_AIAN >= Cases_Black AND Cases_AIAN >= Cases_Latinx 
        AND Cases_AIAN >= Cases_Asian AND Cases_AIAN >= Cases_NHPI AND Cases_AIAN >= Cases_Multiracial 
        AND Cases_AIAN >= Cases_Other AND Cases_AIAN >= Cases_Unknown 
      THEN 'AIAN'
    WHEN Cases_NHPI >= Cases_White AND Cases_NHPI >= Cases_Black AND Cases_NHPI >= Cases_Latinx 
        AND Cases_NHPI >= Cases_Asian AND Cases_NHPI >= Cases_AIAN AND Cases_NHPI >= Cases_Multiracial 
        AND Cases_NHPI >= Cases_Other AND Cases_NHPI >= Cases_Unknown 
      THEN 'NHPI'
    WHEN Cases_Multiracial >= Cases_White AND Cases_Multiracial >= Cases_Black AND Cases_Multiracial >= Cases_Latinx 
        AND Cases_Multiracial >= Cases_Asian AND Cases_Multiracial >= Cases_AIAN AND Cases_Multiracial >= Cases_Other AND Cases_Multiracial >= Cases_Unknown 
      THEN 'Multiracial'
    WHEN Cases_Other >= Cases_White AND Cases_Other >= Cases_Black AND Cases_Other >= Cases_Latinx 
        AND Cases_Other >= Cases_Asian AND Cases_Other >= Cases_AIAN AND Cases_Other >= Cases_Multiracial AND Cases_Other >= Cases_Unknown 
      THEN 'Other'
    WHEN Cases_Unknown >= Cases_White AND Cases_Unknown >= Cases_Black AND Cases_Unknown >= Cases_Latinx 
        AND Cases_Unknown >= Cases_Asian AND Cases_Unknown >= Cases_AIAN AND Cases_Unknown >= Cases_Multiracial 
        AND Cases_Unknown >= Cases_Other
      THEN 'Unknown' 
ELSE 'Not Classified'
    END AS ethnicity_highest_cases
FROM `project3-the-colour-of-covid19.Covid19_RaceTracker.CRT`
WHERE Cases_White > 0 AND Cases_Black > 0 AND Cases_Latinx > 0  AND Cases_Asian > 0 AND Cases_AIAN > 0 AND Cases_NHPI > 0 AND Cases_Multiracial > 0 AND Cases_Other > 0 AND Cases_Unknown > 0 
ORDER BY 1 ASC; --CA = Latinx, MN = White, NH = White, WA = Unknown, CO = White, WA = Unknown, GA = Unknown
--DEATHS
SELECT
     DISTINCT State,
  CASE 
    WHEN Deaths_White >= Deaths_Black AND Deaths_White >= Deaths_Latinx AND Deaths_White >= Deaths_Asian 
        AND Deaths_White >= Deaths_AIAN AND Deaths_White >= Deaths_NHPI AND Deaths_White >= Deaths_Multiracial 
        AND Deaths_White >= Deaths_Other AND Deaths_White >= Deaths_Unknown 
      THEN 'White'
    WHEN Deaths_Black >= Deaths_White AND Deaths_Black >= Deaths_Latinx AND Deaths_Black >= Deaths_Asian 
        AND Deaths_Black >= Deaths_AIAN AND Deaths_Black >= Deaths_NHPI AND Deaths_Black >= Deaths_Multiracial 
        AND Deaths_Black >= Deaths_Other AND Deaths_Black >= Deaths_Unknown 
      THEN 'Black'
    WHEN Deaths_Latinx >= Deaths_White AND Deaths_Latinx >= Deaths_Black AND Deaths_Latinx >= Deaths_Asian 
        AND Deaths_Latinx >= Deaths_AIAN AND Deaths_Latinx >= Deaths_NHPI AND Deaths_Latinx >= Deaths_Multiracial 
        AND Deaths_Latinx >= Deaths_Other AND Deaths_Latinx >= Deaths_Unknown 
      THEN 'Latinx'
    WHEN Deaths_Asian >= Deaths_White AND Deaths_Asian >= Deaths_Black AND Deaths_Asian >= Deaths_Latinx 
        AND Deaths_Asian >= Deaths_AIAN AND Deaths_Asian >= Deaths_NHPI AND Deaths_Asian >= Deaths_Multiracial 
        AND Deaths_Asian >= Deaths_Other AND Deaths_Asian >= Deaths_Unknown 
      THEN 'Asian'
    WHEN Deaths_AIAN >= Deaths_White AND Deaths_AIAN >= Deaths_Black AND Deaths_AIAN >= Deaths_Latinx 
        AND Deaths_AIAN >= Deaths_Asian AND Deaths_AIAN >= Deaths_NHPI AND Deaths_AIAN >= Deaths_Multiracial 
        AND Deaths_AIAN >= Deaths_Other AND Deaths_AIAN >= Deaths_Unknown 
      THEN 'AIAN'
    WHEN Deaths_NHPI >= Deaths_White AND Deaths_NHPI >= Deaths_Black AND Deaths_NHPI >= Deaths_Latinx 
        AND Deaths_NHPI >= Deaths_Asian AND Deaths_NHPI >= Deaths_AIAN AND Deaths_NHPI >= Deaths_Multiracial 
        AND Deaths_NHPI >= Deaths_Other AND Deaths_NHPI >= Deaths_Unknown 
      THEN 'NHPI'
    WHEN Deaths_Multiracial >= Deaths_White AND Deaths_Multiracial >= Deaths_Black AND Deaths_Multiracial >= Deaths_Latinx 
        AND Deaths_Multiracial >= Deaths_Asian AND Deaths_Multiracial >= Deaths_AIAN AND Deaths_Multiracial >= Deaths_Other AND Deaths_Multiracial >= Deaths_Unknown 
      THEN 'Multiracial'
    WHEN Deaths_Other >= Deaths_White AND Deaths_Other >= Deaths_Black AND Deaths_Other >= Deaths_Latinx 
        AND Deaths_Other >= Deaths_Asian AND Deaths_Other >= Deaths_AIAN AND Deaths_Other >= Deaths_Multiracial AND Deaths_Other >= Deaths_Unknown 
      THEN 'Other'
    WHEN Deaths_Unknown >= Deaths_White AND Deaths_Unknown >= Deaths_Black AND Deaths_Unknown >= Deaths_Latinx 
        AND Deaths_Unknown >= Deaths_Asian AND Deaths_Unknown >= Deaths_AIAN AND Deaths_Unknown >= Deaths_Multiracial 
        AND Deaths_Unknown >= Deaths_Other
      THEN 'Unknown' 
ELSE 'Not Classified'
    END AS ethnicity_highest_Deaths
FROM `project3-the-colour-of-covid19.Covid19_RaceTracker.CRT`
WHERE Deaths_White > 0 AND Deaths_Black > 0 AND Deaths_Latinx > 0  AND Deaths_Asian > 0 AND Deaths_AIAN > 0 AND Deaths_NHPI > 0 AND Deaths_Multiracial > 0 AND Deaths_Other > 0 AND Deaths_Unknown > 0 
ORDER BY 1 ASC;
--HOSP
SELECT
     DISTINCT State,
  CASE 
    WHEN Hosp_White >= Hosp_Black AND Hosp_White >= Hosp_Latinx AND Hosp_White >= Hosp_Asian 
        AND Hosp_White >= Hosp_AIAN AND Hosp_White >= Hosp_NHPI AND Hosp_White >= Hosp_Multiracial 
        AND Hosp_White >= Hosp_Other AND Hosp_White >= Hosp_Unknown 
      THEN 'White'
    WHEN Hosp_Black >= Hosp_White AND Hosp_Black >= Hosp_Latinx AND Hosp_Black >= Hosp_Asian 
        AND Hosp_Black >= Hosp_AIAN AND Hosp_Black >= Hosp_NHPI AND Hosp_Black >= Hosp_Multiracial 
        AND Hosp_Black >= Hosp_Other AND Hosp_Black >= Hosp_Unknown 
      THEN 'Black'
    WHEN Hosp_Latinx >= Hosp_White AND Hosp_Latinx >= Hosp_Black AND Hosp_Latinx >= Hosp_Asian 
        AND Hosp_Latinx >= Hosp_AIAN AND Hosp_Latinx >= Hosp_NHPI AND Hosp_Latinx >= Hosp_Multiracial 
        AND Hosp_Latinx >= Hosp_Other AND Hosp_Latinx >= Hosp_Unknown 
      THEN 'Latinx'
    WHEN Hosp_Asian >= Hosp_White AND Hosp_Asian >= Hosp_Black AND Hosp_Asian >= Hosp_Latinx 
        AND Hosp_Asian >= Hosp_AIAN AND Hosp_Asian >= Hosp_NHPI AND Hosp_Asian >= Hosp_Multiracial 
        AND Hosp_Asian >= Hosp_Other AND Hosp_Asian >= Hosp_Unknown 
      THEN 'Asian'
    WHEN Hosp_AIAN >= Hosp_White AND Hosp_AIAN >= Hosp_Black AND Hosp_AIAN >= Hosp_Latinx 
        AND Hosp_AIAN >= Hosp_Asian AND Hosp_AIAN >= Hosp_NHPI AND Hosp_AIAN >= Hosp_Multiracial 
        AND Hosp_AIAN >= Hosp_Other AND Hosp_AIAN >= Hosp_Unknown 
      THEN 'AIAN'
    WHEN Hosp_NHPI >= Hosp_White AND Hosp_NHPI >= Hosp_Black AND Hosp_NHPI >= Hosp_Latinx 
        AND Hosp_NHPI >= Hosp_Asian AND Hosp_NHPI >= Hosp_AIAN AND Hosp_NHPI >= Hosp_Multiracial 
        AND Hosp_NHPI >= Hosp_Other AND Hosp_NHPI >= Hosp_Unknown 
      THEN 'NHPI'
    WHEN Hosp_Multiracial >= Hosp_White AND Hosp_Multiracial >= Hosp_Black AND Hosp_Multiracial >= Hosp_Latinx 
        AND Hosp_Multiracial >= Hosp_Asian AND Hosp_Multiracial >= Hosp_AIAN AND Hosp_Multiracial >= Hosp_Other AND Hosp_Multiracial >= Hosp_Unknown 
      THEN 'Multiracial'
    WHEN Hosp_Other >= Hosp_White AND Hosp_Other >= Hosp_Black AND Hosp_Other >= Hosp_Latinx 
        AND Hosp_Other >= Hosp_Asian AND Hosp_Other >= Hosp_AIAN AND Hosp_Other >= Hosp_Multiracial AND Hosp_Other >= Hosp_Unknown 
      THEN 'Other'
    WHEN Hosp_Unknown >= Hosp_White AND Hosp_Unknown >= Hosp_Black AND Hosp_Unknown >= Hosp_Latinx 
        AND Hosp_Unknown >= Hosp_Asian AND Hosp_Unknown >= Hosp_AIAN AND Hosp_Unknown >= Hosp_Multiracial 
        AND Hosp_Unknown >= Hosp_Other
      THEN 'Unknown' 
ELSE 'Not Classified'
    END AS ethnicity_highest_Hosp
FROM `project3-the-colour-of-covid19.Covid19_RaceTracker.CRT`
WHERE Hosp_White > 0 AND Hosp_Black > 0 AND Hosp_Latinx > 0  AND Hosp_Asian > 0 AND Hosp_AIAN > 0 AND Hosp_NHPI > 0 AND Hosp_Multiracial > 0 AND Hosp_Other > 0 AND Hosp_Unknown > 0 
ORDER BY 1 ASC;

--shows the highest ethnicity group in terms of COVID-19 cases for each state, as well as the percent increase in total cases from the previous day. It uses the LAG() function to get the previous day's total cases and calculates the percent increase by dividing the difference by the previous day's total cases and multiplying by 100. The DISTINCT keyword ensures that each row returned is unique. The CASE statement assigns the highest ethnicity group based on which group has the highest number of cases for each state.
SELECT DISTINCT State, Date,
       CASE WHEN Cases_White = MAX(Cases_White) OVER (PARTITION BY State) THEN 'White'
            WHEN Cases_Black = MAX(Cases_Black) OVER (PARTITION BY State) THEN 'Black'
            WHEN Cases_Latinx = MAX(Cases_Latinx) OVER (PARTITION BY State) THEN 'Latinx'
            WHEN Cases_Asian = MAX(Cases_Asian) OVER (PARTITION BY State) THEN 'Asian'
            WHEN Cases_AIAN = MAX(Cases_AIAN) OVER (PARTITION BY State) THEN 'AIAN'
            WHEN Cases_NHPI = MAX(Cases_NHPI) OVER (PARTITION BY State) THEN 'NHPI'
            WHEN Cases_Multiracial = MAX(Cases_Multiracial) OVER (PARTITION BY State) THEN 'Multiracial'
            WHEN Cases_Other = MAX(Cases_Other) OVER (PARTITION BY State) THEN 'Other'
            WHEN Cases_Unknown = MAX(Cases_Unknown) OVER (PARTITION BY State) THEN 'Unknown'
            ELSE 'Unknown' END AS Ethnicity_Highest_Cases,
        LAG(Cases_Total, 1) OVER (PARTITION BY State ORDER BY State ASC) AS Previous_Cases_Total,
       ROUND(((Cases_Total - LAG(Cases_Total, 1) OVER (PARTITION BY State ORDER BY State ASC)) / LAG(Cases_Total, 1) OVER (PARTITION BY State ORDER BY State ASC)),2) * 100 AS Percent_Increase
FROM `project3-the-colour-of-covid19.Covid19_RaceTracker.CRT` AS Previous_Cases_Total
  WHERE Cases_White > 0 AND Cases_Black > 0 AND Cases_Latinx > 0  AND Cases_Asian > 0 AND Cases_AIAN > 0 AND Cases_NHPI > 0 AND Cases_Multiracial > 0 AND Cases_Other > 0 AND Cases_Unknown > 0;
--DEATHS
SELECT DISTINCT State, Date,
       CASE WHEN Deaths_White = MAX(Deaths_White) OVER (PARTITION BY State) THEN 'White'
            WHEN Deaths_Black = MAX(Deaths_Black) OVER (PARTITION BY State) THEN 'Black'
            WHEN Deaths_Latinx = MAX(Deaths_Latinx) OVER (PARTITION BY State) THEN 'Latinx'
            WHEN Deaths_Asian = MAX(Deaths_Asian) OVER (PARTITION BY State) THEN 'Asian'
            WHEN Deaths_AIAN = MAX(Deaths_AIAN) OVER (PARTITION BY State) THEN 'AIAN'
            WHEN Deaths_NHPI = MAX(Deaths_NHPI) OVER (PARTITION BY State) THEN 'NHPI'
            WHEN Deaths_Multiracial = MAX(Deaths_Multiracial) OVER (PARTITION BY State) THEN 'Multiracial'
            WHEN Deaths_Other = MAX(Deaths_Other) OVER (PARTITION BY State) THEN 'Other'
            WHEN Deaths_Unknown = MAX(Deaths_Unknown) OVER (PARTITION BY State) THEN 'Unknown'
            ELSE 'Unknown' END AS Ethnicity_Highest_Deaths,
        LAG(Deaths_Total, 1) OVER (PARTITION BY State ORDER BY State ASC) AS Previous_Deaths_Total,
       CASE WHEN LAG(Deaths_Total, 1) OVER (PARTITION BY State ORDER BY State ASC) > 0 THEN
           ROUND(((Deaths_Total - LAG(Deaths_Total, 1) OVER (PARTITION BY State ORDER BY State ASC)) / LAG(Deaths_Total, 1) OVER (PARTITION BY State ORDER BY State ASC)),2) * 100 
           ELSE 0 
           END AS Percent_Increase
FROM `project3-the-colour-of-covid19.Covid19_RaceTracker.CRT` AS Previous_Deaths_Total
WHERE Deaths_White > 0 AND Deaths_Black > 0 AND Deaths_Latinx > 0  AND Deaths_Asian > 0 AND Deaths_AIAN > 0 AND Deaths_NHPI > 0 AND Deaths_Multiracial > 0 AND Deaths_Other > 0 AND Deaths_Unknown > 0
ORDER BY DATE; --The negative values in the "Percent_Increase" column indicate a decrease in the number of deaths between the current and previous dates. This may be due to various factors, such as changes in reporting methods or a decrease in the overall number of COVID-19 cases and deaths.
--HOSP
SELECT DISTINCT State, Date,
       CASE WHEN Hosp_White = MAX(Hosp_White) OVER (PARTITION BY State) THEN 'White'
            WHEN Hosp_Black = MAX(Hosp_Black) OVER (PARTITION BY State) THEN 'Black'
            WHEN Hosp_Latinx = MAX(Hosp_Latinx) OVER (PARTITION BY State) THEN 'Latinx'
            WHEN Hosp_Asian = MAX(Hosp_Asian) OVER (PARTITION BY State) THEN 'Asian'
            WHEN Hosp_AIAN = MAX(Hosp_AIAN) OVER (PARTITION BY State) THEN 'AIAN'
            WHEN Hosp_NHPI = MAX(Hosp_NHPI) OVER (PARTITION BY State) THEN 'NHPI'
            WHEN Hosp_Multiracial = MAX(Hosp_Multiracial) OVER (PARTITION BY State) THEN 'Multiracial'
            WHEN Hosp_Other = MAX(Hosp_Other) OVER (PARTITION BY State) THEN 'Other'
            WHEN Hosp_Unknown = MAX(Hosp_Unknown) OVER (PARTITION BY State) THEN 'Unknown'
            ELSE 'Unknown' END AS Ethnicity_Highest_Hosp,
        LAG(Hosp_Total, 1) OVER (PARTITION BY State ORDER BY State ASC) AS Previous_Hosp_Total,
       ROUND(((Hosp_Total - LAG(Hosp_Total, 1) OVER (PARTITION BY State ORDER BY State ASC)) / LAG(Hosp_Total, 1) OVER (PARTITION BY State ORDER BY State ASC)),2) * 100 AS Percent_Increase
FROM `project3-the-colour-of-covid19.Covid19_RaceTracker.CRT` AS Previous_Hosp_Total
  WHERE Hosp_White > 0 AND Hosp_Black > 0 AND Hosp_Latinx > 0  AND Hosp_Asian > 0 AND Hosp_AIAN > 0 AND Hosp_NHPI > 0 AND Hosp_Multiracial > 0 AND Hosp_Other > 0 AND Hosp_Unknown > 0;

--LAG function to calculate the daily change in the number of cases for each State and race/ethnicity category.tool for tracking the spread of COVID-19 among different race/ethnicity groups in the US. It can help identify disparities in the number of cases and inform efforts to address these disparities.

--This SQL query shows the maximum number of COVID cases recorded for each race/ethnicity in each state, as well as the percentage of cases that race/ethnicity represents out of the total cases in the state. The query also calculates the percentage increase or decrease in cases for each race/ethnicity compared to the previous day, based on the lag function used in the subquery. The WHERE clause filters out any rows where any of the race/ethnicity columns have a value of 0. 
SELECT State,
       MAX(Cases_White) as White,
       ROUND((MAX(Cases_Black) / MAX(Cases_Total)) * 100, 2) as WHITEpercent_cases,
       MAX(Cases_Black) as Black,
       ROUND((MAX(Cases_Black) / MAX(Cases_Total)) * 100, 2) as BALCKpercent_cases,
       MAX(Cases_Latinx) as Latinx,
       ROUND((MAX(Cases_Latinx) / MAX(Cases_Total)) * 100, 2) as LATINXpercent_cases,
       MAX(Cases_Asian) as Asian,
       ROUND((MAX(Cases_Asian) / MAX(Cases_Total)) * 100, 2) as ASIANpercent_cases,
       MAX(Cases_AIAN) as AIAN,
       ROUND((MAX(Cases_AIAN) / MAX(Cases_Total)) * 100, 2) as AINANpercent_cases,
       MAX(Cases_NHPI) as NHPI,
       ROUND((MAX(Cases_NHPI) / MAX(Cases_Total)) * 100, 2) as NHPIpercent_cases,
       MAX(Cases_Multiracial) as Multiracial,
       ROUND((MAX(Cases_Multiracial) / MAX(Cases_Total)) * 100, 2) as MULTIRACIALpercent_cases,
       MAX(Cases_Other) as Other,
       ROUND((MAX(Cases_Other) / MAX(Cases_Total)) * 100, 2) as OTHERpercent_cases,
       MAX(Cases_Unknown) as Unknown,
       ROUND((MAX(Cases_Unknown) / MAX(Cases_Total)) * 100, 2) as UNKOWNpercent_cases

FROM (
  SELECT State,
         Cases_Total,
         Cases_White - LAG(Cases_White) OVER (PARTITION BY State ORDER BY Date) as Cases_White,
         Cases_Black - LAG(Cases_Black) OVER (PARTITION BY State ORDER BY Date) as Cases_Black,
         Cases_Latinx - LAG(Cases_Latinx) OVER (PARTITION BY State ORDER BY Date) as Cases_Latinx,
         Cases_Asian - LAG(Cases_Asian) OVER (PARTITION BY State ORDER BY Date) as Cases_Asian,
         Cases_AIAN - LAG(Cases_AIAN) OVER (PARTITION BY State ORDER BY Date) as Cases_AIAN,
         Cases_NHPI - LAG(Cases_NHPI) OVER (PARTITION BY State ORDER BY Date) as Cases_NHPI,
         Cases_Multiracial - LAG(Cases_Multiracial) OVER (PARTITION BY State ORDER BY Date) as Cases_Multiracial,
         Cases_Other - LAG(Cases_Other) OVER (PARTITION BY State ORDER BY Date) as Cases_Other,
         Cases_Unknown - LAG(Cases_Unknown) OVER (PARTITION BY State ORDER BY Date) as Cases_Unknown
  FROM `project3-the-colour-of-covid19.Covid19_RaceTracker.CRT`
) t
WHERE Cases_White > 0 AND Cases_Black > 0 AND Cases_Latinx > 0  AND Cases_Asian > 0 AND Cases_AIAN > 0 AND Cases_NHPI > 0 AND Cases_Multiracial > 0 AND Cases_Other > 0 AND Cases_Unknown > 0
GROUP BY State;
-- DEATHS
SELECT State,
       MAX(Deaths_White) as White,
       ROUND((MAX(Deaths_Black) / MAX(Deaths_Total)) * 100, 2) as BLACKpercent_deaths,
       MAX(Deaths_Black) as Black,
       ROUND((MAX(Deaths_Black) / MAX(Deaths_Total)) * 100, 2) as BLACKpercent_deaths,
       MAX(Deaths_Latinx) as Latinx,
       ROUND((MAX(Deaths_Latinx) / MAX(Deaths_Total)) * 100, 2) as LATINXpercent_deaths,
       MAX(Deaths_Asian) as Asian,
       ROUND((MAX(Deaths_Asian) / MAX(Deaths_Total)) * 100, 2) as ASIANpercent_deaths,
       MAX(Deaths_AIAN) as AIAN,
       ROUND((MAX(Deaths_AIAN) / MAX(Deaths_Total)) * 100, 2) as AINANpercent_deaths,
       MAX(Deaths_NHPI) as NHPI,
       ROUND((MAX(Deaths_NHPI) / MAX(Deaths_Total)) * 100, 2) as NHPIpercent_deaths,
       MAX(Deaths_Multiracial) as Multiracial,
       ROUND((MAX(Deaths_Multiracial) / MAX(Deaths_Total)) * 100, 2) as MULTIRACIALpercent_deaths,
       MAX(Deaths_Other) as Other,
       ROUND((MAX(Deaths_Other) / MAX(Deaths_Total)) * 100, 2) as OTHERpercent_deaths,
       MAX(Deaths_Unknown) as Unknown,
       ROUND((MAX(Deaths_Unknown) / MAX(Deaths_Total)) * 100, 2) as UNKOWNpercent_deaths

FROM (
  SELECT State,
         Deaths_Total,
         Deaths_White - LAG(Deaths_White) OVER (PARTITION BY State ORDER BY Date) as Deaths_White,
         Deaths_Black - LAG(Deaths_Black) OVER (PARTITION BY State ORDER BY Date) as Deaths_Black,
         Deaths_Latinx - LAG(Deaths_Latinx) OVER (PARTITION BY State ORDER BY Date) as Deaths_Latinx,
         Deaths_Asian - LAG(Deaths_Asian) OVER (PARTITION BY State ORDER BY Date) as Deaths_Asian,
         Deaths_AIAN - LAG(Deaths_AIAN) OVER (PARTITION BY State ORDER BY Date) as Deaths_AIAN,
         Deaths_NHPI - LAG(Deaths_NHPI) OVER (PARTITION BY State ORDER BY Date) as Deaths_NHPI,
         Deaths_Multiracial - LAG(Deaths_Multiracial) OVER (PARTITION BY State ORDER BY Date) as Deaths_Multiracial,
         Deaths_Other - LAG(Deaths_Other) OVER (PARTITION BY State ORDER BY Date) as Deaths_Other,
         Deaths_Unknown - LAG(Deaths_Unknown) OVER (PARTITION BY State ORDER BY Date) as Deaths_Unknown
  FROM `project3-the-colour-of-covid19.Covid19_RaceTracker.CRT`
) t
WHERE Deaths_White > 0 AND Deaths_Black > 0 AND Deaths_Latinx > 0  AND Deaths_Asian > 0 AND Deaths_AIAN > 0 AND Deaths_NHPI > 0 AND Deaths_Multiracial > 0 AND Deaths_Other > 0 AND Deaths_Unknown > 0
GROUP BY State;
--HOSP
SELECT State,
       MAX(Hosp_White) as White,
       ROUND((MAX(Hosp_Black) / MAX(Hosp_Total)) * 100, 2) as BLACKpercent_Hosp,
       MAX(Hosp_Black) as Black,
       ROUND((MAX(Hosp_Black) / MAX(Hosp_Total)) * 100, 2) as BLACKpercent_Hosp,
       MAX(Hosp_Latinx) as Latinx,
       ROUND((MAX(Hosp_Latinx) / MAX(Hosp_Total)) * 100, 2) as LATINXpercent_Hosp,
       MAX(Hosp_Asian) as Asian,
       ROUND((MAX(Hosp_Asian) / MAX(Hosp_Total)) * 100, 2) as ASIANpercent_Hosp,
       MAX(Hosp_AIAN) as AIAN,
       ROUND((MAX(Hosp_AIAN) / MAX(Hosp_Total)) * 100, 2) as AINANpercent_Hosp,
       MAX(Hosp_NHPI) as NHPI,
       ROUND((MAX(Hosp_NHPI) / MAX(Hosp_Total)) * 100, 2) as NHPIpercent_Hosp,
       MAX(Hosp_Multiracial) as Multiracial,
       ROUND((MAX(Hosp_Multiracial) / MAX(Hosp_Total)) * 100, 2) as MULTIRACIALpercent_Hosp,
       MAX(Hosp_Other) as Other,
       ROUND((MAX(Hosp_Other) / MAX(Hosp_Total)) * 100, 2) as OTHERpercent_Hosp,
       MAX(Hosp_Unknown) as Unknown,
       ROUND((MAX(Hosp_Unknown) / MAX(Hosp_Total)) * 100, 2) as UNKOWNpercent_Hosp

FROM (
  SELECT State,
         Hosp_Total,
         Hosp_White - LAG(Hosp_White) OVER (PARTITION BY State ORDER BY Date) as Hosp_White,
         Hosp_Black - LAG(Hosp_Black) OVER (PARTITION BY State ORDER BY Date) as Hosp_Black,
         Hosp_Latinx - LAG(Hosp_Latinx) OVER (PARTITION BY State ORDER BY Date) as Hosp_Latinx,
         Hosp_Asian - LAG(Hosp_Asian) OVER (PARTITION BY State ORDER BY Date) as Hosp_Asian,
         Hosp_AIAN - LAG(Hosp_AIAN) OVER (PARTITION BY State ORDER BY Date) as Hosp_AIAN,
         Hosp_NHPI - LAG(Hosp_NHPI) OVER (PARTITION BY State ORDER BY Date) as Hosp_NHPI,
         Hosp_Multiracial - LAG(Hosp_Multiracial) OVER (PARTITION BY State ORDER BY Date) as Hosp_Multiracial,
         Hosp_Other - LAG(Hosp_Other) OVER (PARTITION BY State ORDER BY Date) as Hosp_Other,
         Hosp_Unknown - LAG(Hosp_Unknown) OVER (PARTITION BY State ORDER BY Date) as Hosp_Unknown
  FROM `project3-the-colour-of-covid19.Covid19_RaceTracker.CRT`
) t
WHERE Hosp_White > 0 AND Hosp_Black > 0 AND Hosp_Latinx > 0  AND Hosp_Asian > 0 AND Hosp_AIAN > 0 AND Hosp_NHPI > 0 AND Hosp_Multiracial > 0 AND Hosp_Other > 0 AND Hosp_Unknown > 0
GROUP BY State;

--How does the proportion of COVID cases among different races/ethnicities vary across States?
SELECT DISTINCT State, 
    ROUND(Cases_White / Cases_Total,2) AS proportion_white,
    ROUND(Cases_Black / Cases_Total,2) AS proportion_black,
    ROUND(Cases_Latinx / Cases_Total,2) AS proportion_latinx,
    ROUND(Cases_Asian / Cases_Total,2) AS proportion_asian,
    ROUND(Cases_AIAN / Cases_Total,2) AS proportion_aian,
    ROUND(Cases_NHPI / Cases_Total,2) AS proportion_nhpi,
    ROUND(Cases_Multiracial / Cases_Total,2) AS proportion_multiracial,
    ROUND(Cases_Other / Cases_Total,2) AS proportion_other,
    ROUND(Cases_Unknown / Cases_Total,2) AS proportion_Unknown 
FROM `project3-the-colour-of-covid19.Covid19_RaceTracker.CRT`
WHERE Cases_White > 0 AND Cases_Black > 0 AND Cases_Latinx > 0  AND Cases_Asian > 0 AND Cases_AIAN > 0 AND Cases_NHPI > 0 
AND Cases_Multiracial > 0 AND Cases_Other > 0 AND Cases_Unknown > 0;
--extra f0_,f1_ etc columns shoed up becuase i did ROUND(....),2) there is no extra finction so it should have only been ROUND(....,2)

--Subquery showing proportions of COVID-19 cases in each state for each racial group in 2021, as well as the earliest data available (January 2020) for comparison. Ranks the states based on the proportion of cases for each racial and ethnic group with the state with the highest proportion of cases for each group appearing first.
SELECT State,
    RANK() OVER (ORDER BY proportion_white_2021 DESC) AS white_rank,
    RANK() OVER (ORDER BY proportion_black_2021 DESC) AS black_rank,
    RANK() OVER (ORDER BY proportion_latinx_2021 DESC) AS latinx_rank,
    RANK() OVER (ORDER BY proportion_asian_2021 DESC) AS asian_rank,
    RANK() OVER (ORDER BY proportion_aian_2021 DESC) AS aian_rank,
    RANK() OVER (ORDER BY proportion_nhpi_2021 DESC) AS nhpi_rank,
    RANK() OVER (ORDER BY proportion_multiracial_2021 DESC) AS multiracial_rank,
    RANK() OVER (ORDER BY proportion_other_2021 DESC) AS other_rank,
    RANK() OVER (ORDER BY proportion_unknown_2021 DESC) AS unknown_rank
FROM (
    SELECT State, 
        ROUND(Cases_White / Cases_Total, 2) AS proportion_white_2021,
        ROUND(Cases_Black / Cases_Total, 2) AS proportion_black_2021,
        ROUND(Cases_Latinx / Cases_Total, 2) AS proportion_latinx_2021,
        ROUND(Cases_Asian / Cases_Total, 2) AS proportion_asian_2021,
        ROUND(Cases_AIAN / Cases_Total, 2) AS proportion_aian_2021,
        ROUND(Cases_NHPI / Cases_Total, 2) AS proportion_nhpi_2021,
        ROUND(Cases_Multiracial / Cases_Total, 2) AS proportion_multiracial_2021,
        ROUND(Cases_Other / Cases_Total, 2) AS proportion_other_2021,
        ROUND(Cases_Unknown / Cases_Total, 2) AS proportion_unknown_2021
    FROM (
        SELECT *,
            ROW_NUMBER() OVER (PARTITION BY State, EXTRACT(YEAR FROM Date) ORDER BY year_month ASC) AS row_num,
            MAX(EXTRACT(YEAR FROM Date)) OVER (PARTITION BY State) AS max_year,
            MIN(EXTRACT(YEAR FROM Date)) OVER (PARTITION BY State) AS min_year
        FROM `project3-the-colour-of-covid19.Covid19_RaceTracker.CRT`
    ) t
    WHERE Cases_White > 0 AND Cases_Black > 0 AND Cases_Latinx > 0  AND Cases_Asian > 0 AND Cases_AIAN > 0 AND Cases_NHPI > 0 
AND Cases_Multiracial > 0 AND Cases_Other > 0 AND Cases_Unknown > 0 AND (EXTRACT(YEAR FROM Date) = 2021 AND row_num = 1) OR
          (EXTRACT(YEAR FROM Date) = 2020 AND EXTRACT(MONTH FROM Date) = 1) 
) s;
--DEATHS
SELECT State,
    RANK() OVER (ORDER BY proportion_white_2021 DESC) AS white_rank,
    RANK() OVER (ORDER BY proportion_black_2021 DESC) AS black_rank,
    RANK() OVER (ORDER BY proportion_latinx_2021 DESC) AS latinx_rank,
    RANK() OVER (ORDER BY proportion_asian_2021 DESC) AS asian_rank,
    RANK() OVER (ORDER BY proportion_aian_2021 DESC) AS aian_rank,
    RANK() OVER (ORDER BY proportion_nhpi_2021 DESC) AS nhpi_rank,
    RANK() OVER (ORDER BY proportion_multiracial_2021 DESC) AS multiracial_rank,
    RANK() OVER (ORDER BY proportion_other_2021 DESC) AS other_rank,
    RANK() OVER (ORDER BY proportion_unknown_2021 DESC) AS unknown_rank
FROM (
    SELECT State, 
        ROUND(Deaths_White / Deaths_Total, 2) AS proportion_white_2021,
        ROUND(Deaths_Black / Deaths_Total, 2) AS proportion_black_2021,
        ROUND(Deaths_Latinx / Deaths_Total, 2) AS proportion_latinx_2021,
        ROUND(Deaths_Asian / Deaths_Total, 2) AS proportion_asian_2021,
        ROUND(Deaths_AIAN / Deaths_Total, 2) AS proportion_aian_2021,
        ROUND(Deaths_NHPI / Deaths_Total, 2) AS proportion_nhpi_2021,
        ROUND(Deaths_Multiracial / Deaths_Total, 2) AS proportion_multiracial_2021,
        ROUND(Deaths_Other / Deaths_Total, 2) AS proportion_other_2021,
        ROUND(Deaths_Unknown / Deaths_Total, 2) AS proportion_unknown_2021
    FROM (
        SELECT *,
            ROW_NUMBER() OVER (PARTITION BY State, EXTRACT(YEAR FROM Date) ORDER BY year_month ASC) AS row_num,
            MAX(EXTRACT(YEAR FROM Date)) OVER (PARTITION BY State) AS max_year,
            MIN(EXTRACT(YEAR FROM Date)) OVER (PARTITION BY State) AS min_year
        FROM `project3-the-colour-of-covid19.Covid19_RaceTracker.CRT`   
        
) t   
    WHERE Deaths_White > 0 AND Deaths_Black > 0 AND Deaths_Latinx > 0  AND Deaths_Asian > 0 AND Deaths_AIAN > 0 AND Deaths_NHPI > 0 AND Deaths_Multiracial > 0 AND Deaths_Other > 0 AND Deaths_Unknown > 0 AND     (EXTRACT(YEAR FROM Date) = 2021 AND row_num = 1) OR
      (EXTRACT(YEAR FROM Date) = 2020 AND EXTRACT(MONTH FROM Date) = 1)
) s;

--HOSP
SELECT State,
    RANK() OVER (ORDER BY proportion_white_2021 DESC) AS white_rank,
    RANK() OVER (ORDER BY proportion_black_2021 DESC) AS black_rank,
    RANK() OVER (ORDER BY proportion_latinx_2021 DESC) AS latinx_rank,
    RANK() OVER (ORDER BY proportion_asian_2021 DESC) AS asian_rank,
    RANK() OVER (ORDER BY proportion_aian_2021 DESC) AS aian_rank,
    RANK() OVER (ORDER BY proportion_nhpi_2021 DESC) AS nhpi_rank,
    RANK() OVER (ORDER BY proportion_multiracial_2021 DESC) AS multiracial_rank,
    RANK() OVER (ORDER BY proportion_other_2021 DESC) AS other_rank,
    RANK() OVER (ORDER BY proportion_unknown_2021 DESC) AS unknown_rank
FROM (
    SELECT State, 
        ROUND(Hosp_White / Hosp_Total, 2) AS proportion_white_2021,
        ROUND(Hosp_Black / Hosp_Total, 2) AS proportion_black_2021,
        ROUND(Hosp_Latinx / Hosp_Total, 2) AS proportion_latinx_2021,
        ROUND(Hosp_Asian / Hosp_Total, 2) AS proportion_asian_2021,
        ROUND(Hosp_AIAN / Hosp_Total, 2) AS proportion_aian_2021,
        ROUND(Hosp_NHPI / Hosp_Total, 2) AS proportion_nhpi_2021,
        ROUND(Hosp_Multiracial / Hosp_Total, 2) AS proportion_multiracial_2021,
        ROUND(Hosp_Other / Hosp_Total, 2) AS proportion_other_2021,
        ROUND(Hosp_Unknown / Hosp_Total, 2) AS proportion_unknown_2021
    FROM (
        SELECT *,
            ROW_NUMBER() OVER (PARTITION BY State, EXTRACT(YEAR FROM Date) ORDER BY year_month ASC) AS row_num,
            MAX(EXTRACT(YEAR FROM Date)) OVER (PARTITION BY State) AS max_year,
            MIN(EXTRACT(YEAR FROM Date)) OVER (PARTITION BY State) AS min_year
        FROM `project3-the-colour-of-covid19.Covid19_RaceTracker.CRT`
    ) t
    WHERE (EXTRACT(YEAR FROM Date) = 2021 AND row_num = 1) OR
          (EXTRACT(YEAR FROM Date) = 2020 AND EXTRACT(MONTH FROM Date) = 1) AND Hosp_White > 0 AND Hosp_Black > 0 AND Hosp_Latinx > 0  AND Hosp_Asian > 0 AND Hosp_AIAN > 0 AND Hosp_NHPI > 0 
AND Hosp_Multiracial > 0 AND Hosp_Other > 0 AND Hosp_Unknown > 0
) s;

--What is the overall TREND of COVID cases among different races/ethnicities OVER TIME? this table shows the maximum number of COVID-19 cases, broken down by race and ethnicity, for each state in the United States over time.
SELECT DISTINCT Year_Month, State, 
MAX(Cases_Total) AS Total_Cases,
  MAX(Cases_White) AS Cases_White,
  MAX(Cases_Black) AS Cases_Black,
  MAX(Cases_Latinx) AS Cases_Latinx,
  MAX(Cases_Asian) AS Cases_Asian,
  MAX(Cases_AIAN) AS Cases_AIAN,
  MAX(Cases_NHPI) AS Cases_NHPI,
  MAX(Cases_Multiracial) AS Cases_Multiracial,
  MAX(Cases_Other) AS Cases_Other,
  MAX(Cases_Unknown) AS Cases_Unknown
FROM `project3-the-colour-of-covid19.Covid19_RaceTracker.CRT`
WHERE Cases_White > 0 AND Cases_Black > 0 AND Cases_Latinx > 0  AND Cases_Asian > 0 AND Cases_AIAN > 0 AND Cases_NHPI > 0 
AND Cases_Multiracial > 0 AND Cases_Other > 0 AND Cases_Unknown > 0
GROUP BY Year_Month, State
ORDER BY Year_Month ASC;
--DEATHS
SELECT DISTINCT Year_Month, State, 
MAX(Deaths_Total) AS Total_Deaths,
  MAX(Deaths_White) AS Deaths_White,
  MAX(Deaths_Black) AS Deaths_Black,
  MAX(Deaths_Latinx) AS Deaths_Latinx,
  MAX(Deaths_Asian) AS Deaths_Asian,
  MAX(Deaths_AIAN) AS Deaths_AIAN,
  MAX(Deaths_NHPI) AS Deaths_NHPI,
  MAX(Deaths_Multiracial) AS Deaths_Multiracial,
  MAX(Deaths_Other) AS Deaths_Other,
  MAX(Deaths_Unknown) AS Deaths_Unknown
FROM `project3-the-colour-of-covid19.Covid19_RaceTracker.CRT`
WHERE Deaths_Total <> 0 AND Deaths_White > 0 AND Deaths_Black > 0 AND Deaths_Latinx > 0  AND Deaths_Asian > 0 AND Deaths_AIAN > 0 AND Deaths_NHPI > 0 
AND Deaths_Multiracial > 0 AND Deaths_Other > 0 AND Deaths_Unknown > 0
GROUP BY Year_Month, State
ORDER BY Year_Month ASC;
--HOSP
SELECT Year_Month, State, 
MAX(Hosp_Total) AS Total_Hosp,
  MAX(Hosp_White) AS Hosp_White,
  MAX(Hosp_Black) AS Hosp_Black,
  MAX(Hosp_Latinx) AS Hosp_Latinx,
  MAX(Hosp_Asian) AS Hosp_Asian,
  MAX(Hosp_AIAN) AS Hosp_AIAN,
  MAX(Hosp_NHPI) AS Hosp_NHPI,
  MAX(Hosp_Multiracial) AS Hosp_Multiracial,
  MAX(Hosp_Other) AS Hosp_Other,
  MAX(Hosp_Unknown) AS Hosp_Unknown
FROM `project3-the-colour-of-covid19.Covid19_RaceTracker.CRT`
WHERE Hosp_Total <> 0 AND Hosp_White > 0 AND Hosp_Black > 0 AND Hosp_Latinx > 0  AND Hosp_Asian > 0 AND Hosp_AIAN > 0 AND Hosp_NHPI > 0 
AND Hosp_Multiracial > 0 AND Hosp_Other > 0 AND Hosp_Unknown > 0
GROUP BY Year_Month, State
ORDER BY Year_Month ASC;

--Which race/ethnicity has the highest number of recorded COVID cases in each State?  per 100,000 people, my data covers the period from April/1/2020 to July/3/2021, you can use the July 1, 2021, population estimate of 331,893,745
SELECT 
  State, 
  CASE 
    WHEN Cases_White = MAX(Cases_White) OVER (PARTITION BY State) THEN 'White'
    WHEN Cases_Black = MAX(Cases_Black) OVER (PARTITION BY State) THEN 'Black'
    WHEN Cases_Latinx = MAX(Cases_Latinx) OVER (PARTITION BY State) THEN 'Latinx'
    WHEN Cases_Asian = MAX(Cases_Asian) OVER (PARTITION BY State) THEN 'Asian'
    WHEN Cases_AIAN = MAX(Cases_AIAN) OVER (PARTITION BY State) THEN 'AIAN'
    WHEN Cases_NHPI = MAX(Cases_NHPI) OVER (PARTITION BY State) THEN 'NHPI'
    WHEN Cases_Multiracial = MAX(Cases_Multiracial) OVER (PARTITION BY State) THEN 'Multiracial'
    WHEN Cases_Other = MAX(Cases_Other) OVER (PARTITION BY State) THEN 'Other'
    WHEN Cases_Unknown = MAX(Cases_Unknown) OVER (PARTITION BY State) THEN 'Unknown'
    ELSE 'N/A'
  END AS Highest_Race_Ethnicity,
  ROUND(
    MAX(
      CASE 
        WHEN Cases_White IS NOT NULL THEN Cases_White 
        ELSE 0 
      END +
      CASE 
        WHEN Cases_Black IS NOT NULL THEN Cases_Black 
        ELSE 0 
      END +
      CASE 
        WHEN Cases_Latinx IS NOT NULL THEN Cases_Latinx 
        ELSE 0 
      END +
      CASE 
        WHEN Cases_Asian IS NOT NULL THEN Cases_Asian 
        ELSE 0 
      END +
      CASE 
        WHEN Cases_AIAN IS NOT NULL THEN Cases_AIAN 
        ELSE 0 
      END +
      CASE 
        WHEN Cases_NHPI IS NOT NULL THEN Cases_NHPI 
        ELSE 0 
      END +
      CASE 
        WHEN Cases_Multiracial IS NOT NULL THEN Cases_Multiracial 
        ELSE 0 
      END +
      CASE 
        WHEN Cases_Other IS NOT NULL THEN Cases_Other 
        ELSE 0 
      END +
      CASE 
        WHEN Cases_Unknown IS NOT NULL THEN Cases_Unknown 
        ELSE 0 
      END
    ) / 331893745 * 100000,
  2) AS Total_Cases_Per_100k
FROM `project3-the-colour-of-covid19.Covid19_RaceTracker.CRT`
WHERE Date IN (SELECT MAX(Date) FROM `project3-the-colour-of-covid19.Covid19_RaceTracker.CRT`)
GROUP BY State, Cases_White, Cases_Black, Cases_Latinx, Cases_Asian, Cases_AIAN, Cases_NHPI, Cases_Multiracial, Cases_Other, Cases_Unknown
ORDER BY State;
--DEATHS
SELECT 
  State, 
  CASE 
    WHEN Deaths_White = MAX(Deaths_White) OVER (PARTITION BY State) THEN 'White'
    WHEN Deaths_Black = MAX(Deaths_Black) OVER (PARTITION BY State) THEN 'Black'
    WHEN Deaths_Latinx = MAX(Deaths_Latinx) OVER (PARTITION BY State) THEN 'Latinx'
    WHEN Deaths_Asian = MAX(Deaths_Asian) OVER (PARTITION BY State) THEN 'Asian'
    WHEN Deaths_AIAN = MAX(Deaths_AIAN) OVER (PARTITION BY State) THEN 'AIAN'
    WHEN Deaths_NHPI = MAX(Deaths_NHPI) OVER (PARTITION BY State) THEN 'NHPI'
    WHEN Deaths_Multiracial = MAX(Deaths_Multiracial) OVER (PARTITION BY State) THEN 'Multiracial'
    WHEN Deaths_Other = MAX(Deaths_Other) OVER (PARTITION BY State) THEN 'Other'
    WHEN Deaths_Unknown = MAX(Deaths_Unknown) OVER (PARTITION BY State) THEN 'Unknown'
    ELSE 'N/A'
  END AS Highest_Race_Ethnicity,
  ROUND(
    SUM(
      CASE 
        WHEN Deaths_White IS NOT NULL THEN Deaths_White 
        ELSE 0 
      END +
      CASE 
        WHEN Deaths_Black IS NOT NULL THEN Deaths_Black 
        ELSE 0 
      END +
      CASE 
        WHEN Deaths_Latinx IS NOT NULL THEN Deaths_Latinx 
        ELSE 0 
      END +
      CASE 
        WHEN Deaths_Asian IS NOT NULL THEN Deaths_Asian 
        ELSE 0 
      END +
      CASE 
        WHEN Deaths_AIAN IS NOT NULL THEN Deaths_AIAN 
        ELSE 0 
      END +
      CASE 
        WHEN Deaths_NHPI IS NOT NULL THEN Deaths_NHPI 
        ELSE 0 
      END +
      CASE 
        WHEN Deaths_Multiracial IS NOT NULL THEN Deaths_Multiracial 
        ELSE 0 
      END +
      CASE 
        WHEN Deaths_Other IS NOT NULL THEN Deaths_Other 
        ELSE 0 
      END +
      CASE 
        WHEN Deaths_Unknown IS NOT NULL THEN Deaths_Unknown 
        ELSE 0 
      END
    ) / 331893745 * 100000,
  2) AS Total_Deaths_Per_100k
FROM `project3-the-colour-of-covid19.Covid19_RaceTracker.CRT`
WHERE Date IN (SELECT MAX(Date) FROM `project3-the-colour-of-covid19.Covid19_RaceTracker.CRT`)
GROUP BY State, Deaths_White, Deaths_Black, Deaths_Latinx, Deaths_Asian, Deaths_AIAN, Deaths_NHPI, Deaths_Multiracial, Deaths_Other, Deaths_Unknown
ORDER BY State;
--HOSP
SELECT 
  State, 
  CASE 
    WHEN Hosp_White = MAX(Hosp_White) OVER (PARTITION BY State) THEN 'White'
    WHEN Hosp_Black = MAX(Hosp_Black) OVER (PARTITION BY State) THEN 'Black'
    WHEN Hosp_Latinx = MAX(Hosp_Latinx) OVER (PARTITION BY State) THEN 'Latinx'
    WHEN Hosp_Asian = MAX(Hosp_Asian) OVER (PARTITION BY State) THEN 'Asian'
    WHEN Hosp_AIAN = MAX(Hosp_AIAN) OVER (PARTITION BY State) THEN 'AIAN'
    WHEN Hosp_NHPI = MAX(Hosp_NHPI) OVER (PARTITION BY State) THEN 'NHPI'
    WHEN Hosp_Multiracial = MAX(Hosp_Multiracial) OVER (PARTITION BY State) THEN 'Multiracial'
    WHEN Hosp_Other = MAX(Hosp_Other) OVER (PARTITION BY State) THEN 'Other'
    WHEN Hosp_Unknown = MAX(Hosp_Unknown) OVER (PARTITION BY State) THEN 'Unknown'
    ELSE 'N/A'
  END AS Highest_Race_Ethnicity,
  ROUND(
    SUM(
      CASE 
        WHEN Hosp_White IS NOT NULL THEN Hosp_White 
        ELSE 0 
      END +
      CASE 
        WHEN Hosp_Black IS NOT NULL THEN Hosp_Black 
        ELSE 0 
      END +
      CASE 
        WHEN Hosp_Latinx IS NOT NULL THEN Hosp_Latinx 
        ELSE 0 
      END +
      CASE 
        WHEN Hosp_Asian IS NOT NULL THEN Hosp_Asian 
        ELSE 0 
      END +
      CASE 
        WHEN Hosp_AIAN IS NOT NULL THEN Hosp_AIAN 
        ELSE 0 
      END +
      CASE 
        WHEN Hosp_NHPI IS NOT NULL THEN Hosp_NHPI 
        ELSE 0 
      END +
      CASE 
        WHEN Hosp_Multiracial IS NOT NULL THEN Hosp_Multiracial 
        ELSE 0 
      END +
      CASE 
        WHEN Hosp_Other IS NOT NULL THEN Hosp_Other 
        ELSE 0 
      END +
      CASE 
        WHEN Hosp_Unknown IS NOT NULL THEN Hosp_Unknown 
        ELSE 0 
      END
    ) / 331893745 * 100000,
  2) AS Total_Hosp_Per_100k
FROM `project3-the-colour-of-covid19.Covid19_RaceTracker.CRT`
WHERE Date IN (SELECT MAX(Date) FROM `project3-the-colour-of-covid19.Covid19_RaceTracker.CRT`)
GROUP BY State, Hosp_White, Hosp_Black, Hosp_Latinx, Hosp_Asian, Hosp_AIAN, Hosp_NHPI, Hosp_Multiracial, Hosp_Other, Hosp_Unknown
ORDER BY State;



--Are there any disparities in COVID cases among different races/ethnicities that persist after adjusting for other factors such as age, gender, and socioeconomic status?
--Are there any differences in COVID case outcomes (e.g., hospitalization, death) among different races/ethnicities, and if so, what factors might explain these differences?



