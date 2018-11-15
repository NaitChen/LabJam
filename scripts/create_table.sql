CREATE TABLE Lab
	(id CHAR(4) PRIMARY KEY,
	name CHAR(20),
Field CHAR(4));

CREATE TABLE Contains_LabMember
    (id CHAR(4) PRIMARY KEY,
    labId CHAR(4) NOT NULL,
    name CHAR(20),
    education CHAR(4),
    phonenumber VARCHAR(15),
    emailaddress VARCHAR(20),
    FOREIGN KEY (labId) REFERENCES Lab(id));

CREATE TABLE LabManager
(id CHAR(4) PRIMARY KEY,
	employmentType CHAR(20),
FOREIGN KEY (id) REFERENCES Contains_LabMember(id));

CREATE TABLE PI
(id CHAR(4) PRIMARY KEY,
fieldOfExpertise CHAR(20),
	FOREIGN KEY (id) REFERENCES Contains_LabMember(id));

CREATE TABLE Researcher
(id CHAR(4) PRIMARY KEY,
	researcherType CHAR(20),
FOREIGN KEY (id) REFERENCES Contains_LabMember(id));

CREATE TABLE Project_MaterialType
(name CHAR(20) PRIMARY KEY,
	category CHAR(20),
	materialType CHAR(20));

CREATE TABLE MaterialType_MaterialPrice 
(materialType CHAR(20) PRIMARY KEY,
materialPrice FLOAT);

CREATE TABLE Applies_OpenGrant_Date
(name CHAR(20),
amount FLOAT,
dateApplied DATE,
status CHAR(8),
CHECK (amount > 0),
PRIMARY KEY (name, amount));

CREATE TABLE Date_Name_Lmid
(name CHAR(20),
dateApplied DATE,
lmid CHAR(4),
PRIMARY KEY (name, dateApplied),
FOREIGN KEY (lmid) REFERENCES LabManager(id));

CREATE TABLE Fund_ApprovedGrant
(name CHAR(20),
amount FLOAT,
projectName CHAR(20),
CHECK (amount > 0),
PRIMARY KEY (name, amount),
FOREIGN KEY (projectName) REFERENCES Project_MaterialType(name));

CREATE TABLE Supervises_WorksOn
(projectName CHAR(20),
rid CHAR(4),
	piid CHAR(4) NOT NULL,
	role CHAR(20),
PRIMARY KEY (projectName, rid),
FOREIGN KEY (projectName) REFERENCES Project_MaterialType(name),
FOREIGN KEY (rid) REFERENCES Researcher(id),
FOREIGN KEY (piid) REFERENCES PI(id));

CREATE TABLE Role_WeeklyHoursAllocated
	(role CHAR(20) PRIMARY KEY,
weeklyHoursAllocated INTEGER);

CREATE TABLE Assigned_Collaborators_Id
(id CHAR(4) PRIMARY KEY,
	name CHAR(20),
	education CHAR(4));

CREATE TABLE Name_Education_ProjectName
	(name CHAR(20),
education CHAR(4),
projectName CHAR(20) NOT NULL,
PRIMARY KEY (name, education),
FOREIGN KEY (projectName) REFERENCES Project_MaterialType(name));

CREATE TABLE Subject(
id CHAR(4) PRIMARY KEY,
	name CHAR(20),
	availability char(1) CHECK (availability IN ( 'Y', 'N' )));

CREATE TABLE Takes_Booking(
projectName CHAR(20) NOT NULL,
	participantNumber INTEGER,
	length INTEGER,
	participantTestCondition CHAR(10),
	PRIMARY KEY (projectName, participantNumber),
	FOREIGN KEY (projectName) REFERENCES Project_MaterialType(name));

CREATE TABLE Participates
(sid CHAR(4),
projectName CHAR(20),	
participantNumber INTEGER,
dateParticipated DATE,
	PRIMARY KEY (sid, projectName, participantNumber),
FOREIGN KEY (sid) REFERENCES Subject(id),	
FOREIGN KEY (projectName, participantNumber) REFERENCES Takes_Booking(projectName, participantNumber));

CREATE TABLE Makes_Booking(
projectName CHAR(20),
	participantNumber INTEGER,
	lmid CHAR(4) NOT NULL,
	PRIMARY KEY (projectName, participantNumber),
FOREIGN KEY (projectName, participantNumber) REFERENCES Takes_Booking(projectName, participantNumber),
	FOREIGN KEY (lmid) REFERENCES LabManager(id));