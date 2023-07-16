USE krankenhaus_uebung;

INSERT INTO
    `krankenhaus` (`krankenhaus_id`, `name`, `adresse`)
VALUES
    (
        '1',
        'Charité – Universitätsmedizin Berlin',
        'Charitéplatz 1, 10117 Berlin'
    );

INSERT INTO
    `fragebogen` (`fragebogen_id`, `bezeichnung`, `krankenhaus_id`)
VALUES
    (
        '1',
        'Beobachtungsbögen für die Krankenhausübung im Campus Charité Mitte',
        '1'
    );

INSERT INTO
    `beobachtungsbereich` (`beobachtungsbereich_id`, `bezeichnung`)
VALUES
    ('1', 'Alarmfax und Mitarbeiteralarmierung');

INSERT INTO
    `fragebogen_besitzt_bereich` (`fragebogen_id`, `beobachtungsbereich_id`)
VALUES
    ('1', '1');

INSERT INTO
    `frage` (
        `frage_id`,
        `rang`,
        `fragenart`,
        `fragetext`,
        `antwortentwurf`,
        `subfrage_id`
    )
VALUES
    (
        '1',
        NULL,
        NULL,
        'Wo ist der Standort des „Not- und Krisenfaxes“?',
        NULL,
        NULL
    ),
    (
        '2',
        NULL,
        NULL,
        'Eingang des Alarmfaxes',
        'Uhrzeit',
        NULL
    ),
    (
        '3',
        NULL,
        NULL,
        'Wird die Echtheit der Alarmierung verifiziert\r\n[Erwartungshorizont/Hinweis: Laut Alarmfax ist es nicht notwendig, dass sich das KH rückversichert. Keinesfalls soll ein Rückruf bei der Feuerwehr erfolgen. Bitte nur beobachten, nicht nachfragen.]',
        'ja 	nein \r\nFalls ja, wodurch wird verifiziert?',
        NULL
    ),
    (
        '4',
        NULL,
        NULL,
        'Ist das Alarmfax lesbar?\r\n[Da es sich um ein Fax handelt ist dieser Punkt wichtig]',
        'ja 	nein ',
        NULL
    ),
    (
        '5',
        NULL,
        NULL,
        'Verfügt das Gerät über eine Signalisierung / Visualisierung? ',
        'Optisch 	\r\nAkustisch	\r\n',
        NULL
    ),
    (
        '6',
        NULL,
        NULL,
        'Ist das Signal gut hörbar?',
        'ja 	nein \r\nWenn nein, warum nicht?      \r\n\r\nKönnen Sie das Signal kurz beschreiben?      ',
        NULL
    ),
    (
        '7',
        NULL,
        NULL,
        'Ist das Signal gut sichtbar?',
        'ja 	nein \r\nWenn nein, warum nicht?      \r\n\r\nKönnen Sie das Signal kurz beschreiben?      ',
        NULL
    ),
    (
        '8',
        NULL,
        NULL,
        'In welchen Bereichen / Räumen kann man das Signal hören bzw. sehen?',
        NULL,
        NULL
    ),
    (
        '9',
        NULL,
        NULL,
        'Welche Person (Name und Funktion) nimmt das Alarmfax unmittelbar in Empfang?\r\nWelche Entscheidung trifft sie? Welche Handlungen ergreift sie?\r\n\r\n[Erwartungshorizont/Hinweis: Kernpunkt ist hier, dass ein Verantwortlicher schnellstmöglich beigezogen/informiert wird.]\r\n',
        'Der Alarmeingang erfolgt in der ZNA und ist von jedem Mitarbeiter der Notaufnahme sofort und unverzüglich an den diensthabenden Oberarzt der ZNA weiterzuleiten!\r\nName:	     \r\nFunktion: 	     \r\n\r\n     \r\n',
        NULL
    ),
    (
        '10',
        NULL,
        NULL,
        'Werden die Informationen des Faxes zum Ereignis und zu den zu erwartenden Ver-letzten an die Bereiche weitergegeben?',
        'Informationen zum Ereignis an:\r\nSichtung	\r\nmedizinischer Einsatzleiter	\r\nKEL	\r\n',
        NULL
    ),
    (
        '11',
        NULL,
        NULL,
        'Wo befindet sich das „Rote Telefon“?',
        'Notaufnahme',
        NULL
    ),
    (
        '12',
        NULL,
        NULL,
        'Wird das Telefon überwacht?\r\nDurch wen (Name und Funktion?\r\n\r\nWie findet die Überwachung statt?',
        'ja 	nein \r\nName: 	     \r\nFunktion:	     ',
        NULL
    ),
    (
        '13',
        NULL,
        NULL,
        'Wer weist die Alarmauslösung für im Dienst befindliche MA (intern) und dienstfreie MA (extern) an (Name und Funktion)? ',
        'Die Alarmierung wird grundsätzlich von der Medizinischen Einsatzleitung (OAvD Rettungsstelle) angewiesen. Diese sitzt in der Rettungsstelle, Personalraum 01 042\r\nName: 	     \r\nFunktion:	     \r\n     \r\n',
        NULL
    ),
    (
        '14',
        NULL,
        NULL,
        'Über welches System wird intern und extern alarmiert?\r\n\r\n[Erwartungshorizont/Hinweis: Interne Alarmierung ge-schieht oft über Durchsage \r\noder Telefonanlage, externe Alarmierung über Server \r\noder Telefonkette. \r\n',
        'Der Alarmausruf erfolgt über Telefonalarmierung via DAK-Server\r\nIntern:      \r\n\r\nExtern: \r\n',
        NULL
    ),
    (
        '15',
        NULL,
        NULL,
        'Gibt es intern und extern eine Rückfallebene? Welche?\r\n\r\n[Erwartungshorizont/Hinweis: Oft werden Telefonlisten ge-nutzt, diese bitte zeigen lassen. Wo sind diese Listen hinterlegt und wer hat Zugriff darauf?]\r\n',
        'Intern:      \r\n\r\nExtern:',
        NULL
    );

