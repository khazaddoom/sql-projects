// Patients table

CREATE TABLE IF NOT EXISTS PATIENT (
    patient_id INTEGER NOT NULL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    bed_code TEXT NOT NULL,
    createAt DATETIME,
    updatedAy DATETIME
)

CREATE TABLE IF NOT EXISTS ADMISSION (
    admission_id INTEGER NOT NULL PRIMARY KEY,
    patient_id INTEGER NOT NULL,
    admittedOn DATETIME NOT NULL,
    dignosis TEXT,
    attending_doctor_id INTEGER NOT NULL,
    createAt DATETIME,
    updatedAy DATETIME
)


CREATE TABLE IF NOT EXISTS BED (
    bed_id TEXT NOT NULL PRIMARY KEY,
    room_id TEXT NOT NULL,
    createAt DATETIME,
    updatedAy DATETIME
)

CREATE TABLE IF NOT EXISTS ROOM (
    room_id TEXT NOT NULL PRIMARY KEY,
    floor_id TEXT NOT NULL,
    createAt DATETIME,
    updatedAy DATETIME
)

CREATE TABLE IF NOT EXISTS FLOOR (
    floor_id TEXT NOT NULL PRIMARY KEY,
    building_id TEXT NOT NULL,
    createAt DATETIME,
    updatedAy DATETIME
)

CREATE TABLE IF NOT EXISTS BUILDING (
    building_id TEXT NOT NULL PRIMARY KEY,
    facility_id TEXT NOT NULL,
    createAt DATETIME,
    updatedAy DATETIME
)

CREATE TABLE IF NOT EXISTS FACILITY (
    facility_id TEXT NOT NULL PRIMARY KEY,
    facility_location TEXT NOT NULL,
    createAt DATETIME,
    updatedAy DATETIME
)

CREATE TABLE IF NOT EXISTS CONFIGURATION (
    configuration_id TEXT NOT NULL PRIMARY KEY,
    description TEXT,
    createAt DATETIME,
    updatedAy DATETIME
)


