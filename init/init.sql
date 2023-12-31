CREATE DATABASE IF NOT EXISTS krankenhaus_uebung;

USE krankenhaus_uebung;

CREATE TABLE antwort (
    frage_id               INTEGER NOT NULL,
    uebung_id              INTEGER NOT NULL,
    beobachtungsbereich_id INTEGER NOT NULL,
    antworttext            TEXT,
    notizen                TEXT,
    media                  LONGBLOB,
    erstellt               DATETIME NOT NULL,
    zuletzt_bearbeitet     DATETIME NOT NULL,
    beobachter_id          INTEGER NOT NULL
);

ALTER TABLE antwort
    ADD CONSTRAINT antwort_pk PRIMARY KEY ( beobachtungsbereich_id,
                                            frage_id,
                                            uebung_id );

CREATE TABLE bemerkung (
    bemerkung_id INTEGER NOT NULL,
    uhrzeit      DATETIME,
    `KH-Bereich` NVARCHAR(100),
    beobachtung  TEXT
);

ALTER TABLE bemerkung ADD CONSTRAINT bemerkungen_pk PRIMARY KEY ( bemerkung_id );

CREATE TABLE beobachter (
    beobachter_id INTEGER NOT NULL,
    vorname       TEXT NOT NULL,
    name          TEXT NOT NULL,
    rolle         TEXT
);

ALTER TABLE beobachter ADD CONSTRAINT beobachter_pk PRIMARY KEY ( beobachter_id );

CREATE TABLE beobachter_hat_bereich (
    beobachter_id          INTEGER NOT NULL,
    beobachtungsbereich_id INTEGER NOT NULL,
    uebung_id              INTEGER NOT NULL
);

ALTER TABLE beobachter_hat_bereich
    ADD CONSTRAINT beobachter_hat_bereich_pk PRIMARY KEY ( beobachter_id,
                                                           beobachtungsbereich_id,
                                                           uebung_id );

CREATE TABLE beobachtungsbereich (
    beobachtungsbereich_id INTEGER NOT NULL,
    bezeichnung            TEXT NOT NULL
);

ALTER TABLE beobachtungsbereich ADD CONSTRAINT beobachtungsbereich_pk PRIMARY KEY ( beobachtungsbereich_id );

CREATE TABLE bereich_enthaelt_frage (
    beobachtungsbereich_id INTEGER NOT NULL,
    frage_id               INTEGER NOT NULL
);

ALTER TABLE bereich_enthaelt_frage ADD CONSTRAINT bereich_enthaelt_frage_pk PRIMARY KEY ( beobachtungsbereich_id,
                                                                                          frage_id );

CREATE TABLE `Eingesetztes_OP-Team` (
    `OP-Team_ID`  INTEGER NOT NULL,
    name          TEXT,
    fachdisziplin NVARCHAR(100),
    uhrzeit_von   DATETIME,
    uhrzeit_bis   DATETIME
);

ALTER TABLE `Eingesetztes_OP-Team` ADD CONSTRAINT `Eingesetztes_OP-Team_PK` PRIMARY KEY ( `OP-Team_ID` );

CREATE TABLE erwartete_handlung (
    handlung_id    INTEGER NOT NULL,
    behandlungsort NVARCHAR(100),
    befund         NVARCHAR(100),
    ausfuehrung    TEXT,
    uhrzeit_von    DATETIME,
    uhrzeit_bis    DATETIME
);

ALTER TABLE erwartete_handlung ADD CONSTRAINT erwartete_handlung_pk PRIMARY KEY ( handlung_id );

CREATE TABLE frage (
    frage_id       INTEGER NOT NULL,
    rang           INTEGER,
    fragenart      INTEGER,
    fragetext      TEXT NOT NULL,
    antwortentwurf TEXT,
    subfrage_id    INTEGER
);

ALTER TABLE frage ADD CONSTRAINT frage_pk PRIMARY KEY ( frage_id );

CREATE TABLE fragebogen (
    fragebogen_id  INTEGER NOT NULL,
    bezeichnung    TEXT NOT NULL,
    krankenhaus_id INTEGER NOT NULL
);

ALTER TABLE fragebogen ADD CONSTRAINT fragebogen_pk PRIMARY KEY ( fragebogen_id );

CREATE TABLE fragebogen_besitzt_bereich (
    fragebogen_id          INTEGER NOT NULL,
    beobachtungsbereich_id INTEGER NOT NULL
);

