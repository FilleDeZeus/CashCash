CREATE TABLE Utilisateur (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom_utilisateur VARCHAR(50) NOT NULL,
    mot_de_passe VARCHAR(255) NOT NULL,
    role ENUM('Technicien', 'Client', 'Assistant') NOT NULL
);

CREATE TABLE Agence (
    numAgence int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom varchar(50),
    adresse varchar(100),
    numTel varchar(10),
    mail varchar(50)
);

CREATE TABLE Assistant (
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom varchar(50),
    prenom varchar(50),
    numTel varchar(10),
    mail varchar(50),
    utilisateur_Id int,
    FOREIGN KEY (utilisateur_Id) REFERENCES Utilisateur(id),
    agence_Id int,
    FOREIGN KEY (agence_Id) REFERENCES Agence(numAgence)
);

CREATE TABLE Technicien (
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom varchar(50),
    prenom varchar(50),
    qualification varchar(100),
    utilisateur_Id int,
    FOREIGN KEY (utilisateur_Id) REFERENCES Utilisateur(id),
    agence_Id int,
    FOREIGN KEY (agence_Id) REFERENCES Agence(numAgence)
);

CREATE TABLE Client (
    numero_client INT PRIMARY KEY AUTO_INCREMENT,
    raison_social VARCHAR(100),
    numero_siren VARCHAR(20),
    cope_ape VARCHAR(20),
    adresse_postal VARCHAR(40),
    numero_telphone VARCHAR(20),
    numero_telecopie VARCHAR(20),
    email VARCHAR(255),
    distance_agence FLOAT,
    duree_moyenne_deplacement INT,
    agence_id INT,
    FOREIGN KEY (agence_id) REFERENCES Agence(numAgence),
    utilisateur_Id INT,
    FOREIGN KEY (utilisateur_Id) REFERENCES Utilisateur(id)
);

CREATE TABLE Materiel (
    numSerie int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    typeMateriel VARCHAR(20),
    description VARCHAR(100),
    dateVente DATE,
    dateInstall DATE,
    prixVente FLOAT
);

CREATE TABLE Contrat(
    numero_contrat INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    date_signature DATE,
    date_echeance DATE,
    date_renouvellement DATE,
    client_id INT,
    FOREIGN KEY (client_id) REFERENCES Client(numero_client),
    materiel_id INT,
    FOREIGN KEY (materiel_id) REFERENCES Materiel(numSerie)
);


CREATE TABLE Intervention (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    dateIntervention date,
    commentaire varchar(200),
    contrat_Id int,
    FOREIGN KEY (contrat_Id) REFERENCES Contrat(numero_contrat),
    technicien_Id int,
    FOREIGN KEY (technicien_Id) REFERENCES Technicien(id)
);


