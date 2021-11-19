CREATE TABLE USUARIO (
CPF NUMERIC(14) NOT NULL,
nome varchar(50) NOT NULL,
email VARCHAR(80) NOT NULL,
telefone NUMERIC(11) NOT NULL,
CONSTRAINT user_cpf_pk PRIMARY KEY (CPF)
);

CREATE TABLE PEIXE (
especiePeixe VARCHAR(20) NOT NULL,
phMin FLOAT NOT NULL,
o2Min FLOAT NOT NULL,
tempMin FLOAT NOT NULL,
salMin FLOAT NOT NULL,
turbidezMin FLOAT NOT NULL,
volumeMin FLOAT NOT NULL,
phMax FLOAT NOT NULL,
o2Max FLOAT NOT NULL,
tempMax FLOAT NOT NULL,
salMax FLOAT NOT NULL,
turbidezMax FLOAT NOT NULL,
CONSTRAINT peixe_especie_pk PRIMARY KEY (especiePeixe)
);

CREATE TABLE TANQUE (
codTanque INTEGER NOT NULL,
capMaxima NUMERIC NOT NULL,
volumeAgua NUMERIC,
quantiaPeixes NUMERIC,
tempAgua FLOAT,
phAgua FLOAT,
o2Agua FLOAT,
salAgua FLOAT,
turbidez FLOAT,
especiePeixe VARCHAR (20) NOT NULL,
CONSTRAINT tank_cod_pk PRIMARY KEY (codTanque),
CONSTRAINT tank_peixe_fk FOREIGN KEY (especiePeixe) REFERENCES PEIXE (especiePeixe));

CREATE TABLE USUARIO_TANQUE (
CPF NUMERIC(11) NOT NULL,
codtanque INTEGER NOT NULL,
CONSTRAINT tank_user_fk FOREIGN KEY (CPF) REFERENCES USUARIO (CPF),
CONSTRAINT tank_cod_fk FOREIGN KEY (codtanque) REFERENCES TANQUE (codtanque));

INSERT INTO USUARIO (CPF,nome, email, telefone) VALUES ( 05823213322, 'José Luiz', 'joseluiz@gmail.com', 997770543);
INSERT INTO USUARIO (CPF,nome, email, telefone) VALUES ( 02340555421, 'Carlos Rogerio', 'CarlosRJunior@gmail.com', 997422030);
INSERT INTO USUARIO (CPF,nome, email, telefone) VALUES ( 8293922032, 'Wellinton Cruzes', 'WellCruz@gmail.com', 9994223302);

INSERT INTO PEIXE (especiePeixe, phMin, o2Min, tempMin, salMin, turbidezMin, volumeMin, phMax, o2Max, tempMax, salMax, turbidezMax) VALUES ('Tilápia', 6.0, 0.7 ,26.5, 10.0, 100.0, 1000.0, 8.5, 3.5, 30.0, 30.0, 400.0);
INSERT INTO PEIXE (especiePeixe, phMin, o2Min, tempMin, salMin, turbidezMin, volumeMin, phMax, o2Max, tempMax, salMax, turbidezMax) VALUES ('Pacu', 6.5, 1.2 ,27.0, 10.0, 120.0, 2100.0, 8.5, 4.0, 32.0, 30.0, 600.0);
INSERT INTO PEIXE (especiePeixe, phMin, o2Min, tempMin, salMin, turbidezMin, volumeMin, phMax, o2Max, tempMax, salMax, turbidezMax) VALUES ('Pintado', 6.0, 1.7 ,28.5, 10.0, 300.0, 4000.0, 7.9, 4.5, 35.5, 22.0, 700.0);
INSERT INTO PEIXE (especiePeixe, phMin, o2Min, tempMin, salMin, turbidezMin, volumeMin, phMax, o2Max, tempMax, salMax, turbidezMax) VALUES ('Salmão', 7.0, 2.1 ,24.5, 43.0, 112.0, 6600.0, 8.0, 4.3, 27.5, 52.0, 600.0);
INSERT INTO PEIXE (especiePeixe, phMin, o2Min, tempMin, salMin, turbidezMin, volumeMin, phMax, o2Max, tempMax, salMax, turbidezMax) VALUES ('Jundiá', 6.2, 0.9 ,27.5, 11.0, 100.0, 1500.0, 8.5, 4.5, 32.0, 22.0, 400.0);

INSERT INTO TANQUE (codTanque, capMaxima, volumeAgua, quantiaPeixes, tempAgua, phAgua, o2Agua, salAgua, turbidez, especiePeixe) VALUES (01, 40000, 38203, 230, 28.2, 8.0, 2.6, 14.1, 196.0, 'Jundiá');
INSERT INTO TANQUE (codTanque, capMaxima, volumeAgua, quantiaPeixes, tempAgua, phAgua, o2Agua, salAgua, turbidez, especiePeixe) VALUES (02, 40000, 39360, 180, 28.4, 7.9, 2.1, 13.0, 218.0, 'Pacu');
INSERT INTO TANQUE (codTanque, capMaxima, volumeAgua, quantiaPeixes, tempAgua, phAgua, o2Agua, salAgua, turbidez, especiePeixe) VALUES (03, 60000, 58664, 270, 28.7, 8.2, 1.9, 10.8, 342.0, 'Pintado');
INSERT INTO TANQUE (codTanque, capMaxima, volumeAgua, quantiaPeixes, tempAgua, phAgua, o2Agua, salAgua, turbidez, especiePeixe) VALUES (04, 100000, 93660, 350, 28.5, 7.8, 2.2, 10.0, 230.0, 'Tilápia');
 
INSERT INTO USUARIO_TANQUE(CPF, codtanque) VALUES (5823213322, 02);
INSERT INTO USUARIO_TANQUE(CPF, codtanque) VALUES (2340555421, 01);
INSERT INTO USUARIO_TANQUE(CPF, codtanque) VALUES (8293922032, 03);
INSERT INTO USUARIO_TANQUE(CPF, codtanque) VALUES (5823213322, 04);
INSERT INTO USUARIO_TANQUE(CPF, codtanque) VALUES (2340555421, 04);

SELECT * FROM USUARIO;
SELECT * FROM TANQUE;
SELECT * FROM PEIXE;
SELECT * FROM USUARIO_TANQUE;
