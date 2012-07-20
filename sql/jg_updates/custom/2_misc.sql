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

-- Fix Halion Portal
UPDATE `gameobject_template` SET flags = 32, faction = 35, ScriptName="go_halion_portal" WHERE `entry` IN (202794, 202796);
UPDATE `gameobject_template` SET `data10`=74807, `WDBVerified`=-12340 WHERE `entry`=202794;

-- Fix Trauma
DELETE FROM `spell_proc_event` WHERE `entry` IN (71865,71868);
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`CoolDown`) VALUES (71865, 0, 0, 0, 0, 0, 0, procEx|131072, 0, 0, 0); -- Trauma normal
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`CoolDown`) VALUES (71868, 0, 0, 0, 0, 0, 0, procEx|131072, 0, 0, 0); -- Trauma heroic

-- Fix Blackheart the Inciter (http://old.wowhead.com/npc=18667)
INSERT INTO `main_world_trinity`.`disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
('0', '33676', '7', '', '', 'Blackheart the Inciter - Incite Chaos'), ('0', '33684', '7', '', '', 'Blackheart the Inciter - Incite Chaos b');

-- Fix Druid - Lifebloom's
DELETE FROM spell_bonus_data WHERE entry = 33778;
DELETE FROM spell_bonus_data WHERE entry = 33763;
DELETE FROM spell_bonus_data WHERE entry = 48450;
DELETE FROM spell_bonus_data WHERE entry = 48451;
INSERT INTO spell_bonus_data (entry, direct_bonus, dot_bonus, ap_bonus, ap_dot_bonus, comment) VALUES
(33778, 0, 0, 0, 0, 'Druid - Lifebloom's bloom'),
(33763, 0.516, 0.0952, 0, 0, 'Druid - Lifebloom Rank 1'),
(48450, 0.516, 0.0952, 0, 0, 'Druid - Lifebloom Rank 2'), 
(48451, 0.516, 0.0952, 0, 0, 'Druid - Lifebloom Rank 3');

-- Priest: Shadowfiend, http://old.wowhead.com/spell=34433
DELETE FROM `spell_proc_event` WHERE `entry` = 28305;
INSERT INTO `spell_proc_event` VALUES (28305, 0, 0, 0, 0, 0, 0, 65536, 0, 0, 0);
-- Move Shadowfiend's Mana Leech Aura from spellscript to creature addon.
DELETE FROM `spell_script_names` WHERE `ScriptName`= 'spell_pri_shadowfiend';
UPDATE `creature_template_addon` SET `auras`= '28305' WHERE `entry`=19668;

-- Fix not using Shadowstep while rooted.
DELETE FROM `spell_script_names` WHERE `spell_id`=36554;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(36554,'spell_rog_shadowstep');
