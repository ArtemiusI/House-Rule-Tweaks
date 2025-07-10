CHAIN IF WEIGHT #-1 ~Global("C0ElgeaReward","GLOBAL",1)~ THEN WELTHER a1
@13
END
++ @14 + a1.1
++ @15 + a1.1

CHAIN WELTHER a1.1
@16
= @17
END
++ @18 + a1.2
++ @19 + a1.2

CHAIN WELTHER a1.2
@20
DO ~GiveItem("MISC5O",Player1)
EscapeArea()~ EXIT

EXTEND_TOP GORCAMB 54
++ @21 EXTERN GORCAMB AES-DECK
++ @9 DO ~AddXP2DA("PLOT2B")
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("cut203a",FALSE)~ EXIT
END

CHAIN GORCAMB AES-DECK
@22
= @23
= @24
END
++ @25 DO ~ReallyForceSpell(LastTalkedToBy,DECK_XP_DRAIN)~ EXTERN GORCAMB AES-DECK-ACCEPTED
++ @26 DO ~ReallyForceSpell(LastTalkedToBy,DECK_VITALITY_DRAIN)~ EXTERN GORCAMB AES-DECK-ACCEPTED
++ @27 EXTERN GORCAMB AES-DECK-REFUSED
++ @28 EXTERN GORCAMB 55

CHAIN GORCAMB AES-DECK-ACCEPTED
@29
DO ~GiveItem("deck",LastTalkedToBy)~
= @30
COPY_TRANS GORCAMB 54

CHAIN GORCAMB AES-DECK-REFUSED
@31
DO ~GiveItem("deck",LastTalkedToBy)~
= @30
COPY_TRANS GORCAMB 54

BEGIN C0DMALTR

CHAIN IF WEIGHT #-1 ~True()~ THEN C0DMALTR a1
@32
END
+ ~!Alignment(Lasttalkedtoby(Myself),MASK_EVIL)
OR(2)
Class(Lasttalkedtoby(Myself),PALADIN)
Class(Lasttalkedtoby(Myself),CLERIC_ALL)~ + @33 + a1.1
++ @34 DO ~ActionOverride(Player1,ApplyDamage(Myself,50,MAGIC))
ActionOverride(Player1,ApplySpell(Myself,WIZARD_ENERGY_DRAIN))
ActionOverride(Player2,ApplyDamage(Myself,50,MAGIC))
ActionOverride(Player2,ApplySpell(Myself,WIZARD_ENERGY_DRAIN))
ActionOverride(Player3,ApplyDamage(Myself,50,MAGIC))
ActionOverride(Player3,ApplySpell(Myself,WIZARD_ENERGY_DRAIN))
ActionOverride(Player4,ApplyDamage(Myself,50,MAGIC))
ActionOverride(Player4,ApplySpell(Myself,WIZARD_ENERGY_DRAIN))
ActionOverride(Player5,ApplyDamage(Myself,50,MAGIC))
ActionOverride(Player5,ApplySpell(Myself,WIZARD_ENERGY_DRAIN))
ActionOverride(Player6,ApplyDamage(Myself,50,MAGIC))
ActionOverride(Player6,ApplySpell(Myself,WIZARD_ENERGY_DRAIN))~ + a1.1
++ @35 EXIT

CHAIN C0DMALTR a1.1
@36
DO ~StartCutsceneMode()
	ReallyForceSpell(LastTrigger,RED_EFFECT)
    CreateVisualEffect("SPPORTAL",[2724.1143])
    CreateVisualEffect("SPPORTAL",[3280.1348])
    CreateVisualEffect("SPPORTAL",[2929.1562])
    CreateVisualEffect("SPPORTAL",[3071.1172])
    CreateVisualEffect("SPPORTAL",[3094.1695])
    Wait(3)
    CreateCreature("uddeath",[2929.1562],E)
    CreateCreature("uddeath",[2724.1143],E)
    CreateCreature("uddeath",[3280.1348],E)
    CreateCreature("uddeath2",[3071.1172],E)
    CreateCreature("uddeath",[3094.1695],E)
	SetGlobal("spawnKnights","AR2402",1)
	EndCutsceneMode()~ EXIT