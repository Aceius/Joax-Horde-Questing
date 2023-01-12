
--------------------------------------------------

--- Just setting up some useful vars
Player = GetPlayer();
----- Stupid Profile made by Stupid Person aka Joax
--------------------------------------------------



------------------------------------------
-- Attempt to use hearthstone !
function UseHearthStone()
UseItem("Hearthstone");
 SleepPlugin(500);
	while(Player.IsChanneling or Player.IsCasting) do
	SleepPlugin(100);
	end;

	while(InGame == false) do
	SleepPlugin(100);
	end;
end;
------------------------------------------

Wyrm = {};
Wyrm[1] = 15274;
Wyrm = CreateObjective("KillMobs",1,8,1,8325,TableToList(Wyrm));

Lynx = {};
Lynx[1] = 15366;
Lynx = CreateObjective("KillMobsAndLoot",1,8,1,8326,TableToList(Lynx)); 

Silvers = {};
Silvers[1] = 15274;
Silvers = CreateObjective("KillMobsAndLoot",1,6,1,8336,TableToList(Silvers));  

Belongings1 = {};
Belongings1[1] = 180510;
Belongings2 = {};
Belongings2[1] = 180511;
Belongings3 = {};
Belongings3[1] = 180512;

Belongings1 = CreateObjective("GatherObject",1,1,3,8330,nil,TableToList(Belongings1));
Belongings2 = CreateObjective("GatherObject",2,1,3,8330,nil,TableToList(Belongings2));
Belongings3 = CreateObjective("GatherObject",3,1,3,8330,nil,TableToList(Belongings3));

Shrine = {};
Shrine[1] = 180516;
Shrine = CreateObjective("GatherObject",1,1,1,8345,nil,TableToList(Shrine));

Agression1 = {};
Agression1[1] = 15271;
Agression1 = CreateObjective("KillMobs",1,7,2,8334,TableToList(Agression1));
Agression2 = {};
Agression2[1] = 15294;
Agression2 = CreateObjective("KillMobs",2,7,2,8334,TableToList(Agression2));

Felendren1 = {};
Felendren1[1] = 15273;
Felendren1 = CreateObjective("KillMobs",1,8,3,8335,TableToList(Felendren1)); 
Felendren2 = {};
Felendren2[1] = 15298;
Felendren2 = CreateObjective("KillMobs",2,2,3,8335,TableToList(Felendren2)); 
Felendren3 = {};
Felendren3[1] = 15367;
Felendren3 = CreateObjective("KillMobsAndLoot",3,1,3,8335,TableToList(Felendren3)); 
-------------------------------------------


AcceptQuestFrom(15278,8325); --reclaiming-sunstrider-isle
DoObjective(Wyrm);

if CanTurnInQuest(8325) then
	QuestGoToPoint(10357.44,-6363.365,35.02383)
end
TurnInQuestAt(15278,8325); --reclaiming-sunstrider-isle

AcceptQuestFrom(15278,8326); --unfortunate-measures
DoObjective(Lynx);
if CanTurnInQuest(8326) then
	QuestGoToPoint(10357.44,-6363.365,35.02383)
end
TurnInQuestAt(15278,8326); --unfortunate-measures

AcceptQuestFrom(15278,8327); -- Report to Lanthan
AcceptQuestFrom(15295,8345); -- Shrine of Dath
AcceptQuestFrom(15295,8330); -- Solanian Belongings
AcceptQuestFrom(15296,8336); -- Fistful of Silvers
AcceptQuestFrom(15297,8346); -- Thirst Unending

if (HasPlayerFinishedQuest(8345) == false)  then


	QuestGoToPoint(10404.58,-5947.499,41.30299);

end;
DoObjective(Shrine);

DoObjective(Silvers);
DoObjective(Belongings1);
DoObjective(Belongings2);
DoObjective(Belongings3);




TurnInQuestAt(15295,8345); -- Shrine of Dath
TurnInQuestAt(15295,8330); -- Solanian Belongings
if CanTurnInQuest(8336) then
	QuestGoToPoint(10407.76,-6371.642,35.64128);
end
TurnInQuestAt(15296,8336); -- Fistful of Silvers

TurnInQuestAt(15281,8327); -- Report to Lanthan

AcceptQuestFrom(15281,8334); -- Agression
DoObjective(Agression1);
DoObjective(Agression2);
TurnInQuestAt(15281,8334); -- Agression

AcceptQuestFrom(15281,8335); --felendren-the-banished
DoObjective(Felendren1);
DoObjective(Felendren2);
DoObjective(Felendren3);
if CanTurnInQuest(8335) then
	QuestGoToPoint(10192.3,-5921.873,57.46289);
	QuestGoToPoint(10310.9,-6243.081,28.01551);
end
TurnInQuestAt(15281,8335); --felendren-the-banished
AcceptQuestFrom(15281,8347); --aiding-the-outrunners

if CanTurnInQuest(8347) then
	QuestGoToPoint(10105.53,-6307.314,11.79582);
	QuestGoToPoint(9987.498,-6474.038,0.9635663);
end
TurnInQuestAt(15301,8347); --aiding-the-outrunners

AcceptQuestFrom(15301,9704); --slain-by-the-wretched
if CanTurnInQuest(9704) then
	QuestGoToPoint(9939.396,-6518.774,8.642385);
end

TurnInQuestAt(17849,9704); --slain-by-the-wretched
AcceptQuestFrom(17894,9705); --package-recovery
if CanTurnInQuest(9705) then
	QuestGoToPoint(9939.396,-6518.774,8.642385);
end
TurnInQuestAt(15301,9705); --package-recovery
AcceptQuestFrom(15301,8350); --long-forgotten-memories
if CanTurnInQuest(8350) then
	QuestGoToPoint(9475.471,-6855.853,17.43426);
end
TurnInQuestAt(15433,8350); --long-forgotten-memories

StopQuestProfile();
