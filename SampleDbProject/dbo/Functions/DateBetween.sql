  CREATE FUNCTION dbo.DateBetween  (@year int, @Month int, @day int, @year1 int, @month1 int, @day1 int, @year2 int, @month2 int, @day2 int)  
RETURNS bit  
AS  
BEGIN  
--if date >= date1  
--   (year > year1) or   
--  ((year = year1) and (month > month1)) or   
--  ((year = year1) and (month = month1) and (day >= day1))  
--and  
--if date <= date2  
--  (year < year2) or  
--  ((year = year2) and (month < month2)) or  
--  ((year = year2) and (month = month2) and (day <= day2))  
 declare @return bit  
 if ((@year > @year1) or ((@year = @year1) and (@month > @month1)) or ((@year = @year1) and (@month = @month1) and (@day >= @day1))) and ((@year < @year2) or ((@year = @year2) and (@month < @month2)) or ((@year = @year2) and (@month = @month2) and (@day <
= @day2)))  
 begin  
  select @return = 1  
 end  
 else  
 begin  
  select @return = -1 
 end  
 return @return  
END  
  
  
  