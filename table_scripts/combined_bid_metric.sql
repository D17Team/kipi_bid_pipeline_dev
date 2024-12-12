create or replace TABLE ALLCITYNETWORK_DEV.ON3_KIPI.COMBINED_BID_METRIC cluster by (collector_tstamp,event_name)(
	DERIVED_TSTAMP VARCHAR(16777216),
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
	TIME_TO_RESPOND NUMBER(38,0),
	CPM FLOAT,
	STATE VARCHAR(16777216),
	RENDERED_BIDDER VARCHAR(16777216),
	TTL NUMBER(38,0),
	NO_BID NUMBER(13,0),
	BID_RESPONSE NUMBER(13,0),
	CANCELLED_BIDS NUMBER(13,0),
	TIMED_OUT_BIDS NUMBER(13,0),
	BID_REQUEST NUMBER(38,0),
	PAGE_VIEW NUMBER(38,0),
	IN_VIEW_IMPRESSION NUMBER(38,0),
	AD_REQUEST NUMBER(38,0),
	SNOWPLOW_WEB_PAGE_ID VARCHAR(16777216),
	COLLECTOR_TSTAMP VARCHAR(16777216)
);