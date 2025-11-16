EXTEND_TOP SHTHLT01 143
+ ~Global("TalkedToJoster","GLOBAL",1)
Global("C0ThiefStrongholdQuota","GLOBAL",0)~ + ~I wanted to talk to you about our regular quota.~ DO ~SetGlobal("C0ThiefStrongholdQuota","GLOBAL",1)~ + QUOTA
+ ~Global("C0ThiefStrongholdQuota","GLOBAL",1)~ + ~I wanted to talk to you about our regular quota.~ + QUOTA-2
END

CHAIN SHTHLT01 QUOTA
~A rather inconvenient obligation, is it not? Still, it is our duty to Renal, and so there is no avoiding it, I fear.~
END
  ++ ~I'm more than willing to pay, but I have to travel regularly, and there's always a chance I may not make it back in time to meet the quartermaster. Is there some way I can arrange for the quota to be paid without me being present?~ + QUOTA-1

CHAIN SHTHLT01 QUOTA-1
~Well... if you feel you can trust me with the matter, I suppose you could leave me with a share of gold in advance, and should you not return in time for your quota, I can pay the quartermaster in your stead.~
EXTERN SHTHLT01 QUOTA-2

CHAIN SHTHLT01 QUOTA-2
~Give me however much gold you feel is appropriate for safekeeping, and I will ensure that your quota is paid even if you are not present. How much gold should I keep?~
END
  ++ ~1,000 gold.~ DO ~TakePartyGold(1000) DestroyGold(1000) IncrementGlobal("C0ThiefStrongholdQuotaStorage","GLOBAL",1000)~ + QUOTA-3
  ++ ~2,000 gold.~ DO ~TakePartyGold(2000) DestroyGold(2000) IncrementGlobal("C0ThiefStrongholdQuotaStorage","GLOBAL",2000)~ + QUOTA-3
  ++ ~3,000 gold.~ DO ~TakePartyGold(3000) DestroyGold(3000) IncrementGlobal("C0ThiefStrongholdQuotaStorage","GLOBAL",3000)~ + QUOTA-3
  ++ ~4,000 gold.~ DO ~TakePartyGold(4000) DestroyGold(4000) IncrementGlobal("C0ThiefStrongholdQuotaStorage","GLOBAL",4000)~ + QUOTA-3
  ++ ~5,000 gold.~ DO ~TakePartyGold(5000) DestroyGold(5000) IncrementGlobal("C0ThiefStrongholdQuotaStorage","GLOBAL",5000)~ + QUOTA-3
  ++ ~Actually, I don't need to leave you any gold for now.~ + QUOTA-4

CHAIN SHTHLT01 QUOTA-3
~Very well. I will ensure this gold is kept safe and ready for the quartermaster, should it be needed.~
EXIT

CHAIN SHTHLT01 QUOTA-4
~As you wish.~
EXIT