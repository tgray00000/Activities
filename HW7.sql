-- SELECT ModelYear, Make, Model
-- FROM EVRegistry;

-- SELECT ElectricVehicleType
-- FROM EVRegistry;

-- SELECT *
-- FROM EVRegistry
-- WHERE ElectricVehicleType = 'Battery Electric Vehicle (BEV)'

-- SELECT Make,Model, BaseMSRP
-- FROM EVRegistry
-- WHERE BaseMSRP BETWEEN 20000 and 35000
-- ORDER by 3 DESC

-- Section 7.2

-- SELECT *
-- FROM EVRegistry
-- WHERE City is NULL

-- SELECT Make,Model,ElectricVehicleType, VIN
-- FROM EVRegistry
-- WHERE VIN like '%3E1EA1J'

-- SELECT ModelYear,Make,Model,ElectricVehicleType,ElectricRange
-- FROM EVRegistry
-- WHERE Make IN ('TESLA','CHEVROLET')
-- ORDER by Make, ModelYear DESC

-- SELECT stationId, count(*) as usage
-- FROM EVCharging
-- GROUP by stationId
-- ORDER by usage DESC
-- LIMIT 5

-- SELECT userId, 
-- min(chargeTimeHrs) as 'minhrs',
-- max(chargeTimeHrs) as 'maxhrs'
-- FROM EVCharging
-- WHERE chargeTimeHrs > 0.5
-- GROUP by stationId
-- ORDER by 2,3

-- Section 7.3

-- SELECT weekday,
-- round(avg(chargeTimeHrs),2) as 'hrs'
-- FROM EVCharging
-- GROUP by weekday
-- ORDER by 'hrs' DESC

-- SELECT userId,
-- round(sum(kwhTotal),2) as 'totalpower'
-- FROM EVCharging
-- GROUP by userId
-- order by 2 DESC
-- LIMIT 15

-- SELECT FacilityKey,
-- facilityID,
-- typeFacility,
-- count(stationId) as 'numstation'
-- FROM factCharge
-- INNER JOIN dimFacility
-- ON factCharge.facilityID = dimFacility.FacilityKey
-- GROUP by typeFacility
-- ORDER by 4 DESC

-- SELECT userId, 
-- min(chargeTimeHrs) as 'minhrs',
-- max(chargeTimeHrs) as 'maxhrs'
-- FROM EVCharging
-- GROUP by userId
-- HAVING chargeTimeHrs > 1.0
-- ORDER by 2,3 DESC