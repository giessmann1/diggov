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
    ('2', 'Koordinierender Einsatzleiter – Erste Maßnahmen');

INSERT INTO
    `fragebogen_besitzt_bereich` (`fragebogen_id`, `beobachtungsbereich_id`)
VALUES
    ('1', '2');

INSERT INTO
    `beobachtungsbereich` (`beobachtungsbereich_id`, `bezeichnung`)
VALUES
    ('8', 'KEL - Einsatzleitung');

INSERT INTO
    `fragebogen_besitzt_bereich` (`fragebogen_id`, `beobachtungsbereich_id`)
VALUES
    ('1', '8');

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
        0,
        'Wer ist zunächst entscheidungsbefugt?',
        'In der Regel wird dies der 1. Chirurg vom Dienst CvD, die Ärztl. Leitung der Notaufnahme in der Funktion MedEL/KoordEL oder EL RST sein.',
        NULL
    ),
    (
        '2',
        NULL,
        0,
        'Ist dieser Funktionsträger gekennzeichnet?',
        'In der Regel wird die Kennzeichnung durch eine farbliche (gelb) Weste o.ä. erfolgen.',
        NULL
    ),
    (
        '3',
        NULL,
        0,
        'Informiert sich dieser Funktionsträger darüber, ob das Alarmierungssystem technisch funktionsfähig ist?',
        'In der Vergangenheit kam es zu Fehlfunktionen des DAKS, die KoordEL sollte sich vergewissern, dass die Alarmierung einwandfrei erfolgte, z.B. durch einen DAKS Ausdruck oder per telefonischer Rückmeldung. Ggf. Ergänzung Uhrzeit der Kontrolle',
        NULL
    ),
    (
        '4',
        NULL,
        0,
        'Welche Kompensationsmaßnahmen werden durch den MedEL/KoordEL angeordnet?',
        'Falls die Kontrolle durch den MedEL/KoordEL ergibt, dass das Alarmierungssystem nicht funktionsfähig ist.',
        NULL
    ),
    (
        '5',
        NULL,
        1,
        'Legt die MedEL/KoordEL eine Alarmierungsstufe für das Krankenhaus fest?',
        NULL,
        NULL
    ),
    (
        '6',
        NULL,
        0,
        'Findet eine Aufgabenverteilung durch die MedEL/KoordEL statt?',
        'Oft wird davon ausgegangen, dass die einzelnen Funktionen „schon wissen, was sie zu tun haben“. In der Praxis ist dies jedoch tatsächlich selten der Fall, so dass eine Aufgabenverteilung beispielsweise in einem Teammeeting durch den Verantwortlichen erforderlich wird.',
        NULL
    ),
    (
        '7',
        NULL,
        0,
        'Werden die Funktionen LARS und ZONK eingerichtet?',
        'LARS – Leitender Arzt / Ärztin der Sichtung; ZONK – Zentraler Operativer Notfall Koordinator / Koordniatorin',
        NULL
    ),
    (
        '8',
        NULL,
        1,
        'Was sind die ersten Entscheidungen?',
        NULL,
        NULL
    ),
    (
        '9',
        NULL,
        0,
        'Informiert sich MedEL/KoordEL über die Einsatzbereitschaft der folgenden Funktionsbereiche?',
        'Die MedEL oder KoordEL sollte sich über die, nach der Alarmierung hergestellte Einsatzbereitschaft informieren und ggf. Kompensationsmaßnahmen einleiten. Diese Informationen sollte der MedEL oder KoordEL nach der Alarmierung regelmäßig (alle 15min) im Verlauf der Übung erfragen.',
        NULL
    ),
    (
        '10',
        NULL,
        2,
        'Informiert sich die MedEL/KoordEL ständig über die Auslastung der Behandlungsbereiche, oder übernimmt das der ZONK?',
        '["KoordEL", "Zonk"]',
        NULL
    ),
    (
        '11',
        NULL,
        2,
        'Führt oder hat die MedEL/KoordEL eine Übersicht über diese Auslastung, oder übernimmt das der ZONK? Wenn eine Übersicht geführt wird, wie sieht diese aus?',
        '["KoordEL", "Zonk"]',
        NULL
    ),
    (
        '12',
        NULL,
        0,
        'Wird das alarmierte Personal zielgerichtet durch die MedEL/KoordEL eingesetzt?',
        '„Zielgerichtet“ ist es dann, wenn die eintreffenden Kräfte genutzt werden, um fehlendes Personal in allen Funktions- und Behandlungsbereichen einzusetzen.',
        NULL
    ),
    (
        '13',
        NULL,
        0,
        'Ist die Versorgung der Echtpatienten sichergestellt?',
        'Die Weiterführung der Patientenversorgung ist zu gewährleisten. Bei einer Katastrophenschutzübung hat die Versorgung von "Echtpatienten“ höchste Priorität. Was passiert mit den Echtpatienten? Ambulant (z.B. Entlassungsmanagement) oder stationär? Bitte erfragen!]',
        NULL
    ),
    (
        '14',
        NULL,
        1,
        'Wie kommunizieren der MedEL/KoordEL und ZONK, wenn die Funktion eingerichtet wurde, miteinander?',
        NULL,
        NULL
    ),
    (
        '15',
        NULL,
        1,
        'Ist der ZONK gekennzeichnet? Wenn ja wie.',
        NULL,
        NULL
    ),
    (
        '16',
        NULL,
        1,
        'Wie kommunizieren der MedEL/KoordEL und LARS, wenn die Funktion eingerichtet wurde,  miteinander?',
        NULL,
        NULL
    ),
    (
        '17',
        NULL,
        1,
        'Ist der LARS gekennzeichnet? Wenn ja wie?',
        NULL,
        NULL
    ),
    (
        '18',
        NULL,
        0,
        'Findet eine Übergabe der MedEL/KoordEL an die KEL mit den folgenden Inhalten statt?',
        'Die MedEL/KoordEL muss Teile der Verantwortung nach der ersten Chaosphase an die KEL abgeben und hierbei einen Informationsverlust verhindern. Die KEL sollte die Aufgaben der MedEL/KoordEL nach der Übergabe fortführen können. Bitte die Inhalte der Übergabe notieren.',
        NULL
    ),
    (
        '19',
        NULL,
        0,
        'Falls eine Übergabe mit den wesentlichen Informationen erfolgte: Welche Aufgaben übernimmt die MedEL/KoordEL nach Übergabe der Verantwortung an die KEL?',
        'Die KoordEL ist für die Interaktion zwischen Sichtungsplatz, KEL, Angehörigenbetreuung und Mitarbeiterregistrierung zuständig.',
        NULL
    ),
    (
        '20',
        NULL,
        0,
        'Falls eine Übergabe mit den wesentlichen Informationen nicht erfolgte: Verändern sich die Aufgaben der MedEL/KoordEL nach Indienststellung der KEL?',
        'Auch, wenn keine Übergabe an die KEL stattfindet, so kann die KEL der MedEL/KoordEL dennoch Aufgaben abnehmen. Erfolgt eine Veränderung im Sinne einer Entlastung der MedEL?]',
        NULL
    ),
    (
        '21',
        NULL,
        0,
        'Kommuniziert der MedEL/KoordEL mit der KEL?',
        'Der MedEL/KoordEL bleibt auch nach Übergabe der Verantwortung an die KEL Mitglied dieser und koordiniert mit der KEL die Anforderungen aus der Notaufnahme und den Behandlungsbereichen.',
        NULL
    );

