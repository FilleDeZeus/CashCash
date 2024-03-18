-- Inserts pour la table Utilisateur
INSERT INTO Utilisateur (nom_utilisateur, mot_de_passe, role)
VALUES
('User1', 'MotDePasse1', 'Assistant'),
('User2', 'MotDePasse2', 'Assistant'),
('User3', 'MotDePasse3', 'Assistant'),
('User4', 'MotDePasse4', 'Assistant'),
('User5', 'MotDePasse5', 'Assistant'),
('User6', 'MotDePasse6', 'Assistant'),
('User7', 'MotDePasse7', 'Assistant'),
('User8', 'MotDePasse8', 'Assistant'),
('User9', 'MotDePasse9', 'Assistant'),
('User10', 'MotDePasse10', 'Assistant'),
('User11', 'MotDePasse11', 'Assistant'),
('User12', 'MotDePasse12', 'Assistant'),
('User13', 'MotDePasse13', 'Technicien'),
('User14', 'MotDePasse14', 'Technicien'),
('User15', 'MotDePasse15', 'Technicien'),
('User16', 'MotDePasse16', 'Technicien'),
('User17', 'MotDePasse17', 'Technicien'),
('User18', 'MotDePasse18', 'Technicien'),
('User19', 'MotDePasse19', 'Technicien'),
('User20', 'MotDePasse20', 'Technicien'),
('User21', 'MotDePasse21', 'Technicien'),
('User22', 'MotDePasse22', 'Technicien'),
('User23', 'MotDePasse23', 'Technicien'),
('User24', 'MotDePasse24', 'Technicien'),
('User25', 'MotDePasse25', 'Client'),
('User26', 'MotDePasse26', 'Client'),
('User27', 'MotDePasse27', 'Client'),
('User28', 'MotDePasse28', 'Client'),
('User29', 'MotDePasse29', 'Client'),
('User30', 'MotDePasse30', 'Client');

-- Inserts pour la table Agence
INSERT INTO Agence (Nom, Adresse, NumTel, Mail)
VALUES
('Agence A', '123 Rue de la République', '0123456789', 'agencea@cashcash.com'),
('Agence B', '456 Avenue des Champs-Élysées', '9876543210', 'agenceb@cashcash.com'),
('Agence C', '789 Boulevard Saint-Michel', '5551234567', 'agencec@cashcash.com'),
('Agence D', '1010 Rue de la Liberté', '1111222233', 'agenced@cashcash.com'),
('Agence E', '2020 Avenue de la Paix', '4444555566', 'agencee@cashcash.com'),
('Agence F', '3030 Boulevard de l''Égalité', '7777888899', 'agencef@cashcash.com');

-- Inserts pour la table Assistant 
INSERT INTO Assistant (nom, prenom, numTel, mail, utilisateur_Id, agence_Id)
VALUES
('Nom1', 'Prenom1','1111111111', 'assistant1@cashcash.com', 1, 1),
('Nom2', 'Prenom2', '2222222222', 'assistant2@cashcash.com', 2, 1),
('Nom3', 'Prenom3','3333333333', 'assistant3@cashcash.com', 3, 2),
('Nom4', 'Prenom4','4444444444', 'assistant4@cashcash.com', 4, 2),
('Nom5', 'Prenom5','5555555555', 'assistant5@cashcash.com', 5, 3),
('Nom6', 'Prenom6','6666666666', 'assistant6@cashcash.com', 6, 3),
('Nom7', 'Prenom7' ,'7777777777', 'assistant7@cashcash.com', 7, 4),
('Nom8', 'Prenom8' ,'8888888888', 'assistant8@cashcash.com', 8, 4),
('Nom9', 'Prenom9' ,'9999999999', 'assistant9@cashcash.com', 9, 5),
('Nom10', 'Prenom10' ,'1010101010', 'assistant10@cashcash.com', 10, 5),
('Nom11', 'Prenom11' ,'1111111111', 'assistant11@cashcash.com', 11, 6),
('Nom12', 'Prenom12' ,'1212121212', 'assistant12@cashcash.com', 12, 6);

-- Inserts pour la table Technicien
INSERT INTO Technicien (nom, prenom, qualification, utilisateur_Id, agence_Id)
VALUES
('Nom1', 'Prenom1', 'Technicien A', 13, 1),
('Nom2', 'Prenom2', 'Technicien B', 14, 1),
('Nom3', 'Prenom3', 'Technicien C', 15, 2),
('Nom4', 'Prenom4', 'Technicien D', 16, 2),
('Nom5', 'Prenom5', 'Technicien E', 17, 3),
('Nom6', 'Prenom6', 'Technicien F', 18, 3),
('Nom7', 'Prenom7', 'Technicien G', 19, 4),
('Nom8', 'Prenom8', 'Technicien H', 20, 4),
('Nom9', 'Prenom9', 'Technicien I', 21, 5),
('Nom10', 'Prenom10', 'Technicien J', 22, 5),
('Nom11', 'Prenom11', 'Technicien K', 23, 6),
('Nom12', 'Prenom12', 'Technicien L', 24, 6);

