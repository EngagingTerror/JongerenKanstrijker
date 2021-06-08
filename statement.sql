CREATE DATABASE JongerenKansrijker;

USE JongerenKansrijker;

CREATE TABLE activiteit(
    activiteitcode int NOT NULL AUTO_INCREMENT,
    activiteit1 VARCHAR(255),
    PRIMARY KEY(activiteitcode)
);

CREATE TABLE insituut(
    insituutcode int NOT NULL AUTO_INCREMENT,
    insituut VARCHAR(255),
    insituuttelefoon int,
    PRIMARY KEY(insituutcode)
);

CREATE TABLE jongere(
    jongerecode int NOT NULL AUTO_INCREMENT,
    roepnaam VARCHAR(255),
    tussenvoegsels VARCHAR(255),
    achternaam VARCHAR(255),
    inschrijfdatum DATE,
    PRIMARY KEY(jongerecode)
);

CREATE TABLE jongereinstituut(
    jongerecode int,
    insituutcode int,
    startdatum DATE,
    FOREIGN KEY(jongerecode) REFERENCES jongere(jongerecode),
    FOREIGN KEY(insituutcode) REFERENCES insituut(insituutcode)
);

CREATE TABLE jongereactiviteit(
    jongerecode int,
    activiteitcode int,
    startdatum DATE,
    afgefrond TINYINT(1),
    FOREIGN KEY(jongerecode) REFERENCES jongere(jongerecode),
    FOREIGN KEY(activiteitcode) REFERENCES activiteit(activiteitcode)
);
