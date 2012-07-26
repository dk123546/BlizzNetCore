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
INSERT INTO spell_bonus_data (entry, direct_bonus, dot_bonus, ap_bonus, ap_dot_bonus, comments) VALUES
(33778, 0, 0, 0, 0, 'Druid - Lifeblooms bloom'),
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

-- ICC: Lich King fix Wicked Spirit
DELETE FROM `creature` WHERE `id` = 39190;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`MovementType`) VALUES
('xxx',39190,631,12,1,505.1563,-2536.863,1069.598,0,10,10,1), -- Wicked Spirit
('xxx',39190,631,12,1,502.6493,-2531.328,1069.598,0,10,10,1), -- Wicked Spirit
('xxx',39190,631,12,1,503.8246,-2508.141,1069.598,0,10,10,1), -- Wicked Spirit
('xxx',39190,631,12,1,495.3629,-2538.215,1069.598,0,10,10,1), -- Wicked Spirit
('xxx',39190,631,12,1,506.8715,-2515.552,1069.598,0,10,10,1), -- Wicked Spirit
('xxx',39190,631,12,1,481.3021,-2509.222,1069.598,0,10,10,1), -- Wicked Spirit
('xxx',39190,631,12,1,481.5382,-2527.332,1069.598,0,10,10,1), -- Wicked Spirit
('xxx',39190,631,12,1,500.0807,-2523.289,1069.598,0,10,10,1), -- Wicked Spirit
('xxx',39190,631,12,1,486.6632,-2517.747,1069.598,0,10,10,1), -- Wicked Spirit
('xxx',39190,631,12,1,513.8802,-2511.795,1069.596,0,10,10,1), -- Wicked Spirit
('xxx',39190,631,12,1,499.6406,-2500.783,1069.656,0,10,10,1), -- Wicked Spirit
('xxx',39190,631,12,1,513.7101,-2530.931,1069.596,0,10,10,1), -- Wicked Spirit
('xxx',39190,631,12,1,502.6811,-2522.542,1069.598,0,10,10,1), -- Wicked Spirit
('xxx',39190,631,12,1,518.7483,-2521.240,1069.596,0,10,10,1), -- Wicked Spirit
('xxx',39190,631,12,1,478.9774,-2517.446,1069.598,0,10,10,1), -- Wicked Spirit
('xxx',39190,631,12,1,489.0104,-2538.535,1069.598,0,10,10,1), -- Wicked Spirit
('xxx',39190,631,12,1,511.6320,-2522.373,1069.598,0,10,10,1), -- Wicked Spirit
('xxx',39190,631,12,1,500.8976,-2527.198,1069.598,0,10,10,1), -- Wicked Spirit
('xxx',39190,631,12,1,484.7934,-2533.592,1069.598,0,10,10,1), -- Wicked Spirit
('xxx',39190,631,12,1,490.4132,-2504.323,1069.598,0,10,10,1), -- Wicked Spirit
('xxx',39190,631,12,1,485.0298,-2527.724,1069.598,0,10,10,1), -- Wicked Spirit
('xxx',39190,631,12,1,494.2899,-2511.384,1069.598,0,10,10,1), -- Wicked Spirit
('xxx',39190,631,12,1,491.7170,-2532.490,1069.598,0,10,10,1); -- Wicked Spirit

-- Fixes double healing from Death Strike.
DELETE FROM `spell_script_names` WHERE `spell_id` = -66188;

-- Elemental focus(shaman talent) correct proc.
DELETE FROM spell_proc_event WHERE entry = 16164;
INSERT INTO spell_proc_event (entry, SchoolMask, SpellFamilyName, SpellFamilyMask0, SpellFamilyMask1, SpellFamilyMask2, procFlags, procEx, ppmRate, CustomChance, Cooldown) VALUES (16164, 0, 11, 2416967683, 4096, 0, 0, 2, 0, 0, 0);

-- Fix Dancing Rune Weapon.
INSERT INTO `spell_proc_event` (entry, procFlags) VALUES
('49028','69652');

-- Fix Sindragosa.
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_sindragosa_ice_tomb_dummy';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(69712,'spell_sindragosa_ice_tomb_dummy');

DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_sindragosa_mystic_buffet';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(70127,'spell_sindragosa_mystic_buffet'),
(72528,'spell_sindragosa_mystic_buffet'),
(72529,'spell_sindragosa_mystic_buffet'),
(72530,'spell_sindragosa_mystic_buffet');

