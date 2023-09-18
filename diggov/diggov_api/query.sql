SELECT
    `antwort_filtered`.*,
    `antwort`.`antworttext`,
    `antwort`.`notizen`,
    `antwort`.`media`,
    `antwort`.`erstellt`,
    `antwort`.`zuletzt_bearbeitet`
FROM
    `antwort`
    RIGHT JOIN (
        SELECT
            `frage_deep_filtered`.*,
            `frage`.`rang`,
            `frage`.`fragenart`,
            `frage`.`fragetext`,
            `frage`.`antwortentwurf`,
            `frage`.`subfrage_id`
        FROM
            `frage`
            RIGHT JOIN (
                SELECT
                    `frage_filtered`.*,
                    `bereich_enthaelt_frage`.`frage_id`
                FROM
                    `bereich_enthaelt_frage`
                    RIGHT JOIN (
                        SELECT
                            `beobachter_filtered`.*,
                            `uebung_hat_beobachter`.`beobachter_id`
                        FROM
                            `uebung_hat_beobachter`
                            RIGHT JOIN (
                                SELECT
                                    `uebung_id`,
                                    `beobachtungsbereich_id`
                                FROM
                                    `fragebogen_besitzt_bereich`
                                    RIGHT JOIN (
                                        SELECT
                                            `fragebogen_id`,
                                            `uebung_id`
                                        FROM
                                            `uebung`
                                        WHERE
                                            `uebung_id` = {0}
                                    ) AS `uebung_filtered` ON `uebung_filtered`.`fragebogen_id` = `fragebogen_besitzt_bereich`.`fragebogen_id`
                            ) AS `beobachter_filtered` ON `beobachter_filtered`.`uebung_id` = `uebung_hat_beobachter`.`uebung_id`
                            WHERE `beobachter_id` = {1}) AS `frage_filtered` ON `frage_filtered`.`beobachtungsbereich_id` = `bereich_enthaelt_frage`.`beobachtungsbereich_id`
            ) AS `frage_deep_filtered` ON `frage_deep_filtered`.`frage_id` = `frage`.`frage_id`
    ) AS `antwort_filtered` ON (
        `antwort_filtered`.`frage_id` = `antwort`.`frage_id`
        AND `antwort_filtered`.`uebung_id` = `antwort`.`uebung_id`
        AND `antwort_filtered`.`beobachtungsbereich_id` = `antwort`.`beobachtungsbereich_id`
        AND `antwort_filtered`.`beobachter_id` = `antwort`.`beobachter_id`
    )