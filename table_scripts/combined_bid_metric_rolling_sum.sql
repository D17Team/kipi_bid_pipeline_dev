create or replace TABLE ALLCITYNETWORK_DEV.ON3_KIPI.COMBINED_BID_METRIC_ROLLING_SUM cluster by (date,event_name)(
	DATE VARCHAR(16777216),
	EVENT_NAME VARCHAR(16777216),
	PLATFORM VARCHAR(16777216),
	COUNTRY VARCHAR(16777216),
	ORGANIZATION VARCHAR(16777216),
	AD_UNIT_CODE VARCHAR(16777216),
	CONNECTION_TYPE VARCHAR(16777216),
	DEVICE VARCHAR(16777216),
	DEVICE_NAME VARCHAR(16777216),
	OPERATING_SYSTEM_NAME VARCHAR(16777216),
	OPERATING_SYSTEM_NAME_VERSION VARCHAR(16777216),
	BIDDER VARCHAR(16777216),
	BID_SOURCE VARCHAR(16777216),
	AUTHOR VARCHAR(16777216),
	REFERRER VARCHAR(16777216),
	ROLLING_SUM_BID_RESPONSES NUMBER(38,0),
	ROLLING_SUM_NO_BID NUMBER(38,0),
	ROLLING_SUM_CANCELLED_BIDS NUMBER(38,0),
	ROLLING_SUM_TIMED_OUT_BIDS NUMBER(38,0),
	ROLLING_SUM_BID_REQUEST NUMBER(38,0),
	ROLLING_SUM_PAGE_VIEW NUMBER(38,0),
	ROLLING_SUM_IN_VIEW_IMPRESSION NUMBER(38,0),
	ROLLING_SUM_AD_REQUEST NUMBER(38,0),
	ROLLING_SUM_REVENUE FLOAT
);