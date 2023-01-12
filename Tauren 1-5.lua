
--------------------------------------------------

--- Just setting up some useful vars
Player = GetPlayer();
----- Stupid Profile made by Stupid man
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
Hunt = {};
Hunt[1] = 2955;
Hunt2 = {};
Hunt2[1] = 4740;
Hunt = CreateObjective("KillMobsAndLoot",1,7,1,747,TableToList(Hunt));
Hunt2 = CreateObjective("KillMobsAndLoot",2,7,2,747,TableToList(Hunt2));

Continues = {};
Continues[1] = 2961;
Continues = CreateObjective("KillMobsAndLoot",1,10,1,750,TableToList(Continues));

Snout = {};
Snout[1] = 2954;
Snout[2] = 2966;
Snout = CreateObjective("KillMobsAndLoot",1,8,2,780,TableToList(Snout));

Flank = {};
Flank[1] = 2954;
Flank[2] = 2966;
Flank = CreateObjective("KillMobsAndLoot",2,8,2,780,TableToList(Flank));

Chief = {};
Chief[1] = 8554;
Chief = CreateObjective("KillMobsAndLoot",1,1,1,3376,TableToList(Chief)); 

Pitcher = {};
Pitcher[1] = 2907;
Pitcher = CreateObjective("GatherObject",1,1,1,753,nil,TableToList(Pitcher));

Belts ={};
Belts[1] = 2952
Belts[2] = 2953;
Belts = CreateObjective("KillMobsAndLoot",1,8,1,757,TableToList(Belts)); 

------------------------------------------





AcceptQuestFrom(2980,747); -- Hunt Begins
DoObjective(Hunt);
DoObjective(Hunt2);
if CanTurnInQuest(747) then
	QuestGoToPoint(-2962.631,-348.7745,54.79979);

TurnInQuestAt(2980,747); -- Hunt Begins
end

AcceptQuestFrom(2980,750); -- Hunt Continues
AcceptQuestFrom(2981,752); -- A Humble Task

DoObjective(Continues);
if CanTurnInQuest(750) then
	QuestGoToPoint(-2962.631,-348.7745,54.79979);

TurnInQuestAt(2980,750); -- Hunt Continues
end

AcceptQuestFrom(2980,780);-- Battleboars
DoObjective(Snout);
DoObjective(Flank);


if CanTurnInQuest(780) then
	QuestGoToPoint(-2962.631,-348.7745,54.79979);

TurnInQuestAt(2980,780); -- Battleboars
end

AcceptQuestFrom(3209,3376); --Sharptusk
if CanTurnInQuest(3376) == false then
if (HasPlayerFinishedQuest(3376) == false)  then

QuestGoToPoint(-2942.219,-1273.413,72.20467);

DoObjective(Chief);

end
end

if CanTurnInQuest(3376) then
	QuestGoToPoint(-2962.631,-348.7745,54.79979);
	QuestGoToPoint(-2952.006,-330.1503,55.35962);
TurnInQuestAt(3209,3376); -- Sharptusk
end

TurnInQuestAt(2991,752); -- A Humble Task 1
AcceptQuestFrom(2991,753);--a-humble-task 2
DoObjective(Pitcher);
TurnInQuestAt(2981,753);--a-humble-task 2

AcceptQuestFrom(2981,755); -- rites of earthmother
AcceptQuestFrom(6775,1656); --a-task-unfinished
TurnInQuestAt(2982,755); -- rites of earthmother
AcceptQuestFrom(2982,757); --Rite of Streng
DoObjective(Belts);
TurnInQuestAt(2981,757); --Rite of Streng
AcceptQuestFrom(2981,763); --Rites of the Earthmother

TurnInQuestAt(2993,763) --rites-of-the-earthmother
TurnInQuestAt(6747,1656); --a-task-unfinished


StopQuestProfile();