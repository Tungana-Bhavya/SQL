## Find the most profitable company in the financial sector of the entire world along with its continent
-------

SELECT company, 
       continent 
FROM forbes_global_2010_2014 
WHERE sector = 'Financials' 
      AND profits = (SELECT MAX(profits) 
                     FROM forbes_global_2010_2014 
                     WHERE sector = 'Financials');