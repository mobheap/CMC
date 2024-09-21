CREATE database centre;
USE centre;

CREATE TABLE ETUDIANT (
    numCINEtu VARCHAR(10) PRIMARY KEY,
    nomEtu VARCHAR(45),
    prenomEtu VARCHAR(45),
    dateNaissance DATE,
    adresseEtu VARCHAR(45),
    villeEtu VARCHAR(45),
    niveauEtu VARCHAR(45)
);
CREATE TABLE INSCRIPTION (
    codeSess INT,
    numCINEtu VARCHAR(10),
    typeCours VARCHAR(45),
    PRIMARY KEY (codeSess, numCINEtu),
    FOREIGN KEY (numCINEtu) REFERENCES ETUDIANT(numCINEtu)
);
CREATE TABLE SESSION (
    codeSess INT PRIMARY KEY,
    nomSess VARCHAR(45),
    dateDebut DATE,
    dateFin VARCHAR(45),
    codeForm INT,
    FOREIGN KEY (codeForm) REFERENCES FORMATION(codeForm)
);
CREATE TABLE FORMATION (
    codeForm INT PRIMARY KEY,
    titreForm VARCHAR(45),
    dureeForm DOUBLE,
    prixForm DOUBLE
);
CREATE TABLE SPECIALITE (
    codeSpec INT PRIMARY KEY,
    nomSpec VARCHAR(45),
    descSpec VARCHAR(45)
);
CREATE TABLE CATALOGUE (
    codeSpec INT,
    codeForm INT,
    PRIMARY KEY (codeSpec, codeForm),
    FOREIGN KEY (codeSpec) REFERENCES SPECIALITE(codeSpec),
    FOREIGN KEY (codeForm) REFERENCES FORMATION(codeForm)
);

INSERT INTO SPECIALITE (codeSpec, nomSpec, descSpec) VALUES
(101, 'GL', 'Genie logiciel et developpement'),
(102, 'Data', 'Data engineering'),
(103, 'Langues', 'Anglais, Francais'),
(104, 'Communication', 'Communication'),
(105, 'Securite', 'Reseaux et securite');
INSERT INTO FORMATION (codeForm, titreForm, dureeForm, prixForm) VALUES
(11, 'Programming Java', 12, 3600),
(12, 'web developpment', 14, 4200),
(13, 'Anglais technique', 15, 3750),
(14, 'Communication', 10, 2500),
(15, 'Intelligence Artificielle', 20, 6000),
(16, 'Soft skills', 12, 3000);
INSERT INTO SESSION (codeSess, nomSess, dateDebut, dateFin, codeform) VALUES
(1101, 'Session1101', '2022-01-02', '2022-01-14', 11),
(1102, 'Session1102', '2022-02-03', '2022-02-15', 11),
(1201, 'Session1201', '2022-03-04', '2022-03-18', 12),
(1202, 'Session1202', '2022-04-05', '2022-04-19', 12),
(1301, 'Session1301', '2022-01-06', '2022-01-21', 13),
(1302, 'Session1302', '2022-05-07', '2022-05-22', 13),
(1303, 'Session1303', '2022-06-08', '2022-06-23', 13),
(1401, 'Session1401', '2022-09-01', '2022-09-11', 14),
(1402, 'Session1402', '2022-08-08', '2022-08-18', 14),
(1501, 'Session1501', '2022-11-11', '2022-12-01', 15),
(1502, 'Session1502', '2022-09-12', '2022-09-25', 15),
(1601, 'Session1601', '2022-10-13', '2022-10-26', 16),
(1602, 'Session1602', '2022-10-14', '2022-10-27', 16),
(1104, 'Session1104', '2022-10-15', '2022-10-27', 11),
(1203, 'Session1203', '2022-11-16', '2022-11-30', 12),
(1204, 'Session1204', '2022-12-17', '2022-12-31', 12);
INSERT INTO ETUDIANT (numCINEtu, nomEtu, prenomEtu, dateNaissance, adresseEtu, villeEtu, niveauEtu) VALUES
('AB234567', 'Alami', 'Ahmad', '1986-01-01', 'Rue du port, 13', 'Tanger', 'bac'),
('GS346789', 'Toumi', 'Aïcha', '2000-12-03', 'N12 immeuble Jaouhara', 'Casablanca', 'Master'),
('C0987265', 'Souni', 'Sanaa', '1998-04-30', 'Place du peuple n 2', 'Tanger', 'Niveau bac'),
('D2356903', 'Idrissi Alami', 'Mohammed', '1995-05-19', 'Lotissement najah, rue n 12 immeuble 3', 'Rabat', 'Bac+4'),
('Y1234987', 'Ouled thami', 'Ali', '1979-04-12', 'La ville haute, rue chouhada n 6', 'Tanger', 'Bachelor'),
('J3578902', 'Ben Omar', 'Abd Allah', '1990-06-25', 'Villa Amina n12 bir rami', 'Kenitra', 'Phd'),
('F9827363', 'El Khattabi', 'Fatima Zohra', '1997-10-01', 'Immeuble iftikhar, n 13 ettakaddoum', 'Rabat', 'Bac+2');
INSERT INTO CATALOGUE (codeSpec, codeForm) VALUES
(101, 11),
(101, 12),
(102, 15),
(101, 15),
(103, 13),
(104, 13),
(104, 14),
(104, 16);
INSERT INTO INSCRIPTION (codeSess, numCINEtu, typeCours) VALUES
(1101, 'AB234567', 'Distanciel'),
(1101, 'GS346789', 'Distanciel');
