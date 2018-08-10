SET hive.exec.dynamic.partition=true;
SET hive.exec.dynamic.partition.mode=nonstrict;

INSERT OVERWRITE TABLE CDW_SAPP_D_TIME
PARTITION (QTR)
SELECT TIMEID,
DAY, 
MONTH, 
YEAR,
QTR
from CDW_SAPP_D_TIME_ONE;