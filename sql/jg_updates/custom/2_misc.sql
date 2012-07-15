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

-- Fixs Solace of the Defeated and Solace of the Fallen
DELETE FROM `spell_proc_event` WHERE entry=67698;
DELETE FROM `spell_proc_event` WHERE entry=67752;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES (67698, 0, 0, 0, 0, 0, 0, 65536, 0, 0, 1);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES (67752, 0, 0, 0, 0, 0, 0, 65536, 0, 0, 1);

-- Fix shadowfiend
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_pri_shadowfiend';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(34433,'spell_pri_shadowfiend');

-- Fix Lifebloom
DELETE FROM spell_bonus_data WHERE entry IN (33763,33778,48450,48451);
INSERT INTO spell_bonus_data (entry, direct_bonus, dot_bonus, ap_bonus, ap_dot_bonus, comments) VALUES
(33778, 0.516, 0, 0, 0, 'Druid - Lifebloom final heal'),
(33763, 0, 0.0952, 0, 0, 'Druid - Lifebloom HoT(rank 1)'),
(48450, 0, 0.0952, 0, 0, 'Druid - Lifebloom HoT(rank 2)'),
(48451, 0, 0.0952, 0, 0, 'Druid - Lifebloom HoT(rank 3)');

-- Fix Improved Healthstone
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(6262,  0, 0, 0, 0, 'Warlock - HS - Minor Healthstone (with 0/2 Improved Healthstone)'),
(23468, 0, 0, 0, 0, 'Warlock - HS - Minor Healthstone (with 1/2 Improved Healthstone)'),
(23469, 0, 0, 0, 0, 'Warlock - HS - Minor Healthstone (with 2/2 Improved Healthstone)'),
(6263,  0, 0, 0, 0, 'Warlock - HS - Lesser Healthstone (with 0/2 Improved Healthstone)'),
(23470, 0, 0, 0, 0, 'Warlock - HS - Lesser Healthstone (with 1/2 Improved Healthstone)'),
(23471, 0, 0, 0, 0, 'Warlock - HS - Lesser Healthstone (with 2/2 Improved Healthstone)'),
(5720,  0, 0, 0, 0, 'Warlock - HS - Healthstone (with 0/2 Improved Healthstone)'),
(23472, 0, 0, 0, 0, 'Warlock - HS - Healthstone (with 1/2 Improved Healthstone)'),
(23473, 0, 0, 0, 0, 'Warlock - HS - Healthstone (with 2/2 Improved Healthstone)'),
(5723,  0, 0, 0, 0, 'Warlock - HS - Greater Healthstone (with 0/2 Improved Healthstone)'),
(23474, 0, 0, 0, 0, 'Warlock - HS - Greater Healthstone (with 1/2 Improved Healthstone)'),
(23475, 0, 0, 0, 0, 'Warlock - HS - Greater Healthstone (with 2/2 Improved Healthstone)'),
(11732, 0, 0, 0, 0, 'Warlock - HS - Major Healthstone (with 0/2 Improved Healthstone)'),
(23476, 0, 0, 0, 0, 'Warlock - HS - Major Healthstone (with 1/2 Improved Healthstone)'),
(23477, 0, 0, 0, 0, 'Warlock - HS - Major Healthstone (with 2/2 Improved Healthstone)'),
(27235, 0, 0, 0, 0, 'Warlock - HS - Master Healthstone (with 0/2 Improved Healthstone)'),
(27236, 0, 0, 0, 0, 'Warlock - HS - Master Healthstone (with 1/2 Improved Healthstone)'),
(27237, 0, 0, 0, 0, 'Warlock - HS - Master Healthstone (with 2/2 Improved Healthstone)'),
(47874, 0, 0, 0, 0, 'Warlock - HS - Demonic Healthstone (with 0/2 Improved Healthstone)'),
(47873, 0, 0, 0, 0, 'Warlock - HS - Demonic Healthstone (with 1/2 Improved Healthstone)'),
(47872, 0, 0, 0, 0, 'Warlock - HS - Demonic Healthstone (with 2/2 Improved Healthstone)'),
(47875, 0, 0, 0, 0, 'Warlock - HS - Fel Healthstone (with 0/2 Improved Healthstone)'),
(47876, 0, 0, 0, 0, 'Warlock - HS - Fel Healthstone (with 1/2 Improved Healthstone)'),
(47877, 0, 0, 0, 0, 'Warlock - HS - Fel Healthstone (with 2/2 Improved Healthstone)');

INSERT INTO `spell_ranks`(first_spell_id, spell_id, rank) VALUES (60955, 60955, 1),(60955, 60956, 2);
