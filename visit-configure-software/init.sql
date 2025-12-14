// Patients table

CREATE TYPE CONFIG_LEVEL AS ENUM ('BED', 'ROOM', 'FLOOR', 'BUILDING', 'FACILITY');

CREATE TABLE IF NOT EXISTS PATIENT (
    patient_id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    bed_code TEXT NOT NULL,
    createAt DATETIME,
    updatedAy DATETIME
)

CREATE TABLE IF NOT EXISTS ADMISSION (
    admission_id SERIAL PRIMARY KEY,
    patient_id INTEGER NOT NULL,
    admittedOn DATETIME NOT NULL,
    dignosis TEXT,
    attending_doctor_id INTEGER NOT NULL,
    createAt DATETIME,
    updatedAy DATETIME
)


CREATE TABLE IF NOT EXISTS BED (
    bed_id SERIAL PRIMARY KEY,
    bed_code TEXT NOT NULL,
    room_id TEXT NOT NULL,
    createAt DATETIME,
    updatedAy DATETIME
)

CREATE TABLE IF NOT EXISTS ROOM (
    room_id SERIAL PRIMARY KEY,
    room_code TEXT NOT NULL,
    floor_id TEXT NOT NULL,
    createAt DATETIME,
    updatedAy DATETIME
)

CREATE TABLE IF NOT EXISTS FLOOR (
    floor_id SERIAL PRIMARY KEY,
    floor_code TEXT NOT NULL,
    building_id TEXT NOT NULL,
    createAt DATETIME,
    updatedAy DATETIME
)

CREATE TABLE IF NOT EXISTS BUILDING (
    building_id SERIAL PRIMARY KEY,
    building_code TEXT NOT NULL,
    facility_id TEXT NOT NULL,
    createAt DATETIME,
    updatedAy DATETIME
)

CREATE TABLE IF NOT EXISTS FACILITY (
    facility_id SERIAL PRIMARY KEY,
    facility_code TEXT NOT NULL,
    facility_location TEXT NOT NULL,
    createAt DATETIME,
    updatedAy DATETIME
)

CREATE TABLE IF NOT EXISTS CONFIGURATION (
    configuration_id SERIAL PRIMARY KEY,
    configuration_code TEXT NOT NULL,
    description TEXT,
    metadata JSONB,
    effective_start_date DATETIME NOT NUll,
    effective_end_date DATETIME NOT NUll,
    createAt DATETIME,
    updatedAy DATETIME
)


