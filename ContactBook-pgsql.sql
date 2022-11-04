CREATE TABLE "CONTACTS" (
  "idContact" integer PRIMARY KEY,
  "name" varchar,
  "lastName" varchar,
  "email" varchar,
  "address" varchar,
  "company" varchar
);

CREATE TABLE "NUMBERS" (
  "idNumber" integer PRIMARY KEY,
  "number" varchar,
  "idNumberType" integer,
  "idContact" integer
);

CREATE TABLE "NUMBER_TYPE" (
  "idNumberType" integer PRIMARY KEY,
  "description" varchar
);

ALTER TABLE "NUMBERS" ADD FOREIGN KEY ("idContact") REFERENCES "CONTACTS" ("idContact");

ALTER TABLE "NUMBERS" ADD FOREIGN KEY ("idNumberType") REFERENCES "NUMBER_TYPE" ("idNumberType");