INSERT INTO
    `bereich_enthaelt_frage` (`beobachtungsbereich_id`, `frage_id`)
VALUES
    ('1', '1'),
    ('1', '2'),
    ('1', '3'),
    ('1', '4'),
    ('1', '5'),
    ('1', '6'),
    ('1', '7'),
    ('1', '8'),
    ('1', '9'),
    ('1', '10'),
    ('1', '11'),
    ('1', '12'),
    ('1', '13'),
    ('1', '14'),
    ('1', '15');

INSERT INTO
    `beobachter` (`beobachter_id`, `vorname`, `name`, `rolle`)
VALUES
    ('1', 'Max', 'Mustermann', 'Beobachter');

INSERT INTO
    `uebung` (
        `uebung_id`,
        `Start`,
        `ende`,
        `betten_gesamt`,
        `betten_akut`,
        `intensivbetten`,
        `betten_unfall`,
        `ops`,
        `ITS-Beatmungsgeraete`,
        `fragebogen_id`
    )
VALUES
    (
        '1',
        '2023-07-16 13:32:22.000000',
        '2023-07-16 13:32:22.000000',
        '892',
        '707',
        '140',
        '78',
        '18',
        '93',
        '1'
    );

INSERT INTO
    `uebung_hat_beobachter` (`uebung_id`, `beobachter_id`)
VALUES
    ('1', '1');

INSERT INTO
    `beobachter_hat_bereich` (
        `beobachter_id`,
        `beobachtungsbereich_id`,
        `uebung_id`
    )
VALUES
    ('1', '1', '1');

INSERT INTO
    `antwort` (
        `frage_id`,
        `uebung_id`,
        `beobachtungsbereich_id`,
        `antworttext`,
        `notizen`,
        `media`,
        `erstellt`,
        `zuletzt_bearbeitet`,
        `beobachter_id`
    )
VALUES
    (
        '1',
        '1',
        '1',
        'Dispatchertresen',
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '1'
    );