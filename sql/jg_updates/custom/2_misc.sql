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
