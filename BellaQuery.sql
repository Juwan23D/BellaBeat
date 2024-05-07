----Number of participants in study
--Select Count (Distinct id)
--From [SQL Prac].[dbo].[BellaBeat daily]

----Measured activity time
--Select SUM(SedentaryMinutes) as [SM],
--	   SUM(LightlyActiveMinutes) as [LA],
--	   SUM(FairlyActiveMinutes) as [FA],
--	   SUM(VeryActiveMinutes) as [VA]
--FROM	[BellaBeat daily]

----Measured activity distance
--Select SUM(SedentaryActiveDistance) as SDis,
--	   SUM(LightActiveDistance) as LDis,
--	   SUM(ModeratelyActiveDistance) as FDis,
--	   SUM(VeryActiveDistance) as VDis
--From [BellaBeat daily]

----Number of Participants who used the weight features
--Select COUNT (Distinct id)
--From [BellaBeat data - weightLogInfo]

----Number of Participants Who used the sleep features
--Select Count (Distinct id)
--From [BellaBeat data - sleepDay (1)]

--Joined Tables to check matching ids between daily and weight
--Select *
--From [BellaBeat daily]
--Full Outer Join [BellaBeat data - weightLogInfo]
--   On [BellaBeat daily].Id = [BellaBeat data - weightLogInfo].Id 

--Joined Tables to check Matching ids between daily and sleep 
--Select *
--From [BellaBeat daily]
--Full Outer Join [BellaBeat data - sleepDay (1)]
-- On [BellaBeat daily].Id = [BellaBeat data - sleepDay (1)].Id