-- Inserts pour la table Client
INSERT INTO Client (raison_social, numero_siren, cope_ape, adresse_postal, numero_telphone, numero_telecopie, email, distance_agence, duree_moyenne_deplacement, agence_id, utilisateur_Id)
VALUES
('Client 1', '123456789', 'A12345', '1 Rue du Client', '0123456789', '9876543210', 'client1@cashcash.com', 10.5, 30, 1, 25),
('Client 2', '987654321', 'B98765', '2 Avenue du Client', '1112223333', '4445556666', 'client2@cashcash.com', 15.2, 45, 2, 26),
('Client 3', '456789123', 'C45678', '3 Boulevard du Client', '9998887777', '6667778888', 'client3@cashcash.com', 8.7, 25, 3, 27),
('Client 4', '9876543210', 'D98765', '4 Rue du Client', '5556667777', '8889990000', 'client4@cashcash.com', 12.3, 35, 6, 28),
('Client 5', '1234567890', 'E12345', '5 Avenue du Client', '7777888899', '1111222233', 'client5@cashcash.com', 9.8, 28, 5, 29),
('Client 6', '4567890123', 'F45678', '6 Boulevard du Client', '2222333344', '5555666677', 'client6@cashcash.com', 11.0, 32, 4, 30);

-- Inserts pour la table Materiel
INSERT INTO Materiel ( typeMateriel, description, dateVente, dateInstall,prixVente) VALUES
('Laptop', 'High-Performance Laptop', '2023-01-01', '2023-01-02', 1200),
('Printer', 'Color Laser Printer', '2023-02-01', '2023-02-02', 500),
('Server', 'Enterprise Server', '2023-03-01', '2023-03-02', 3000),
('POS System', 'Point of Sale System', '2023-04-01', '2023-04-02', 1500),
('Barcode Scanner', 'Wireless Barcode Scanner', '2023-05-01', '2023-05-02', 800),
('Desktop Computer', 'Office Desktop Computer', '2023-06-01', '2023-06-02', 1000),
('CCTV Camera System', 'Surveillance System', '2023-07-01', '2023-07-02', 2000),
('Access System', 'Biometric System', '2023-08-01', '2023-08-02', 1200),
('Network Switch', 'Gigabit  Switch', '2023-09-01', '2023-09-02', 800),
('3D Printer', 'Professional 3D Printer', '2023-10-01', '2023-10-02', 2500),
('Projector', 'High-Resolution Projector', '2023-11-01', '2023-11-02', 1200),
('Security Camera', 'Outdoor Security Camera', '2023-12-01', '2023-12-02', 600),
('Refrigeration Unit', ' Refrigeration Unit', '2024-01-01', '2024-01-02', 3500),
('Cash Register', 'Cash Register', '2024-02-01', '2024-02-02', 1000),
('Digital Display', 'Interactive Display', '2024-03-01', '2024-03-02', 1500);

-- Inserts pour la table Contrat
INSERT INTO Contrat (date_signature, date_echeance, date_renouvellement, client_id, materiel_id)
VALUES
('2022-03-10', '2023-03-10', '2023-03-10', 1, 2),
('2021-11-15', '2022-11-15', '2022-11-15', 2, 4),
('2023-01-05', '2024-01-05', '2024-01-05', 3, 6),
('2022-07-20', '2023-07-20', '2023-07-20', 4, 8),
('2021-10-25', '2022-10-25', '2022-10-25', 5, 10),
('2023-03-15', '2024-03-15', '2024-03-15', 6, 12);

-- Inserts pour la table Intervention
INSERT INTO Intervention (dateIntervention, commentaire, contrat_Id ,technicien_Id)
VALUES
('2023-01-15', 'Intervention de routine', 6 ,1),
('2023-02-20', 'Réparation du matériel', 5, 3),
('2023-03-25', 'Maintenance préventive', 4, 5),
('2023-04-10', 'Maintenance corrective', 3, 7),
('2023-05-15', 'Mise à jour logicielle', 2, 9),
('2023-06-20', 'Réparation d''urgence', 1, 10),
('2023-07-20', 'Intervention de routine', 6, 2),
('2023-08-25', 'Réparation du matériel', 5, 4),
('2023-09-10', 'Maintenance préventive', 4, 6),
('2023-10-15', 'Maintenance corrective', 3, 8),
('2023-11-20', 'Mise à jour logicielle', 2, 10),
('2023-12-25', 'Réparation d''urgence', 1, 11),
('2024-01-15', 'Intervention de routine', 6, 3),
('2024-02-20', 'Réparation du matériel', 5, 5),
('2024-03-25', 'Maintenance préventive', 4, 7),
('2024-04-10', 'Maintenance corrective', 3, 9),
('2024-05-15', 'Mise à jour logicielle', 2, 11),
('2024-06-20', 'Réparation d''urgence', 1, 12);