INSERT INTO
    `bereich_enthaelt_frage` (`beobachtungsbereich_id`, `frage_id`)
VALUES
    ('2', '1'),
    ('2', '2'),
    ('2', '3'),
    ('2', '4'),
    ('2', '5'),
    ('2', '6'),
    ('2', '7'),
    ('2', '8'),
    ('2', '9'),
    ('2', '10'),
    ('2', '11'),
    ('2', '12'),
    ('2', '13'),
    ('2', '14'),
    ('2', '15'),
    ('2', '16'),
    ('2', '17'),
    ('2', '18'),
    ('2', '19'),
    ('2', '20'),
    ('2', '21');


INSERT INTO
    `beobachter` (`beobachter_id`, `vorname`, `name`, `rolle`)
VALUES
    ('1', 'Hendrik', 'Kaden', 'Beobachter'),
    ('2', 'Regine', 'Barnett', 'Beobachter'),
    ('3', 'Chantal', 'Plenzdorf', 'Beobachter'),
    ('4', 'Margret', 'Hofbauer', 'Beobachter'),
    ('5', 'Eberhart', 'Erichsen', 'Beobachter');

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
    ('1', '1'),
    ('1', '2'),
    ('1', '3'),
    ('1', '4'),
    ('1', '5');

INSERT INTO
    `beobachter_hat_bereich` (
        `beobachter_id`,
        `beobachtungsbereich_id`,
        `uebung_id`
    )
