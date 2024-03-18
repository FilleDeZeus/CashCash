const express = require('express');
const mysql = require('mysql');

const app = express();
const port = 3000;

const db = mysql.createConnection({
    host: 'localhost',
    user: 'enidedjender',
    password: 'enide',
    database: 'cashcash'
});


db.connect((err) => {
    if (err) {
        throw err;
    }
    console.log('Connecté à la base de données MySQL');
});

app.get('/', (req, res) => {
    res.send('Bienvenu sur l\'API de CashCash !');
});

app.get('/utilisateurs', (req, res) => {
    db.query('SELECT * FROM Utilisateur', (err, result) => {
        if (err) {
            res.status(500).send('Erreur lors de la récupération des utilisateurs');
            } else {
            res.json(result);
        }
    });
});


app.listen(port, () => {
    console.log(`Serveur backend démarré sur http://localhost:${port}`);
});