ALTER TABLE fragebogen_besitzt_bereich ADD CONSTRAINT fragebogen_besitzt_bereich_pk PRIMARY KEY ( fragebogen_id,
                                                                                                  beobachtungsbereich_id );

CREATE TABLE krankenhaus (
    krankenhaus_id INTEGER NOT NULL,
    name           TEXT NOT NULL,
    adresse        TEXT NOT NULL
);

ALTER TABLE krankenhaus ADD CONSTRAINT krankenhaus_pk PRIMARY KEY ( krankenhaus_id );

CREATE TABLE patient (
    button_nr          VARCHAR(4) NOT NULL,
    sichtungskategorie DECIMAL(38),
    diagnose           TEXT,
    blickdiagnose      TEXT,
    befund             TEXT,
    symptome           TEXT,
    vp_gcs             DECIMAL(38),
    vp_spo2            DECIMAL(38),
    vp_rekap           DECIMAL(38),
    vp_af              DECIMAL(38),
    vp_sysrr           DECIMAL(38),
    vp_ekg             TEXT,
    vp_hb              INTEGER
);

ALTER TABLE patient ADD CONSTRAINT patient_pk PRIMARY KEY ( button_nr );

CREATE TABLE uebung (
    uebung_id              INTEGER NOT NULL,
    `Start`                DATETIME NOT NULL,
    ende                   DATETIME NOT NULL,
    betten_gesamt          INTEGER NOT NULL,
    betten_akut            INTEGER NOT NULL,
    intensivbetten         INTEGER NOT NULL,
    betten_unfall          INTEGER NOT NULL,
    ops                    INTEGER NOT NULL,
    `ITS-Beatmungsgeraete` INTEGER NOT NULL,
    fragebogen_id          INTEGER NOT NULL
);

CREATE UNIQUE INDEX uebung__idx ON
    uebung (
        fragebogen_id
    ASC );

ALTER TABLE uebung ADD CONSTRAINT uebung_pk PRIMARY KEY ( uebung_id );

CREATE TABLE uebung_hat_beobachter (
    uebung_id     INTEGER NOT NULL,
    beobachter_id INTEGER NOT NULL
);

ALTER TABLE uebung_hat_beobachter ADD CONSTRAINT uebung_hat_beobachter_pk PRIMARY KEY ( uebung_id,
                                                                                        beobachter_id );

CREATE TABLE uebung_hat_patient (
    up_id          INTEGER NOT NULL,
    uebung_id      INTEGER NOT NULL,
    button_nr      VARCHAR(4) NOT NULL,
    `Patienten-Nr` VARCHAR(20) NOT NULL,
    diagnose       TEXT
);

ALTER TABLE uebung_hat_patient ADD CONSTRAINT uebung_hat_patient_pk PRIMARY KEY ( up_id );

CREATE TABLE up_bemerkung (
    up_id        INTEGER NOT NULL,
    bemerkung_id INTEGER NOT NULL
);

ALTER TABLE up_bemerkung ADD CONSTRAINT up_bemerkung_pk PRIMARY KEY ( up_id,
                                                                      bemerkung_id );

CREATE TABLE up_handlung (
    up_id       INTEGER NOT NULL,
    handlung_id INTEGER NOT NULL
);

ALTER TABLE up_handlung ADD CONSTRAINT up_handlung_pk PRIMARY KEY ( up_id,
                                                                    handlung_id );

CREATE TABLE `UP_OP-Team` (
    up_id        INTEGER NOT NULL,
    `OP-Team_ID` INTEGER NOT NULL
);

ALTER TABLE `UP_OP-Team` ADD CONSTRAINT `UP_OP-Team_PK` PRIMARY KEY ( up_id,
                                                                      `OP-Team_ID` );

ALTER TABLE antwort
    ADD CONSTRAINT antwort_beobachter_fk FOREIGN KEY ( beobachter_id )
        REFERENCES beobachter ( beobachter_id );

ALTER TABLE antwort
    ADD CONSTRAINT antwort_beobachtungsbereich_fk FOREIGN KEY ( beobachtungsbereich_id )
        REFERENCES beobachtungsbereich ( beobachtungsbereich_id );

ALTER TABLE antwort
    ADD CONSTRAINT antwort_frage_fk FOREIGN KEY ( frage_id )
        REFERENCES frage ( frage_id );

ALTER TABLE antwort
    ADD CONSTRAINT antwort_uebung_fk FOREIGN KEY ( uebung_id )
        REFERENCES uebung ( uebung_id );

