create or replace TABLE ALLCITYNETWORK_DEV.ON3_KIPI.STG_AD_RESPONSE_TEST_METRIC cluster by (collector_tstamp)(
	APP_ID VARCHAR(16777216),
	BR_COLORDEPTH VARCHAR(16777216),
	BR_COOKIES BOOLEAN,
	BR_LANG VARCHAR(16777216),
	COLLECTOR_TSTAMP TIMESTAMP_NTZ(9),
	DERIVED_TSTAMP TIMESTAMP_NTZ(9),
	DOC_CHARSET VARCHAR(16777216),
	DOC_HEIGHT NUMBER(38,0),
	DOC_WIDTH NUMBER(38,0),
	DOMAIN_SESSIONID VARCHAR(16777216),
	DOMAIN_USERID VARCHAR(16777216),
	DVCE_CREATED_TSTAMP TIMESTAMP_NTZ(9),
	DVCE_SCREENHEIGHT NUMBER(38,0),
	DVCE_SCREENWIDTH NUMBER(38,0),
	EVENT VARCHAR(16777216),
	EVENT_FINGERPRINT VARCHAR(16777216),
	EVENT_FORMAT VARCHAR(16777216),
	EVENT_ID VARCHAR(16777216),
	EVENT_NAME VARCHAR(16777216),
	EVENT_VENDOR VARCHAR(16777216),
	EVENT_VERSION VARCHAR(16777216),
	REFERRER VARCHAR(16777216),
	PAGE_URL VARCHAR(16777216),
	PAGE_URLHOST VARCHAR(16777216),
	PAGE_URLPATH VARCHAR(16777216),
	PAGE_URLPORT NUMBER(38,0),
	PAGE_URLSCHEME VARCHAR(16777216),
	PLATFORM VARCHAR(16777216),
	USER_IPADDRESS VARCHAR(16777216),
	USERAGENT VARCHAR(16777216),
	V_COLLECTOR VARCHAR(16777216),
	V_ETL VARCHAR(16777216),
	V_TRACKER VARCHAR(16777216),
	AUTHOR VARCHAR(16777216),
	SESSION_DEPTH NUMBER(38,0),
	SESSION_REFERRER VARCHAR(16777216),
	CITY VARCHAR(16777216),
	COUNTRY VARCHAR(16777216),
	SUBDIVISION_NAME VARCHAR(16777216),
	POSTAL_CODE VARCHAR(16777216),
	ISP VARCHAR(16777216),
	ORGANIZATION VARCHAR(16777216),
	CONNECTION_TYPE VARCHAR(16777216),
	DEVICE_FAMILY VARCHAR(16777216),
	OS_FAMILY VARCHAR(16777216),
	OS_VERSION VARCHAR(16777216),
	SNOWPLOW_WEB_PAGE_ID VARCHAR(16777216),
	DEVICE VARCHAR(16777216),
	AD_UNIT_PATH VARCHAR(16777216),
	ADVERTISERID VARCHAR(16777216),
	CAMPAIGNID VARCHAR(16777216),
	ELEMENT_ID VARCHAR(16777216),
	ISBACKFILL BOOLEAN,
	OOP BOOLEAN,
	SIZE_WIDTH NUMBER(38,0),
	SIZE_HEIGHT NUMBER(38,0),
	SOURCEAGNOSTICCREATIVEID VARCHAR(16777216),
	SOURCEAGNOSTICLINEITEMID VARCHAR(16777216),
	RENDERED_AD_UNIT_CODE VARCHAR(16777216),
	RENDERED_ADVERTISERDOMAINS VARCHAR(16777216),
	RENDERED_AUCTIONID VARCHAR(16777216),
	RENDERED_BIDSOURCE VARCHAR(16777216),
	RENDERED_BIDDER VARCHAR(16777216),
	RENDERED_CPM FLOAT,
	RENDERED_CURRENCY VARCHAR(16777216),
	RENDERED_GLOBALKEY VARCHAR(16777216),
	RENDERED_MEDIATYPE VARCHAR(16777216),
	RENDERED_NETREVENUE BOOLEAN,
	RENDERED_ORIGINALCPM FLOAT,
	RENDERED_STATUSMESSAGE VARCHAR(16777216),
	RENDERED_TIMETORESPOND VARCHAR(16777216),
	RENDERED_TTL NUMBER(38,0),
	ISOBFUSCATED VARCHAR(16777216),
	OBFUSCATED_BIDDER VARCHAR(16777216),
	OBFUSCATED_CPM VARCHAR(16777216),
	AMAZON_WIDTH VARCHAR(16777216),
	AMAZON_LENGTH VARCHAR(16777216),
	AD_UNIT_CODE VARCHAR(16777216),
	ADVERTISER_DOMAIN VARCHAR(16777216),
	AUCTION_ID VARCHAR(16777216),
	BID_SOURCE VARCHAR(16777216),
	BIDDER VARCHAR(16777216),
	CPM FLOAT,
	CURRENCY VARCHAR(16777216),
	MEDIA_TYPE VARCHAR(16777216),
	NET_REVENUE BOOLEAN,
	ORIGINAL_CPM FLOAT,
	WINNING_SIZE_WIDTH NUMBER(38,0),
	WINNING_SIZE_HEIGHT NUMBER(38,0),
	STATUS_MESSAGE VARCHAR(16777216),
	TIME_TO_RESPOND NUMBER(38,0),
	TTL NUMBER(38,0),
	YIELDGROUPIDS VARCHAR(16777216)
);