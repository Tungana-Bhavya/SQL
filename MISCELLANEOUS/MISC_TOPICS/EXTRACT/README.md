#### Extract Function 

- <b>EXTRACT()</b> function is used to extract a specific part of data from datetime or date.
  
- By the use of <b>EXTRACT()</b> function we can get parts of data like year, month, day, week, quarter, minute, hour, second and millisecond from date, datetime, Current_Time() and Current_Date().
  
- <b>Syntax:</b> SELECT EXTRACT(Part/unit FROM value);
  
- From syntax, unit can be YEAR, YEAR_MONTH, MONTH, DAY, QUARTER, MINUTE, HOUR, SECOND, DAY_HOUR, DAY_MINUTE, DAY_SECOND, DAY_MICROSECOND, HOUR_MICROSECOND, HOUR_MINUTE, HOUR_SECOND, MINUTE_MICROSECOND, SECOND_MICROSECOND, MINUTE_SECOND, MICROSECOND. Whereas, value can be CURRENT_TIME() function or CURRENT_DATE() function or date or datetime.

- <b>Example:</b>
  
  SELECT EXTRACT(DAY FROM CURRENT_DATE) DAY,<br>
  EXTRACT(MONTH FROM CURRENT_DATE) MONTH,<br>
  EXTRACT(YEAR FROM CURRENT_DATE) YEAR,<br>
  EXTRACT(QUARTER FROM '2023-12-31') QUARTER,<br>
  EXTRACT(WEEK FROM '2023-12-31') WEEK,<br>
  EXTRACT(HOUR FROM CURTIME()) HOUR,<br>
  EXTRACT(MINUTE FROM CURTIME()) MINUTE,<br>
  EXTRACT(SECOND FROM '2023-12-31 11:10:44') SECOND;<br>

- <b>Output:</b> [👆](https://github.com/Tungana-Bhavya/SQL/blob/main/MISCELLANEOUS/MISC_TOPICS/EXTRACT/SQL_EXTRACT_FUNCTION.jpg)
