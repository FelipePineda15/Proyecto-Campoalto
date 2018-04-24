CREATE TABLE Pago (
  ID_Estudiante INTEGER NOT NULL ,
  ID_Semestre INTEGER ,
  Valor_Pago INTEGER ,
  ID_Pago INTEGER , 
 PRIMARY KEY (ID_Pago)
);

CREATE TABLE Estudiante (
  Documento INTEGER ,
  Nombres VARCHAR(20) ,
  Apellidos VARCHAR(20) ,
  Direccion VARCHAR(20) ,
  Telefono INTEGER ,
  Celular INTEGER ,
  Email VARCHAR(20) ,
  Programa VARCHAR(20) ,
  Semestre VARCHAR(20) ,
  Huella_Dactilar INTEGER ,
  No_Carné INTEGER ,
  ID_Estudiante INTEGER , 
 PRIMARY KEY (ID_Estudiante)
);

CREATE TABLE Programa (
  Nombre_Programa VARCHAR(20) ,
  ID_Programa INTEGER , 
 PRIMARY KEY (ID_Programa)
);

CREATE TABLE Valor_Anual (
  ID_Valor INTEGER ,
  Año INTEGER ,
  Valor INTEGER ,
  ID_Programa INTEGER , 
 PRIMARY KEY (ID_Valor)
);

CREATE TABLE Semestre (
  ID_Semestre INTEGER ,
  Numero_Semestre INTEGER ,
  Valor_Semestre INTEGER , 
 PRIMARY KEY (ID_Semestre)
);

ALTER TABLE Pago ADD FOREIGN KEY (ID_Estudiante) REFERENCES Estudiante (ID_Estudiante);
				
ALTER TABLE Pago ADD FOREIGN KEY (ID_Semestre) REFERENCES Semestre (ID_Semestre);
				
ALTER TABLE Estudiante ADD FOREIGN KEY (Programa) REFERENCES Programa (ID_Programa);
				
ALTER TABLE Estudiante ADD FOREIGN KEY (Semestre) REFERENCES Semestre (ID_Semestre);
				
ALTER TABLE Valor_Anual ADD FOREIGN KEY (ID_Programa) REFERENCES Programa (ID_Programa);
				
ALTER TABLE Semestre ADD FOREIGN KEY (Valor_Semestre) REFERENCES Valor_Anual (ID_Valor);