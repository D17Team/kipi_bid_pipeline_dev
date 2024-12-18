CREATE OR REPLACE PROCEDURE ALLCITYNETWORK_DEV.ON3_KIPI.POPULATE_ROLLING_SUM_TABLE()
RETURNS VARCHAR(16777216)
LANGUAGE SQL
EXECUTE AS CALLER
AS '
BEGIN
-- ROLLING SUM--
INSERT INTO ALLCITYNETWORK_DEV.ON3_KIPI.COMBINED_BID_METRIC_ROLLING_SUM (
    DATE,
    EVENT_NAME,
    PLATFORM,
    COUNTRY,
    ORGANIZATION,
    AD_UNIT_CODE,
    CONNECTION_TYPE,
    DEVICE,
    DEVICE_NAME,
    OPERATING_SYSTEM_NAME,
    OPERATING_SYSTEM_NAME_VERSION,
    BIDDER,
    BID_SOURCE,
    AUTHOR,
    REFERRER,
    ROLLING_SUM_BID_RESPONSES,
    ROLLING_SUM_NO_BID,
    ROLLING_SUM_CANCELLED_BIDS,
    ROLLING_SUM_TIMED_OUT_BIDS,
    ROLLING_SUM_BID_REQUEST,
    ROLLING_SUM_PAGE_VIEW,
    ROLLING_SUM_IN_VIEW_IMPRESSION,
    ROLLING_SUM_AD_REQUEST
)
SELECT
    COLLECTOR_TSTAMP,
    EVENT_NAME,
    PLATFORM,
    COUNTRY,
    ORGANIZATION,
    AD_UNIT_CODE,
    CONNECTION_TYPE,
    DEVICE,
    DEVICE_NAME,
    OPERATING_SYSTEM_NAME,
    OPERATING_SYSTEM_NAME_VERSION,
    BIDDER,
    BID_SOURCE,
    AUTHOR,
    REFERRER,
    SUM(SUM(BID_RESPONSE)) OVER (
        PARTITION BY EVENT_NAME,
    PLATFORM,
    COUNTRY,
     ORGANIZATION,
    AD_UNIT_CODE,
    CONNECTION_TYPE,
    DEVICE,
    DEVICE_NAME,
    OPERATING_SYSTEM_NAME,
    OPERATING_SYSTEM_NAME_VERSION,
    BIDDER,
    BID_SOURCE,
    AUTHOR,
    REFERRER
        ORDER BY COLLECTOR_TSTAMP
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS ROLLING_SUM_BID_RESPONSES,
    SUM(SUM(NO_BID)) OVER (
        PARTITION BY EVENT_NAME,
    PLATFORM,
    COUNTRY,
     ORGANIZATION,
    AD_UNIT_CODE,
    CONNECTION_TYPE,
    DEVICE,
    DEVICE_NAME,
    OPERATING_SYSTEM_NAME,
    OPERATING_SYSTEM_NAME_VERSION,
    BIDDER,
    BID_SOURCE,
    AUTHOR,
    REFERRER
        ORDER BY COLLECTOR_TSTAMP
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS ROLLING_SUM_NO_BID,
    SUM(SUM(CANCELLED_BIDS)) OVER (
        PARTITION BY EVENT_NAME,
    PLATFORM,
    COUNTRY,
     ORGANIZATION,
    AD_UNIT_CODE,
    CONNECTION_TYPE,
    DEVICE,
    DEVICE_NAME,
    OPERATING_SYSTEM_NAME,
    OPERATING_SYSTEM_NAME_VERSION,
    BIDDER,
    BID_SOURCE,
    AUTHOR,
    REFERRER
        ORDER BY COLLECTOR_TSTAMP
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS ROLLING_SUM_CANCELLED_BIDS,
    SUM(SUM(TIMED_OUT_BIDS)) OVER (
        PARTITION BY EVENT_NAME,
    PLATFORM,
    COUNTRY,
     ORGANIZATION,
    AD_UNIT_CODE,
    CONNECTION_TYPE,
    DEVICE,
    DEVICE_NAME,
    OPERATING_SYSTEM_NAME,
    OPERATING_SYSTEM_NAME_VERSION,
    BIDDER,
    BID_SOURCE,
    AUTHOR,
    REFERRER
        ORDER BY COLLECTOR_TSTAMP
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS ROLLING_SUM_TIMED_OUT_BIDS,
    SUM(SUM(BID_REQUEST)) OVER (
        PARTITION BY EVENT_NAME,
    PLATFORM,
    COUNTRY,
     ORGANIZATION,
    AD_UNIT_CODE,
    CONNECTION_TYPE,
    DEVICE,
    DEVICE_NAME,
    OPERATING_SYSTEM_NAME,
    OPERATING_SYSTEM_NAME_VERSION,
    BIDDER,
    BID_SOURCE,
    AUTHOR,
    REFERRER
        ORDER BY COLLECTOR_TSTAMP
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS ROLLING_SUM_BID_REQUEST,
    SUM(SUM(PAGE_VIEW)) OVER (
        PARTITION BY EVENT_NAME,
    PLATFORM,
    COUNTRY,
     ORGANIZATION,
    AD_UNIT_CODE,
    CONNECTION_TYPE,
    DEVICE,
    DEVICE_NAME,
    OPERATING_SYSTEM_NAME,
    OPERATING_SYSTEM_NAME_VERSION,
    BIDDER,
    BID_SOURCE,
    AUTHOR,
    REFERRER
        ORDER BY COLLECTOR_TSTAMP
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS ROLLING_SUM_PAGE_VIEW,
    SUM(SUM(IN_VIEW_IMPRESSION)) OVER (
        PARTITION BY EVENT_NAME,
    PLATFORM,
    COUNTRY,
     ORGANIZATION,
    AD_UNIT_CODE,
    CONNECTION_TYPE,
    DEVICE,
    DEVICE_NAME,
    OPERATING_SYSTEM_NAME,
    OPERATING_SYSTEM_NAME_VERSION,
    BIDDER,
    BID_SOURCE,
    AUTHOR,
    REFERRER
        ORDER BY COLLECTOR_TSTAMP
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS ROLLING_SUM_IN_VIEW_IMPRESSION,
    SUM(SUM(AD_REQUEST)) OVER (
        PARTITION BY EVENT_NAME,
    PLATFORM,
    COUNTRY,
     ORGANIZATION,
    AD_UNIT_CODE,
    CONNECTION_TYPE,
    DEVICE,
    DEVICE_NAME,
    OPERATING_SYSTEM_NAME,
    OPERATING_SYSTEM_NAME_VERSION,
    BIDDER,
    BID_SOURCE,
    AUTHOR,
    REFERRER
        ORDER BY COLLECTOR_TSTAMP
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS ROLLING_SUM_AD_REQUEST,
FROM ALLCITYNETWORK_DEV.ON3_KIPI.COMBINED_BID_METRIC_STR
    GROUP BY ALL ;
	
RETURN '' TABLE POPULATED SUCCESSFULY'';
END;

';