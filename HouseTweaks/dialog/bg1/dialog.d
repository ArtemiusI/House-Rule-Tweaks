I_C_T VAI 6 c0VAI
== VAI @0
DO ~CreateCreature("c0zelas",[685.470],S)
ActionOverride("c0zelas",MoveToPoint([662.891]))~
END

EXTEND_TOP BRAGE 4
++ @1 EXTERN BRAGE brage1
++ @2 DO ~DestroyItem("SW2H01")
GiveItem("SW2H03",LastTalkedToBy)
GiveItem("POTN12",LastTalkedToBy)
AddexperienceParty(1000)
ReputationInc(1)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("Bragecut",FALSE)~ EXIT
END

CHAIN BRAGE brage1
@3
DO ~SetGlobal("c0bragewait","GLOBAL",1)~
EXIT

CHAIN IF WEIGHT #-1
~Global("c0bragewait","GLOBAL",1)~ THEN BRAGE brage2
@4
END
++ @5 DO ~DestroyItem("SW2H01")
GiveItem("SW2H03",LastTalkedToBy)
GiveItem("POTN12",LastTalkedToBy)
AddexperienceParty(1000)
ReputationInc(1)
SetGlobal("c0bragewait","GLOBAL",2)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("Bragecut",FALSE)~ EXIT
++ @6 EXIT

BEGIN C0ZELAS

IF ~NumTimesTalkedTo(0)~ THEN BEGIN a1
SAY @7
+ ~PartyHasItem("MISC86")~ + @8 DO ~StartStore("STOVAI2",LastTalkedToBy(Myself))~ EXIT
++ @9 EXIT
END

IF ~!NumTimesTalkedTo(0)~ THEN BEGIN a2
SAY @10
+ ~PartyHasItem("MISC86")~ + @8 DO ~StartStore("STOVAI2",LastTalkedToBy(Myself))~ EXIT
++ @11 EXIT
END

IF WEIGHT #-1 ~ReputationLT(LastTalkedToBy,5)~ THEN BEGIN a3
SAY @12
IF ~~ DO ~Enemy()~ EXIT
END
