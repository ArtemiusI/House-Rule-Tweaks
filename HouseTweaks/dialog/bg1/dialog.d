I_C_T VAI 6 c0VAI
== VAI ~If you still wish to turn in bandit scalps, you may speak with Officer Zelas. He will be assigned to Beregost in my stead.~
DO ~CreateCreature("c0zelas",[685.470],S)
ActionOverride("c0zelas",MoveToPoint([662.891]))~
END

EXTEND_TOP BRAGE 4
++ ~Remain here, Brage. We shall return to Nashkel once I am prepared.~ EXTERN BRAGE brage1
++ ~Then let's go immediately.~ DO ~DestroyItem("SW2H01")
GiveItem("SW2H03",LastTalkedToBy)
GiveItem("POTN12",LastTalkedToBy)
AddexperienceParty(1000)
ReputationInc(1)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("Bragecut",FALSE)~ EXIT
END

CHAIN BRAGE brage1
~Tarry not, I beg of you. I can hardly bear the shame of my actions for another moment.~
DO ~SetGlobal("c0bragewait","GLOBAL",1)~
EXIT

CHAIN IF WEIGHT #-1
~Global("c0bragewait","GLOBAL",1)~ THEN BRAGE brage2
~Are we to return to Nashkel? Please, please! I must face justice for my actions with whatever honor I have left, and I can wait no longer!~
END
++ ~Yes, let's go immediately.~ DO ~DestroyItem("SW2H01")
GiveItem("SW2H03",LastTalkedToBy)
GiveItem("POTN12",LastTalkedToBy)
AddexperienceParty(1000)
ReputationInc(1)
SetGlobal("c0bragewait","GLOBAL",2)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("Bragecut",FALSE)~ EXIT
++ ~Not yet.~ EXIT

BEGIN C0ZELAS

IF ~NumTimesTalkedTo(0)~ THEN BEGIN a1
SAY ~Greetings, <CHARNAME>. Officer Vai has spoken highly of your character, and I am to take over her duties here in Beregost. If you wish to exchange any more bandit scalps in the future, speak to me.~
+ ~PartyHasItem("MISC86")~ + ~I have bandit scalps to turn in.~ DO ~StartStore("STOVAI2",LastTalkedToBy(Myself))~ EXIT
++ ~Farewell.~ EXIT
END

IF ~!NumTimesTalkedTo(0)~ THEN BEGIN a2
SAY ~Good <DAYNIGHT> to you, <CHARNAME>. Do you need anything?~
+ ~PartyHasItem("MISC86")~ + ~I have bandit scalps to turn in.~ DO ~StartStore("STOVAI2",LastTalkedToBy(Myself))~ EXIT
++ ~Not at the moment.~ EXIT
END

IF WEIGHT #-1 ~ReputationLT(LastTalkedToBy,5)~ THEN BEGIN a3
SAY ~You have some nerve showing your face around here. Your reputation precedes you, <CHARNAME>. In the name of the Flaming Fist, you are sentenced to death!~
IF ~~ DO ~Enemy()~ EXIT
END
