/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [App(nominal)]
      ,[Category]
      ,[Rating(ordinal)]
      ,[Reviews(ratio)]
      ,[Size]
      ,[Installs]
      ,[Type]
      ,[Price(interval)]
      ,[Content Rating]
      ,[Genres]
      ,[Last Updated]
      ,[Current Ver]
      ,[Android Ver]
  FROM [master].[dbo].[gps]


  SELECT count(*)
  FROM [master].[dbo].[gps]


  Select [Category], count(*)
  from master.dbo.gps
  group by [Category]
  order by count(*) desc