ALTER TABLE beobachter_hat_bereich
    ADD CONSTRAINT beobachter_hat_bereich_beobachter_fk FOREIGN KEY ( beobachter_id )
        REFERENCES beobachter ( beobachter_id );

ALTER TABLE beobachter_hat_bereich
    ADD CONSTRAINT beobachter_hat_bereich_beobachtungsbereich_fk FOREIGN KEY ( beobachtungsbereich_id )
        REFERENCES beobachtungsbereich ( beobachtungsbereich_id );

ALTER TABLE beobachter_hat_bereich
    ADD CONSTRAINT beobachter_hat_bereich_uebung_fk FOREIGN KEY ( uebung_id )
        REFERENCES uebung ( uebung_id );

ALTER TABLE bereich_enthaelt_frage
    ADD CONSTRAINT bereich_enthaelt_frage_beobachtungsbereich_fk FOREIGN KEY ( beobachtungsbereich_id )
        REFERENCES beobachtungsbereich ( beobachtungsbereich_id );

ALTER TABLE bereich_enthaelt_frage
    ADD CONSTRAINT bereich_enthaelt_frage_frage_fk FOREIGN KEY ( frage_id )
        REFERENCES frage ( frage_id );

ALTER TABLE frage
    ADD CONSTRAINT frage_frage_fk FOREIGN KEY ( subfrage_id )
        REFERENCES frage ( frage_id );
 
ALTER TABLE fragebogen_besitzt_bereich
    ADD CONSTRAINT fragebogen_besitzt_bereich_beobachtungsbereich_fk FOREIGN KEY ( beobachtungsbereich_id )
        REFERENCES beobachtungsbereich ( beobachtungsbereich_id );

ALTER TABLE fragebogen_besitzt_bereich
    ADD CONSTRAINT fragebogen_besitzt_bereich_fragebogen_fk FOREIGN KEY ( fragebogen_id )
        REFERENCES fragebogen ( fragebogen_id );

ALTER TABLE fragebogen
    ADD CONSTRAINT fragebogen_krankenhaus_fk FOREIGN KEY ( krankenhaus_id )
        REFERENCES krankenhaus ( krankenhaus_id );

ALTER TABLE uebung
    ADD CONSTRAINT uebung_fragebogen_fk FOREIGN KEY ( fragebogen_id )
        REFERENCES fragebogen ( fragebogen_id );

ALTER TABLE uebung_hat_beobachter
    ADD CONSTRAINT uebung_hat_beobachter_beobachter_fk FOREIGN KEY ( beobachter_id )
        REFERENCES beobachter ( beobachter_id );
 
ALTER TABLE uebung_hat_beobachter
    ADD CONSTRAINT uebung_hat_beobachter_uebung_fk FOREIGN KEY ( uebung_id )
        REFERENCES uebung ( uebung_id );

ALTER TABLE uebung_hat_patient
    ADD CONSTRAINT uebung_hat_patient_patient_fk FOREIGN KEY ( button_nr )
        REFERENCES patient ( button_nr );

ALTER TABLE uebung_hat_patient
    ADD CONSTRAINT uebung_hat_patient_uebung_fk FOREIGN KEY ( uebung_id )
        REFERENCES uebung ( uebung_id );

ALTER TABLE up_bemerkung
    ADD CONSTRAINT up_bemerkung_bemerkung_fk FOREIGN KEY ( bemerkung_id )
        REFERENCES bemerkung ( bemerkung_id );

ALTER TABLE up_bemerkung
    ADD CONSTRAINT up_bemerkung_uebung_hat_patient_fk FOREIGN KEY ( up_id )
        REFERENCES uebung_hat_patient ( up_id );

ALTER TABLE up_handlung
    ADD CONSTRAINT up_handlung_erwartete_handlung_fk FOREIGN KEY ( handlung_id )
        REFERENCES erwartete_handlung ( handlung_id );

ALTER TABLE up_handlung
    ADD CONSTRAINT up_handlung_uebung_hat_patient_fk FOREIGN KEY ( up_id )
        REFERENCES uebung_hat_patient ( up_id );

ALTER TABLE `UP_OP-Team`
    ADD CONSTRAINT `UP_OP-Team_Eingesetztes_OP-Team_FK` FOREIGN KEY ( `OP-Team_ID` )
        REFERENCES `Eingesetztes_OP-Team` ( `OP-Team_ID` );

ALTER TABLE `UP_OP-Team`
    ADD CONSTRAINT `UP_OP-Team_Uebung_hat_Patient_FK` FOREIGN KEY ( up_id )
        REFERENCES uebung_hat_patient ( up_id );
