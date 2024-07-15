CREATE TABLE Country(
	Id serial PRIMARY KEY,
	CountryName VARCHAR(50)
);

CREATE TABLE City(
	Id serial PRIMARY KEY,
	CountryId INT,
	CityName 	VARCHAR(50)
);

CREATE TABLE MissionApplication(
	Id serial PRIMARY KEY,
	MissionId INT,
	UserId INT,
	AppliedDate timestamp with time zone	DEFAULT now(),
	Status bool,
	Sheet INT
);


CREATE TABLE Missions(
	Id serial PRIMARY KEY,
	MissionTitle VARCHAR(100),
	MissionDescription VARCHAR(255),
	MissionOrganisationName VARCHAR(255),
	MissionOrganisationDetail VARCHAR(255),
	CountryId INT,
	CityId INT,
	StartDate timestamp with time zone	DEFAULT now(),
	EndDate timestamp with time zone ,
	MissionType VARCHAR(100),
	TotalSheets INT,
	RegistrationDeadLine timestamp with time zone,
	MissionThemeId VARCHAR(100),
	MissionSkillId VARCHAR(100),
	MissionImages VARCHAR(100),
	MissionDocuments VARCHAR(100),
	MissionAvilability VARCHAR(100),
	MissionVideoUrl VARCHAR(100)
);




CREATE TABLE MissionSkill(
	Id serial PRIMARY KEY,
	SkillName 	VARCHAR(50),
	Status 	VARCHAR(50)
);


CREATE TABLE MissionTheme(
	Id serial PRIMARY KEY,
	ThemeName 	VARCHAR(50),
	Status 	VARCHAR(50)
);


CREATE TABLE users(
	Id serial PRIMARY KEY,
	FirstName 	VARCHAR(50),
	LastName 	VARCHAR(50),
	PhoneNumber 	VARCHAR(50),
	EmailAddress 	VARCHAR(50),
	UserType 	VARCHAR(50),
	Password VARCHAR(50)
);



CREATE TABLE UserDetail(
	Id serial PRIMARY KEY,
	UserId INT,
	Name 	VARCHAR(255),
	Surname 	VARCHAR(50),
	EmployeeId 	VARCHAR(50),
	Manager 	VARCHAR(50),
	Title 	VARCHAR(50),
	Department 	VARCHAR(50),
	MyProfile 	VARCHAR(50),
	WhyIVolunteer 	VARCHAR(50),
	CountryId INT,
	CityId INT,
	Avilability	VARCHAR(50), 
	LinkdInUrl	 	VARCHAR(50),
	MySkills	 	VARCHAR(50),
	UserImage	 	VARCHAR(50),
	Status bool

);



CREATE TABLE UserSkills(
	Id serial PRIMARY KEY,
	Skill 	VARCHAR(50),
	UserId INT
);