VALUES
    ('1', '2', '1'),
    ('2', '2', '1'),
    ('3', '2', '1'),
    ('4', '2', '1'),
    ('5', '2', '1');

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
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '1'
    ),
    (
        '2',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '1'
    ),
    (
        '3',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '1'
    ),
    (
        '4',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '1'
    ),
    (
        '5',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '1'
    ),
    (
        '6',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '1'
    ),
    (
        '7',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '1'
    ),
    (
        '8',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '1'
    ),
    (
        '9',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '1'
    ),
    (
        '10',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '1'
    ),
    (
        '11',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '1'
    ),
    (
        '12',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '1'
    ),
    (
        '13',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '1'
    ),
    (
        '14',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '1'
    ),
    (
        '15',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '1'
    ),
    (
        '16',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '1'
    ),
    (
        '17',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '1'
    ),
    (
        '18',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '1'
    ),
    (
        '19',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '1'
    ),
    (
        '20',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '1'
    ),
    (
        '21',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '1'
    ),
    (
        '1',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '2'
    ),
    (
        '2',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '2'
    ),
    (
        '3',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '2'
    ),
    (
        '4',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '2'
    ),
    (
        '5',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '2'
    ),
    (
        '6',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '2'
    ),
    (
        '7',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '2'
    ),
    (
        '8',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '2'
    ),
    (
        '9',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '2'
    ),
    (
        '10',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '2'
    ),
    (
        '11',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '2'
    ),
    (
        '12',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '2'
    ),
    (
        '13',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '2'
    ),
    (
        '14',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '2'
    ),
    (
        '15',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '2'
    ),
    (
        '16',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '2'
    ),
    (
        '17',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '2'
    ),
    (
        '18',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '2'
    ),
    (
        '19',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '2'
    ),
    (
        '20',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '2'
    ),
    (
        '21',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '2'
    ),
    (
        '1',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '3'
    ),
    (
        '2',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '3'
    ),
    (
        '3',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '3'
    ),
    (
        '4',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '3'
    ),
    (
        '5',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '3'
    ),
    (
        '6',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '3'
    ),
    (
        '7',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '3'
    ),
    (
        '8',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '3'
    ),
    (
        '9',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '3'
    ),
    (
        '10',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '3'
    ),
    (
        '11',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '3'
    ),
    (
        '12',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '3'
    ),
    (
        '13',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '3'
    ),
    (
        '14',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '3'
    ),
    (
        '15',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '3'
    ),
    (
        '16',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '3'
    ),
    (
        '17',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '3'
    ),
    (
        '18',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '3'
    ),
    (
        '19',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '3'
    ),
    (
        '20',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '3'
    ),
    (
        '21',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '3'
    ),
    (
        '1',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '4'
    ),
    (
        '2',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '4'
    ),
    (
        '3',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '4'
    ),
    (
        '4',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '4'
    ),
    (
        '5',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '4'
    ),
    (
        '6',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '4'
    ),
    (
        '7',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '4'
    ),
    (
        '8',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '4'
    ),
    (
        '9',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '4'
    ),
    (
        '10',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '4'
    ),
    (
        '11',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '4'
    ),
    (
        '12',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '4'
    ),
    (
        '13',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '4'
    ),
    (
        '14',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '4'
    ),
    (
        '15',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '4'
    ),
    (
        '16',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '4'
    ),
    (
        '17',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '4'
    ),
    (
        '18',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '4'
    ),
    (
        '19',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '4'
    ),
    (
        '20',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '4'
    ),
    (
        '21',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '4'
    ),
    (
        '1',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '5'
    ),
    (
        '2',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '5'
    ),
    (
        '3',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '5'
    ),
    (
        '4',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '5'
    ),
    (
        '5',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '5'
    ),
    (
        '6',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '5'
    ),
    (
        '7',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '5'
    ),
    (
        '8',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '5'
    ),
    (
        '9',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '5'
    ),
    (
        '10',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '5'
    ),
    (
        '11',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '5'
    ),
    (
        '12',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '5'
    ),
    (
        '13',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '5'
    ),
    (
        '14',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '5'
    ),
    (
        '15',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '5'
    ),
    (
        '16',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '5'
    ),
    (
        '17',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '5'
    ),
    (
        '18',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '5'
    ),
    (
        '19',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '5'
    ),
    (
        '20',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '5'
    ),
    (
        '21',
        '1',
        '2',
        NULL,
        NULL,
        NULL,
        '2023-07-16 13:39:45.000000',
        '2023-07-16 13:39:45.000000',
        '5'
    );