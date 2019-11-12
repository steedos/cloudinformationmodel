CREATE SCHEMA IF NOT EXISTS LEAD_ENTITY_GROUP;

CREATE TABLE LEAD_ENTITY_GROUP.LEAD (
  STATE_PROVINCE_NAME VARCHAR(500),
  LEAD_STATUS VARCHAR(500),
  PHOTO_UR_L VARCHAR(500),
  COUNTRY_NAME VARCHAR(500),
  PARTY_ROLE VARCHAR(500) NOT NULL,
  CONVERTED_DATE DATE,
  DESCRIPTION VARCHAR(500),
  ID VARCHAR(36) UNIQUE NOT NULL,
  COMPANY_NAME VARCHAR(500),
  STREET_NAME VARCHAR(500),
  LEAD_SCORE INTEGER,
  GEO_CODE_LATITUDE INTEGER,
  LEAD_RATING VARCHAR(500),
  GEO_CODE_LONGITUDE INTEGER,
  EMAIL_BOUNCED_DATE TIME,
  GEO_CODE_ACCURACY INTEGER,
  LEAD_SOURCE VARCHAR(500) NOT NULL,
  LAST_ACTIVITY_DATE DATE,
  ANNUAL_REVENUE INTEGER,
  EMAIL_BOUNCED_REASON VARCHAR(500),
  WEBSITE VARCHAR(500),
  IS_CONVERTED BOOLEAN,
  PRIMARY KEY (ID)
);

CREATE TABLE LEAD_ENTITY_GROUP.LEAD_FAX_CONTACT_PHONE_JOIN (
  LEAD_ID  VARCHAR(36) NOT NULL,
  CONTACT_POINT_PHONE_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(LEAD_ID) REFERENCES LEAD_ENTITY_GROUP.LEAD(ID),
  FOREIGN KEY(CONTACT_POINT_PHONE_ID) REFERENCES CONTACT_POINT_ENTITY_GROUP.CONTACT_POINT_PHONE(ID)
);

CREATE TABLE LEAD_ENTITY_GROUP.LEAD_CONTACT_POINT_EMAIL_JOIN (
  LEAD_ID  VARCHAR(36) NOT NULL,
  CONTACT_POINT_EMAIL_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(LEAD_ID) REFERENCES LEAD_ENTITY_GROUP.LEAD(ID),
  FOREIGN KEY(CONTACT_POINT_EMAIL_ID) REFERENCES CONTACT_POINT_ENTITY_GROUP.CONTACT_POINT_EMAIL(ID)
);

CREATE TABLE LEAD_ENTITY_GROUP.LEAD_MOBILE_CONTACT_PHONE_JOIN (
  LEAD_ID  VARCHAR(36) NOT NULL,
  CONTACT_POINT_PHONE_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(LEAD_ID) REFERENCES LEAD_ENTITY_GROUP.LEAD(ID),
  FOREIGN KEY(CONTACT_POINT_PHONE_ID) REFERENCES CONTACT_POINT_ENTITY_GROUP.CONTACT_POINT_PHONE(ID)
);

CREATE TABLE LEAD_ENTITY_GROUP.LEAD_CONTACT_ADDRESS_JOIN (
  LEAD_ID  VARCHAR(36) NOT NULL,
  CONTACT_POINT_ADDRESS_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(LEAD_ID) REFERENCES LEAD_ENTITY_GROUP.LEAD(ID),
  FOREIGN KEY(CONTACT_POINT_ADDRESS_ID) REFERENCES CONTACT_POINT_ENTITY_GROUP.CONTACT_POINT_ADDRESS(ID)
);

CREATE TABLE LEAD_ENTITY_GROUP.LEAD_CONVERTED_TO_ACCOUNT_JOIN (
  LEAD_ID  VARCHAR(36) NOT NULL,
  ACCOUNT_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(LEAD_ID) REFERENCES LEAD_ENTITY_GROUP.LEAD(ID),
  FOREIGN KEY(ACCOUNT_ID) REFERENCES ACCOUNT_ENTITY_GROUP.ACCOUNT(ID)
);

CREATE TABLE LEAD_ENTITY_GROUP.LEAD_CONVERTED_TO_ACCOUNT_CONTACT_JOIN (
  LEAD_ID  VARCHAR(36) NOT NULL,
  ACCOUNT_CONTACT_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(LEAD_ID) REFERENCES LEAD_ENTITY_GROUP.LEAD(ID),
  FOREIGN KEY(ACCOUNT_CONTACT_ID) REFERENCES ACCOUNT_ENTITY_GROUP.ACCOUNT_CONTACT(ID)
);

CREATE TABLE LEAD_ENTITY_GROUP.LEAD_PHONE_CONTACT_POINT_JOIN (
  LEAD_ID  VARCHAR(36) NOT NULL,
  CONTACT_POINT_PHONE_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(LEAD_ID) REFERENCES LEAD_ENTITY_GROUP.LEAD(ID),
  FOREIGN KEY(CONTACT_POINT_PHONE_ID) REFERENCES CONTACT_POINT_ENTITY_GROUP.CONTACT_POINT_PHONE(ID)
);

CREATE TABLE LEAD_ENTITY_GROUP.LEAD_PARTNER_ACCOUNT_JOIN (
  LEAD_ID  VARCHAR(36) NOT NULL,
  ACCOUNT_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(LEAD_ID) REFERENCES LEAD_ENTITY_GROUP.LEAD(ID),
  FOREIGN KEY(ACCOUNT_ID) REFERENCES ACCOUNT_ENTITY_GROUP.ACCOUNT(ID)
);