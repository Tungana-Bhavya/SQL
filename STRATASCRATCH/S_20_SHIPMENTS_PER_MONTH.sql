## Number of Shipments Per Month
-------

SELECT COUNT(*)  number,
DATE_FORMAT(shipment_date, '%Y-%m')  date_ym FROM amazon_shipment GROUP BY date_ym;