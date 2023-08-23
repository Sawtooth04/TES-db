/*
 Navicat Premium Data Transfer

 Source Server         : localhost_postgres
 Source Server Type    : PostgreSQL
 Source Server Version : 150001
 Source Host           : localhost:5432
 Source Catalog        : tes
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 150001
 File Encoding         : 65001

 Date: 23/08/2023 18:40:46
*/


-- ----------------------------
-- Sequence structure for Customer_customerID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."Customer_customerID_seq";
CREATE SEQUENCE "public"."Customer_customerID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Table structure for Customer
-- ----------------------------
DROP TABLE IF EXISTS "public"."Customer";
CREATE TABLE "public"."Customer" (
  "customerID" int4 NOT NULL DEFAULT nextval('"Customer_customerID_seq"'::regclass),
  "name" varchar(30) COLLATE "pg_catalog"."default",
  "passwordHash" varchar(255) COLLATE "pg_catalog"."default",
  "email" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of Customer
-- ----------------------------

-- ----------------------------
-- Function structure for create_customer_table
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."create_customer_table"();
CREATE OR REPLACE FUNCTION "public"."create_customer_table"()
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	CREATE TABLE "Customer" (
		"customerID" serial PRIMARY KEY,
		name varchar(30),
		"passwordHash" varchar(255),
		email varchar(50)
	);
	
	RETURN;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for get_customer_by_id
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_customer_by_id"("id" int4);
CREATE OR REPLACE FUNCTION "public"."get_customer_by_id"("id" int4)
  RETURNS SETOF "public"."Customer" AS $BODY$BEGIN
	
	RETURN QUERY SELECT * FROM "Customer" WHERE "Customer"."customerID" = "id";

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for insert_customer
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."insert_customer"("name" varchar, "password" varchar, "email" varchar);
CREATE OR REPLACE FUNCTION "public"."insert_customer"("name" varchar, "password" varchar, "email" varchar)
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN
	
	INSERT INTO "Customer" (name, "passwordHash", email) VALUES(name, password, email);

	RETURN;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."Customer_customerID_seq"
OWNED BY "public"."Customer"."customerID";
SELECT setval('"public"."Customer_customerID_seq"', 2, true);

-- ----------------------------
-- Primary Key structure for table Customer
-- ----------------------------
ALTER TABLE "public"."Customer" ADD CONSTRAINT "Customer_pkey" PRIMARY KEY ("customerID");
