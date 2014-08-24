CREATE TABLE Marina (
	MarinaId		varchar(80)	PRIMARY KEY,
	Name			varchar(80)	NOT NULL,
	Location		varchar(80)
);

CREATE TABLE Boat (
	Number			varchar(80) PRIMARY KEY,
	Name			varchar(80) NOT NULL,
	Color			varchar(80) NOT NULL,
	MarinaId		varchar(80) NOT NULL REFERENCES Marina	(MarinaId),
	CONSTRAINT number_name UNIQUE(Number, Name)
);

CREATE TABLE Reserves (
	Reserves_Id		serial 		PRIMARY KEY,
	Date			date		NOT NULL,
	Number			varchar(80)	NOT NULL REFERENCES Boat		(Number)
);


CREATE TABLE Grade (
	GradeId			varchar(80)		PRIMARY KEY,
	Name			varchar(80)	NOT NULL UNIQUE
);

CREATE TABLE Sailor (
	SailorId		varchar(80)	PRIMARY KEY CHECK (SailorId ~ '^sa\d{3}$'),
	Name			varchar(80)	NOT NULL,
	Skills			varchar(80) NOT NULL,
	Address			varchar(80),
	Ref_grade		varchar(80)	NOT NULL REFERENCES Grade	(GradeId),
	CONSTRAINT 		s_g UNIQUE (SailorId, Ref_grade)
);

CREATE TABLE Res_Sailor (
	Res_SailorId	serial		PRIMARY KEY,
	Ref_grade		varchar(80)	NOT NULL,
	From_			varchar(80)	NOT NULL,
	To_				varchar(80) NOT NULL,
	Reserves_Id		int			NOT NULL REFERENCES Reserves (Reserves_Id),
	SailorId		varchar(80) NOT NULL,
	FOREIGN KEY (SailorId, Ref_grade) REFERENCES Sailor(SailorId, Ref_grade),
 	CONSTRAINT	ref_g CHECK (Ref_grade = ('S'))
);

