CHAIN IF WEIGHT #-1 ~Global("C0ElgeaReward","GLOBAL",1)~ THEN WELTHER a1
~Greetings, friend. Might I have a moment of your time?~
END
++ ~What is it?~ + a1.1
++ ~Make it quick.~ + a1.1

CHAIN WELTHER a1.1
~I bring regards from Lady Elgea, whom you rescued from those wretched kidnappers days ago. She has asked me to personally deliver these to you.~
= ~It was originally agreed for us to exchange it as ransom for the lady's freedom, but since that is no longer necessary, and as you are still owed a reward for your actions, she feels it is appropriate that you take it instead.~
END
++ ~It will do. Thank you.~ + a1.2
++ ~I'll find a use for these... somehow.~ + a1.2

CHAIN WELTHER a1.2
~Farewell. Good fortune to you.~
DO ~GiveItem("MISC5O",Player1)
EscapeArea()~ EXIT

BEGIN C0DMALTR

CHAIN IF WEIGHT #-1 ~True()~ THEN C0DMALTR a1
~An inscription on the demonic statue reads: 
Place an animal sacrifice before great Demogorgon, and awaken his children from their long sleep.~
END
+ ~!Alignment(Lasttalkedtoby(Myself),MASK_EVIL)
OR(2)
Class(Lasttalkedtoby(Myself),PALADIN)
Class(Lasttalkedtoby(Myself),CLERIC_ALL)~ + ~Utter a sanctifying prayer upon the altar.~ + a1.1
++ ~Strike the altar.~ DO ~ActionOverride(Player1,ApplyDamage(Myself,50,MAGIC))
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
++ ~Leave.~ EXIT

CHAIN C0DMALTR a1.1
~You sense the rage of several demonic presences in response to your desecration of the unholy altar...~
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