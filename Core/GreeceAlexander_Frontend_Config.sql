--==========================================================================================================================
-- CONFIG DATA
--==========================================================================================================================
-- Players
-------------------------------------	
INSERT INTO "Players" VALUES ('Players:StandardPlayers','CIVILIZATION_GREECE','LEADER_ALEXANDER_GREECE','LOC_LEADER_ALEXANDER_GREECE_NAME','ICON_LEADER_ALEXANDER','LOC_CIVILIZATION_GREECE_NAME','ICON_CIVILIZATION_GREECE_GORGO','LOC_TRAIT_LEADER_TO_WORLDS_END_NAME','LOC_TRAIT_LEADER_TO_WORLDS_END_DESCRIPTION','ICON_LEADER_ALEXANDER','LOC_TRAIT_CIVILIZATION_PLATOS_REPUBLIC_NAME','LOC_TRAIT_CIVILIZATION_PLATOS_REPUBLIC_DESCRIPTION','ICON_CIVILIZATION_GREECE','LEADER_ALEXANDER_NEUTRAL','LEADER_ALEXANDER_BACKGROUND',NULL,1,NULL);
INSERT INTO "Players" VALUES ('Players:Expansion1_Players','CIVILIZATION_GREECE','LEADER_ALEXANDER_GREECE','LOC_LEADER_ALEXANDER_GREECE_NAME','ICON_LEADER_ALEXANDER','LOC_CIVILIZATION_GREECE_NAME','ICON_CIVILIZATION_GREECE_GORGO','LOC_TRAIT_LEADER_TO_WORLDS_END_NAME','LOC_TRAIT_LEADER_TO_WORLDS_END_DESCRIPTION','ICON_LEADER_ALEXANDER','LOC_TRAIT_CIVILIZATION_PLATOS_REPUBLIC_NAME','LOC_TRAIT_CIVILIZATION_PLATOS_REPUBLIC_DESCRIPTION','ICON_CIVILIZATION_GREECE','LEADER_ALEXANDER_NEUTRAL','LEADER_ALEXANDER_BACKGROUND',NULL,1,NULL);
INSERT INTO "Players" VALUES ('Players:Expansion2_Players','CIVILIZATION_GREECE','LEADER_ALEXANDER_GREECE','LOC_LEADER_ALEXANDER_GREECE_NAME','ICON_LEADER_ALEXANDER','LOC_CIVILIZATION_GREECE_NAME','ICON_CIVILIZATION_GREECE_GORGO','LOC_TRAIT_LEADER_TO_WORLDS_END_NAME','LOC_TRAIT_LEADER_TO_WORLDS_END_DESCRIPTION','ICON_LEADER_ALEXANDER','LOC_TRAIT_CIVILIZATION_PLATOS_REPUBLIC_NAME','LOC_TRAIT_CIVILIZATION_PLATOS_REPUBLIC_DESCRIPTION','ICON_CIVILIZATION_GREECE','LEADER_ALEXANDER_NEUTRAL','LEADER_ALEXANDER_BACKGROUND',NULL,1,NULL);



-------------------------------------
-- PlayerItems
-------------------------------------	
INSERT INTO PlayerItems ("Domain", "CivilizationType", "LeaderType", "Type", "Name", "Description", "Icon", "SortIndex") VALUES ('Players:StandardPlayers', 'CIVILIZATION_GREECE', 'LEADER_ALEXANDER_GREECE', 'UNIT_MACEDONIAN_HETAIROI', 'LOC_UNIT_MACEDONIAN_HETAIROI_NAME', 'LOC_UNIT_MACEDONIAN_HETAIROI_DESCRIPTION', 'ICON_UNIT_MACEDONIAN_HETAIROI', '30');
INSERT INTO PlayerItems ("Domain", "CivilizationType", "LeaderType", "Type", "Name", "Description", "Icon", "SortIndex") VALUES ('Players:Expansion1_Players', 'CIVILIZATION_GREECE', 'LEADER_ALEXANDER_GREECE', 'UNIT_MACEDONIAN_HETAIROI', 'LOC_UNIT_MACEDONIAN_HETAIROI_NAME', 'LOC_UNIT_MACEDONIAN_HETAIROI_DESCRIPTION', 'ICON_UNIT_MACEDONIAN_HETAIROI', '30');
INSERT INTO PlayerItems ("Domain", "CivilizationType", "LeaderType", "Type", "Name", "Description", "Icon", "SortIndex") VALUES ('Players:Expansion2_Players', 'CIVILIZATION_GREECE', 'LEADER_ALEXANDER_GREECE', 'UNIT_MACEDONIAN_HETAIROI', 'LOC_UNIT_MACEDONIAN_HETAIROI_NAME', 'LOC_UNIT_MACEDONIAN_HETAIROI_DESCRIPTION', 'ICON_UNIT_MACEDONIAN_HETAIROI', '30');

INSERT OR REPLACE INTO PlayerItems	
		(CivilizationType,			Domain,	LeaderType,				Type, Icon, Name, Description, SortIndex)
SELECT	'CIVILIZATION_GREECE',		Domain,	'LEADER_ALEXANDER_GREECE',	Type, Icon, Name, Description, SortIndex
FROM PlayerItems WHERE CivilizationType = 'CIVILIZATION_GREECE' AND LeaderType= 'LEADER_GORGO';


-- Author: bcursor
-- DateCreated: 
--------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------
-- Duplicate Leaders
--------------------------------------------------------------------------------------------------------------------------


INSERT INTO "DuplicateLeaders" VALUES ('Players:StandardPlayers','LEADER_ALEXANDER','LEADER_ALEXANDER_GREECE');
INSERT INTO "DuplicateLeaders" VALUES ('Players:Expansion1_Players','LEADER_ALEXANDER','LEADER_ALEXANDER_GREECE');
INSERT INTO "DuplicateLeaders" VALUES ('Players:Expansion2_Players','LEADER_ALEXANDER','LEADER_ALEXANDER_GREECE');