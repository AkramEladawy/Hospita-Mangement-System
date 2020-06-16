BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Department" (
	"dept_id"	INTEGER,
	"dept_name"	INTEGER NOT NULL,
	"Doctor_id"	INTEGER NOT NULL,
	"Pationt_id"	INTEGER NOT NULL,
	PRIMARY KEY("dept_id")
);
CREATE TABLE IF NOT EXISTS "Rooms" (
	"Room_id"	INTEGER,
	"Room_location"	INTEGER,
	PRIMARY KEY("Room_id")
);
CREATE TABLE IF NOT EXISTS "Treatment" (
	"Treatment_id"	INTEGER,
	"Treatment_name"	INTEGER NOT NULL,
	"Treatment_quantity"	INTEGER,
	PRIMARY KEY("Treatment_id")
);
CREATE TABLE IF NOT EXISTS "Reciptiont" (
	"Recep_id"	INTEGER,
	"Recep_name"	TEXT NOT NULL,
	PRIMARY KEY("Recep_id")
);
CREATE TABLE IF NOT EXISTS "Patients" (
	"Patient_id"	INTEGER,
	"Patient_name"	TEXT NOT NULL,
	"Patient_gender"	INTEGER NOT NULL,
	"Patientaddress"	INTEGER,
	"Patient_age"	INTEGER,
	"Treatment_quantity"	INTEGER,
	"Treatment_name"	INTEGER,
	"Room_id"	INTEGER NOT NULL,
	PRIMARY KEY("Patient_id")
);
CREATE TABLE IF NOT EXISTS "Nurses" (
	"Nurse_id"	INTEGER,
	"Nurse_name"	TEXT NOT NULL,
	"Nurse_phone"	INTEGER,
	"Nurse_address"	TEXT,
	"Nurse-gender"	TEXT NOT NULL,
	"dept_id"	INTEGER NOT NULL,
	"Room_id"	INTEGER NOT NULL,
	PRIMARY KEY("Nurse_id")
);
CREATE TABLE IF NOT EXISTS "Doctors" (
	"Doctor_id"	INTEGER,
	"Doctor_name"	TEXT NOT NULL,
	"Doctor_phone"	INTEGER,
	"Doctor_address"	TEXT,
	"Doctor_gender"	TEXT NOT NULL,
	"dept_id"	INTEGER NOT NULL,
	PRIMARY KEY("Doctor_id")
);
COMMIT;
