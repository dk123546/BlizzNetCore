-- Bladestorm immune to Thunderstorm!
INSERT INTO spell_linked_spell (spell_trigger, spell_effect, type, comment) VALUES
(46924, -51490, 2, "Bladestorm immune to Thunderstorm Rank 1"),
(46924, -59156, 2, "Bladestorm immune to Thunderstorm Rank 2"),
(46924, -59158, 2, "Bladestorm immune to Thunderstorm Rank 3"),
(46924, -59159, 2, "Bladestorm immune to Thunderstorm Rank 4");

-- Spirit of Redemption removes Divine Sacrafice and Spirit of Redemption immune to Divine Sacrafice!
INSERT INTO spell_linked_spell (spell_trigger, spell_effect, type, comment) VALUES
(20711, -19752, 0, "Spirit of Redemption removes Divine Sacrafice"),
(20711, -19753, 0, "Spirit of Redemption removes Divine Sacrafice"),
(20711, -19752, 2, "Spirit of Redemption immune to Divine Sacrafice"),
(20711, -19753, 2, "Spirit of Redemption immune to Divine Sacrafice");
