EXTEND_BOTTOM ~%tutu_var%NALIN~ 1
IF~Global("CDGnollQuest","GLOBAL",4) Global("CDGnollQuestNalin","GLOBAL",0)~THEN REPLY @10040 EXTERN ~%tutu_var%NALIN~ CD.FIGHTER.01
END

CHAIN IF WEIGHT #-1 ~Global("MetBrage","GLOBAL",1) !PartyHasItem("%tutu_var%MISC65") Global("CDGnollQuest","GLOBAL",4) Global("CDGnollQuestNalin","GLOBAL",0)~ THEN ~%tutu_var%NALIN~ CD.FIGHTER.00
@10041
END
IF~~THEN REPLY @10042 DO ~StartStore("%tutu_var%Tem4802",LastTalkedToBy(Myself))~ EXIT
IF~~THEN REPLY @10040 EXTERN ~%tutu_var%NALIN~ CD.FIGHTER.01
IF~~THEN REPLY @10043 EXIT

CHAIN ~%tutu_var%NALIN~ CD.FIGHTER.01
@10044
END
IF~~THEN REPLY @10045 EXTERN ~%tutu_var%NALIN~ CD.FIGHTER.02
IF~~THEN REPLY @10046 EXTERN ~%tutu_var%NALIN~ CD.FIGHTER.02

CHAIN ~%tutu_var%NALIN~ CD.FIGHTER.02
@10047
==~%tutu_var%NALIN~ @10048
DO ~GiveItemCreate("CD51SUP",Player1,1,0,0)  SetGlobal("CDGnollQuestNalin","GLOBAL",1) EraseJournalEntry(@10181) AddJournalEntry(@10182,QUEST)~ EXIT

