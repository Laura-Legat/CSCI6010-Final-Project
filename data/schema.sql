CREATE TABLE taxa (
	taxaID integer NOT NULL PRIMARY KEY,
	taxaName character varying(500) NOT NULL
);

CREATE TABLE intensities (
	intensityID integer NOT NULL PRIMARY KEY,
	intensityDesc character varying(50) NOT NULL
);

CREATE TABLE stations (
	stationID integer NOT NULL PRIMARY KEY,
	stationDesc character varying(10) NOT NULL
);

CREATE TABLE bda (
	bdaID integer NOT NULL PRIMARY KEY,
	bdaDesc character varying(50) NOT NULL
);


CREATE TABLE densities (
	measurementID integer NOT NULL PRIMARY KEY,
	month integer,
	day integer,
	year integer,
	bdaID integer NOT NULL,
	stationID integer NOT NULL,
	intensityID integer NOT NULL,
	taxaID integer NOT NULL,
	density double precision NOT NULL,
	measurementDate date NOT NULL,
	FOREIGN KEY (bdaID) REFERENCES	bda(bdaID),
	FOREIGN KEY (stationID) REFERENCES stations(stationID),
	FOREIGN KEY (intensityID) REFERENCES intensities(intensityID),
	FOREIGN KEY (taxaID) REFERENCES taxa(taxaID)
);