UPDATE `creature_template` SET `modelid1` = 25455, `modelid2` = 0, `unit_flags` = 33555202, `flags_extra` = 129, `ScriptName` = 'npc_sindragosas_ward' WHERE `entry` = 37503;
DELETE FROM `creature` WHERE `id` = 37503;
INSERT INTO `creature` (id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType, npcflag, unit_flags, dynamicflags) VALUES
(37503, 631, 15, 1, 0, 0, 4181.54, 2551.65, 211.033, 4.72777, 604800, 0, 0, 27890000, 8516000, 0, 0, 0, 0);
UPDATE `gameobject` SET `state` = 0 WHERE `id` = 201373;
DELETE FROM `areatrigger_scripts` WHERE `entry` = 5623;
INSERT INTO `areatrigger_scripts` (entry, ScriptName) VALUES
(5623, 'at_icc_start_sindragosa_gauntlet');
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `exp` = 2, `faction_A` = 21, `faction_H` = 21, `mechanic_immune_mask` = 8388624 WHERE `entry` IN (37228, 37229, 37232, 37501, 37502, 38197, 38198, 38362, 38134, 38137);
UPDATE `creature_template` SET `mindmg` = 422, `maxdmg` = 586, `attackpower` = 642, `dmg_multiplier` = 7.5, `minrangedmg` = 345, `maxrangedmg` = 509, `rangedattackpower` = 103 WHERE `entry` IN (37228, 37229);
UPDATE `creature_template` SET `mindmg` = 422, `maxdmg` = 586, `attackpower` = 642, `dmg_multiplier` = 13, `lootid` = 100002, `minrangedmg` = 345, `maxrangedmg` = 509, `rangedattackpower` = 103 WHERE `entry` IN (38134, 38137);
UPDATE `creature_template` SET `dmg_multiplier` = 2 WHERE `entry` = 38362;
UPDATE `creature_template` SET `difficulty_entry_1` = 38134 WHERE `entry` = 37228;
UPDATE `creature_template` SET `difficulty_entry_1` = 38137 WHERE `entry` = 37229;
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (37228, 37229, 37501, 37502);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (37228, 37229, 37501, 37502) AND `source_type` = 0;
INSERT INTO `smart_scripts` (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
-- Frostwarden Warrior: 37228 / 38134
(37228, 0, 0, 0, 0, 0, 100, 30, 5000, 15000, 10000, 25000, 11, 71323, 3, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Frostwarden Warrior - Cast Frostblade'),
(37228, 0, 1, 0, 6, 0, 100, 30, 0, 0, 0, 0, 11, 71203, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Frostwarden Warrior - Cast Soul Feast On Death'),
-- Frostwarden Sorceress: 37229 / 38137
(37229, 0, 0, 0, 0, 0, 100, 20, 15000, 20000, 20000, 25000, 11, 71331, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Frostwarden Sorceress - Cast Ice Tomb (25 man only)'),
(37229, 0, 1, 0, 0, 0, 100, 30, 10000, 15000, 10000, 20000, 11, 71320, 3, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Frostwarden Sorceress - Cast Frost Nova'),
(37229, 0, 2, 0, 0, 0, 100, 30, 3000, 5000, 3000, 4000, 11, 71318, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Frostwarden Sorceress - Cast Frostbolt'),
(37229, 0, 3, 0, 6, 0, 100, 30, 0, 0, 0, 0, 11, 71203, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Frostwarden Sorceress - Cast Soul Feast On Death'),
-- Nerub'ar Champion: 37501 / 38197
(37501, 0, 0, 0, 0, 0, 100, 30, 3000, 5000, 10000, 15000, 11, 71801, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Nerub\'ar Champion - Cast Rush'),
(37501, 0, 1, 0, 6, 0, 100, 30, 0, 0, 0, 0, 11, 71203, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Nerub\'ar Champion - Cast Soul Feast On Death'),
-- Nerub'ar Webweaver: 37502 / 38198
(37502, 0, 0, 0, 0, 0, 100, 30, 3000, 5000, 10000, 15000, 11, 71326, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Nerub\'ar Webweaver - Cast Crypt Scarabs'),
(37502, 0, 1, 0, 0, 0, 100, 30, 10000, 15000, 10000, 20000, 11, 71327, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Nerub\'ar Webweaver - Cast Web'),
(37502, 0, 2, 0, 6, 0, 100, 30, 0, 0, 0, 0, 11, 71203, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Nerub\'ar Webweaver - Cast Soul Feast On Death');
