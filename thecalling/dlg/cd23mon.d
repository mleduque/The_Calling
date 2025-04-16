BEGIN CD23MON
BEGIN CD23ROG
BEGIN CD23BAN

//Talk 1 (Outside Friendly Arm Inn)

CHAIN IF ~Global("CDMonkCalling","GLOBAL",1)~ THEN CD23MON 01.00
@70017
END
IF~~THEN REPLY @70018 EXTERN CD23MON 01.01
IF~~THEN REPLY @70019 EXTERN CD23MON 01.01
IF~~THEN REPLY @70020 EXTERN CD23MON 01.02

CHAIN CD23MON 01.01
@70021
EXTERN CD23MON 01.03

CHAIN CD23MON 01.02
@70022
EXTERN CD23MON 01.03

CHAIN CD23MON 01.03
@70023
END
IF~~THEN REPLY @70024 EXTERN CD23MON 01.03b
IF~~THEN REPLY @70025 EXTERN CD23MON 01.04

CHAIN CD23MON 01.03b
@70026
==CD23MON @70027
==%AJANTIS_JOINED% IF ~InParty("AJANTIS") !StateCheck("AJANTIS",CD_STATE_NOTVALID)~ THEN @70028
==%SHARTEEL_JOINED% IF ~InParty("SHARTEEL") !StateCheck("SHARTEEL",CD_STATE_NOTVALID)~ THEN @70029 
==%CORAN_JOINED% IF ~InParty("CORAN") !StateCheck("CORAN",CD_STATE_NOTVALID)~ THEN @70030
==%KHALID_JOINED% IF ~InParty("KHALID") !StateCheck("KHALID",CD_STATE_NOTVALID)~ THEN @70031
==%SAFANA_JOINED% IF ~InParty("SAFANA") !StateCheck("SAFANA",CD_STATE_NOTVALID)~ THEN  @70032
==CD23MON @70033
==CD23MON @70034 
END
IF~~THEN REPLY @70035 EXTERN CD23MON 01.05
IF~~THEN REPLY @70036 EXTERN CD23MON 01.05
IF~~THEN REPLY @70037 EXTERN CD23MON 01.04

CHAIN CD23MON 01.05
@70038 = @70219
==CD23MON @70039
==%BRANWEN_JOINED% IF ~InParty("BRANWEN") !StateCheck("BRANWEN",CD_STATE_NOTVALID)~ THEN @70040
==%SKIE_JOINED% IF ~InParty("SKIE") !StateCheck("SKIE",CD_STATE_NOTVALID)~ THEN @70041
==%TIAX_JOINED% IF ~InParty("TIAX") !StateCheck("TIAX",CD_STATE_NOTVALID)~ THEN @70042
==%XAN_JOINED% IF ~InParty("XAN") !StateCheck("XAN",CD_STATE_NOTVALID)~ THEN @70043
==CD23MON @70044
END
IF~~THEN REPLY @70045 EXTERN CD23MON 01.06
IF~~THEN REPLY @70046 EXTERN CD23MON 01.07
IF~~THEN REPLY @70047 EXTERN CD23MON 01.04

CHAIN CD23MON 01.06
@70048 
EXTERN CD23MON 01.08

CHAIN CD23MON 01.07
@70049 
EXTERN CD23MON 01.08

CHAIN CD23MON 01.08
@70050
==%KAGAIN_JOINED% IF ~InParty("KAGAIN") !StateCheck("KAGAIN",CD_STATE_NOTVALID)~ THEN @70051
==CD23MON @70052
END
IF~~THEN REPLY @70053 EXTERN CD23MON 01.09
IF~~THEN REPLY @70054 EXTERN CD23MON 01.04

CHAIN CD23MON 01.09
@70055
==CD23MON @70056
==CD23MON @70057
==CD23MON @70058
DO ~SetGlobal("CDMonkCalling","GLOBAL",2) AddJournalEntry(@70203,QUEST) EscapeArea()~ EXIT

CHAIN CD23MON 01.04
@70059
DO ~SetGlobal("CDMonkCalling","GLOBAL",-1) AddJournalEntry(@70202,QUEST_DONE) EscapeArea()~ EXIT

//Talk 2 (The Temple)

CHAIN IF ~Global("CDMonkCalling","GLOBAL",3)~ THEN CD23MON 02.00
@70060
==%DYNAHEIR_JOINED% IF ~InParty("DYNAHEIR") !StateCheck("DYNAHEIR",CD_STATE_NOTVALID)~ THEN @70061
==%ALORA_JOINED% IF ~InParty("ALORA") !StateCheck("ALORA",CD_STATE_NOTVALID)~ THEN @70062
==%XZAR_JOINED% IF ~InParty("XZAR") !StateCheck("XZAR",CD_STATE_NOTVALID)~ THEN @70063
==%IMOEN_JOINED% IF ~InParty("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @70064
==CD23MON @70065
==%tutu_var%gellan @70066
==CD23MON @70067
==%tutu_var%gellan @70068
==%tutu_var%gellan @70069
==CD23MON @70070
END
IF~~THEN REPLY @70071 EXTERN CD23MON 02.01
IF~~THEN REPLY @70072 EXTERN CD23MON 02.01

CHAIN CD23MON 02.01
@70073
==%tutu_var%gellan @70074
==CD23MON @70075
END
IF~~THEN REPLY @70076 EXTERN CD23MON 02.02
IF~~THEN REPLY @70077 EXTERN CD23MON 02.02
IF~~THEN REPLY @70078 EXTERN CD23MON 02.03

CHAIN CD23MON 02.02
@70079
END
IF~~THEN REPLY @70080 EXTERN CD23MON 02.04
IF~~THEN REPLY @70081 EXTERN CD23MON 02.04
IF~~THEN REPLY @70082 EXTERN CD23MON 02.03
IF~~THEN REPLY @70083 EXTERN CD23MON 02.03

CHAIN CD23MON 02.04
@70084
==CD23MON @70085
==CD23MON @70086
==CD23MON @70087
DO ~SetGlobal("CDMonkCalling","GLOBAL",4) AddJournalEntry(@70204,QUEST)~ EXIT

CHAIN CD23MON 02.03
@70088
DO ~SetGlobal("CDMonkCalling","GLOBAL",-1) EraseJournalEntry(@70203) AddJournalEntry(@70206,QUEST_DONE) EscapeArea()~ EXIT

//Talk 3 (The Rogue)

CHAIN IF ~Global("CDMonkCallingRogueT","GLOBAL",0)~ THEN CD23ROG 03.00
@70089
END
IF~~THEN REPLY @70090 EXTERN CD23ROG 03.01
IF~~THEN REPLY @70091 EXTERN CD23ROG 03.02

CHAIN CD23ROG 03.01
@70092 
EXTERN CD23ROG 03.02

CHAIN CD23ROG 03.02
@70093
==CD23ROG @70094
DO ~SetGlobal("CDMonkCallingRogueT","GLOBAL",1) Enemy()~ EXIT

//Talk 4 (The Temple Again)

CHAIN IF ~Global("CDMonkCalling","GLOBAL",4)~ THEN CD23MON 04.00
@70095
END
IF~PartyHasItem("CD23AMU")~THEN REPLY @70096 EXTERN CD23MON 04.01
IF~~THEN REPLY @70097 EXIT

CHAIN CD23MON 04.01
@70098
==CD23MON @70099
==%tutu_var%gellan @70100
==CD23MON @70101
DO ~StartCutScene("CD23VIS")~ EXIT 

//Talk 5 (The Temple Again)

CHAIN IF ~Global("CDMonkCalling","GLOBAL",5)~ THEN CD23MON 05.00
@70102 
==%tutu_var%gellan @70103
==CD23MON @70104
==%tutu_var%gellan @70105
==CD23MON @70106
==%tutu_var%gellan @70107
==%tutu_var%gellan @70108
==CD23MON @70109
==%tutu_var%gellan @70110
==%tutu_var%gellan @70111
==%tutu_var%gellan @70112
==CD23MON @70113
==%tutu_var%gellan @70114
==CD23MON @70115
DO ~SetGlobal("CDMonkCalling","GLOBAL",6) EscapeArea()~ EXIT

//Talk 6 (The Temple - Outside)

CHAIN IF ~Global("CDMonkCalling","GLOBAL",7)~ THEN CD23MON 06.00
@70116
==CD23MON @70117
==CD23MON @70118
END
IF~~THEN REPLY @70119 EXTERN CD23MON 06.01
IF~~THEN REPLY @70120 EXTERN CD23MON 06.02

CHAIN CD23MON 06.01
@70121
DO ~SetGlobal("CDMonkCalling","GLOBAL",8) EraseJournalEntry(@70205) AddJournalEntry(@70207,QUEST)~ EXIT

CHAIN CD23MON 06.02
@70122
DO ~SetGlobal("CDMonkCalling","GLOBAL",-1) EraseJournalEntry(@70205) AddJournalEntry(@70206,QUEST_DONE) EscapeArea()~ EXIT

//TALK 7 (Waiting for the sword parts)

CHAIN IF ~Global("CDMonkCalling","GLOBAL",8)~ THEN CD23MON 07.00
@70123
END
IF~PartyHasItem("CD23FR1")~THEN REPLY @70124 DO ~SetGlobal("CD23FR1Returned","GLOBAL",1)~ EXTERN CD23MON 07.01
IF~PartyHasItem("CD23FR2")~THEN REPLY @70125 DO ~SetGlobal("CD23FR2Returned","GLOBAL",1)~ EXTERN CD23MON 07.02
IF~~THEN REPLY @70126 EXIT

CHAIN CD23MON 07.01
@70127
END
IF~Global("CD23FR2Returned","GLOBAL",0)~THEN EXTERN CD23MON 07.03
IF~Global("CD23FR2Returned","GLOBAL",1)~THEN EXTERN CD23MON 07.0C

CHAIN CD23MON 07.02
@70128
END
IF~Global("CD23FR1Returned","GLOBAL",0)~THEN EXTERN CD23MON 07.04
IF~Global("CD23FR1Returned","GLOBAL",1)~THEN EXTERN CD23MON 07.0C

CHAIN CD23MON 07.03
@70129
==CD23MON @70130
==CD23MON @70131
DO ~TakePartyItem("CD23FR1") DestroyItem("CD23FR1")~ EXIT

CHAIN CD23MON 07.04
@70132
==CD23MON @70133
==CD23MON @70134
DO ~TakePartyItem("CD23FR2") DestroyItem("CD23FR2")~ EXIT

CHAIN CD23MON 07.0C
@70135
==CD23MON @70136
==CD23MON @70137
==CD23MON @70233
==CD23MON @70138
DO ~TakePartyItem("CD23FR1") DestroyItem("CD23FR1") TakePartyItem("CD23FR2") DestroyItem("CD23FR2") SetGlobal("CDMonkCalling","GLOBAL",9)
SetGlobal("cd_monk_calling_sf","GLOBAL",1) EraseJournalEntry(@70210) AddJournalEntry(@70211,QUEST) EscapeArea()~ EXIT

//BANDIT

CHAIN IF ~NumTimesTalkedTo(0)~ THEN CD23BAN 0B.00
@70139
==CD23BAN @70140
END
IF~~THEN REPLY @70141 EXTERN CD23BAN 0B.01
IF~~THEN REPLY @70142 EXTERN CD23BAN 0B.01

CHAIN CD23BAN 0B.01
@70143
DO ~Enemy()~ EXIT

//TALK 8 (Blacksmith)

CHAIN IF ~Global("CDMonkCalling","GLOBAL",10) !See("%tutu_var%taerom")~ THEN CD23MON 08.0N
@70144
DO ~EraseJournalEntry(@70211) AddJournalEntry(@70212,QUEST)~ EXIT

CHAIN IF ~Global("CDMonkCalling","GLOBAL",10) See("%tutu_var%taerom")~ THEN CD23MON 08.00
@70145
==CD23MON @70146
==%tutu_var%taerom @70147
==CD23MON @70148
==%tutu_var%taerom @70149
==%tutu_var%taerom @70150
==CD23MON @70151
==%tutu_var%taerom @70152
==CD23MON @70153
==CD23MON @70234
==%tutu_var%taerom @70154
==CD23MON @70155
==%tutu_var%taerom @70156
END
IF~PartyGoldGT(199)~THEN REPLY @70157 EXTERN CD23MON 08.01
IF~PartyGoldGT(199)~THEN REPLY @70158 EXTERN CD23MON 08.02
IF~PartyGoldLT(200)~THEN REPLY @70159 EXTERN CD23MON 08.02

CHAIN CD23MON 08.01
@70160
==%tutu_var%taerom @70161
==CD23MON @70162
DO ~TakePartyItem("CD23WHE") DestroyItem("CD23WHE") TakePartyGold(200) SetGlobal("CDMonkCalling","GLOBAL",11) SetGlobal("CDMonkCallingPaid","GLOBAL",1) SetGlobalTimer("CDMonkCallingBladeTime","GLOBAL",FOUR_DAYS) 
EraseJournalEntry(@70211) EraseJournalEntry(@70212) EraseJournalEntry(@70235) AddJournalEntry(@70214,QUEST) EscapeArea()~ EXIT

CHAIN CD23MON 08.02
@70163
==%tutu_var%taerom @70164
==CD23MON @70165
==%tutu_var%taerom @70166
==CD23MON @70167
DO ~TakePartyItem("CD23WHE") DestroyItem("CD23WHE") DestroyItem("cd23rin") SetGlobal("CDMonkCalling","GLOBAL",11) SetGlobal("CDMonkCallingNotPaid","GLOBAL",1) SetGlobalTimer("CDMonkCallingBladeTime","GLOBAL",FOUR_DAYS) 
EraseJournalEntry(@70211) EraseJournalEntry(@70212) EraseJournalEntry(@70235) AddJournalEntry(@70213,QUEST) EscapeArea()~ EXIT

//Talk 9 (Almost Fixed)

CHAIN IF ~Global("CDMonkCalling","GLOBAL",12) !See("%tutu_var%taerom")~ THEN CD23MON 09.0N
@70168
DO ~EraseJournalEntry(@70213) EraseJournalEntry(@70214) AddJournalEntry(@70215,QUEST)~ EXIT

CHAIN IF ~Global("CDMonkCalling","GLOBAL",12) See("%tutu_var%taerom")~ THEN CD23MON 09.00
@70169
==%tutu_var%taerom @70170
==CD23MON @70171
==%tutu_var%taerom @70172
==CD23MON @70173
==CD23MON @70174
DO ~StartCutScene("CD23FIN")~ EXIT

//Talk 10 (Final)

CHAIN IF ~Global("CDMonkCalling","GLOBAL",13)~ THEN CD23MON 10.00
@70175
==CD23MON @70176
==CD23MON @70177
==CD23MON IF ~Global("CDMonkCallingPaid","GLOBAL",1)~ THEN @70178 DO ~GiveItem("CD23BRA",Player1) GiveItem("CD23RIN",Player1)~
==CD23MON IF ~Global("CDMonkCallingNotPaid","GLOBAL",1)~ THEN @70179 DO ~GiveItem("CD23BRA",Player1)~
==CD23MON @70180
END
IF~~THEN REPLY @70181 EXTERN CD23MON 10.01
IF~CheckStatGT(Player1,18,CHR)~THEN REPLY @70182 EXTERN CD23MON 10.02
IF~CheckStatLT(Player1,19,CHR)~THEN REPLY @70182 EXTERN CD23MON 10.03
IF~~THEN REPLY @70183 EXTERN CD23MON 10.04

CHAIN CD23MON 10.01
@70184
==CD23MON @70185
DO ~AddXPObject(Player1,750) AddexperienceParty(3000) SetGlobal("CDMonkCalling","GLOBAL",14) 
EraseJournalEntry(@70202) EraseJournalEntry(@70203) EraseJournalEntry(@70204) EraseJournalEntry(@70205) EraseJournalEntry(@70206) EraseJournalEntry(@70207) 
EraseJournalEntry(@70208) EraseJournalEntry(@70209) EraseJournalEntry(@70210) EraseJournalEntry(@70211) EraseJournalEntry(@70212) EraseJournalEntry(@70213) 
EraseJournalEntry(@70214) EraseJournalEntry(@70215) EraseJournalEntry(@70235) AddJournalEntry(@70216,QUEST_DONE) EscapeArea()~ EXIT

CHAIN CD23MON 10.02
@70186
END
IF~~THEN REPLY @70187 EXTERN CD23MON 10.05
IF~~THEN REPLY @70188 EXTERN CD23MON 10.01
IF~~THEN REPLY @70189 EXTERN CD23MON 10.04

CHAIN CD23MON 10.05
@70190
==CD23MON @70191
==CD23MON @70192
END
IF~~THEN REPLY @70193 EXTERN CD23MON 10.06
IF~~THEN REPLY @70194 EXTERN CD23MON 10.04

CHAIN CD23MON 10.06
@70195
==CD23MON @70196
DO ~AddXPObject(Player1,750) AddexperienceParty(3000) GiveItem("CD23KAT",Player1) SetGlobal("CDMonkCalling","GLOBAL",15)  
EraseJournalEntry(@70202) EraseJournalEntry(@70203) EraseJournalEntry(@70204) EraseJournalEntry(@70205) EraseJournalEntry(@70206) EraseJournalEntry(@70207) 
EraseJournalEntry(@70208) EraseJournalEntry(@70209) EraseJournalEntry(@70210) EraseJournalEntry(@70211) EraseJournalEntry(@70212) EraseJournalEntry(@70213) 
EraseJournalEntry(@70214) EraseJournalEntry(@70215) EraseJournalEntry(@70235) AddJournalEntry(@70217,QUEST_DONE) EscapeArea()~ EXIT

CHAIN CD23MON 10.03
@70197
END
IF~~THEN REPLY @70198 EXTERN CD23MON 10.01
IF~~THEN REPLY @70199 EXTERN CD23MON 10.04

CHAIN CD23MON 10.04
@70200
DO ~AddXPObject(Player1,750) AddexperienceParty(3000) SetGlobal("CDMonkCalling","GLOBAL",16)  
EraseJournalEntry(@70202) EraseJournalEntry(@70203) EraseJournalEntry(@70204) EraseJournalEntry(@70205) EraseJournalEntry(@70206) EraseJournalEntry(@70207) 
EraseJournalEntry(@70208) EraseJournalEntry(@70209) EraseJournalEntry(@70210) EraseJournalEntry(@70211) EraseJournalEntry(@70212) EraseJournalEntry(@70213) 
EraseJournalEntry(@70214) EraseJournalEntry(@70215) EraseJournalEntry(@70235) AddJournalEntry(@70218,QUEST_DONE) Enemy()~ EXIT

// starfell ore
EXTEND_BOTTOM %tutu_var%MERCH4 0
  IF ~Global("cd_monk_calling_sf","LOCALS",0) Global("cd_monk_calling_sf","GLOBAL",1)~ THEN REPLY @70222 DO ~SetGlobal("cd_monk_calling_sf","LOCALS",1)~ GOTO CD23.MERCH4.0
END

APPEND %tutu_var%MERCH4
  IF ~~ THEN BEGIN CD23.MERCH4.0 SAY @70223
    IF ~~ THEN EXIT
  END
END

EXTEND_BOTTOM %tutu_var%MERCH5 0
  IF ~Global("cd_monk_calling_sf","LOCALS",0) Global("cd_monk_calling_sf","GLOBAL",1)~ REPLY @70222 DO ~SetGlobal("cd_monk_calling_sf","LOCALS",1)~ GOTO CD23.MERCH5.0
END

APPEND %tutu_var%MERCH5
  IF ~~ THEN BEGIN CD23.MERCH5.0 SAY @70224
    IF ~~ THEN EXIT
  END
END

EXTEND_BOTTOM %tutu_var%MERCH6 0
  IF ~Global("cd_monk_calling_sf","LOCALS",0) Global("cd_monk_calling_sf","GLOBAL",1)~ REPLY @70222 DO ~SetGlobal("cd_monk_calling_sf","LOCALS",1)~ GOTO CD23.MERCH6.0
END

APPEND %tutu_var%MERCH6
  IF ~~ THEN BEGIN CD23.MERCH6.0 SAY @70225
    IF ~~ THEN EXIT
  END
END

EXTEND_BOTTOM %tutu_var%MERCH2 0
  IF ~Global("cd_monk_calling_sf","GLOBAL",1)~ REPLY @70222 DO ~SetGlobal("cd_monk_calling_sf","GLOBAL",2) AddJournalEntry(@70235,QUEST)~ GOTO CD23.MERCH2.0
  IF ~Global("cd_monk_calling_sf","GLOBAL",2) 
      Global("cd_monk_ankheg","LOCALS",0) 
      NumItemsPartyGT("MISC12",4)~ THEN DO ~TakePartyItemNum("MISC12",1) 
                                            TakePartyItemNum("MISC12",1) 
                                            TakePartyItemNum("MISC12",1) 
                                            TakePartyItemNum("MISC12",1) 
                                            TakePartyItemNum("MISC12",1)~ REPLY @70226 GOTO CD23.MERCH2.1
  IF ~Global("cd_monk_calling_sf","GLOBAL",2) 
      Global("cd_monk_ankheg","LOCALS",1) 
      NumItemsPartyGT("MISC12",3)~ THEN DO ~TakePartyItemNum("MISC12",1) 
                                            TakePartyItemNum("MISC12",1) 
                                            TakePartyItemNum("MISC12",1) 
                                            TakePartyItemNum("MISC12",1)~ REPLY @70226 GOTO CD23.MERCH2.1
  IF ~Global("cd_monk_calling_sf","GLOBAL",2) 
      Global("cd_monk_ankheg","LOCALS",2) 
      NumItemsPartyGT("MISC12",2)~ THEN DO ~TakePartyItemNum("MISC12",1) 
                                            TakePartyItemNum("MISC12",1) 
                                            TakePartyItemNum("MISC12",1)~ REPLY @70226 GOTO CD23.MERCH2.1
  IF ~Global("cd_monk_calling_sf","GLOBAL",2) 
      Global("cd_monk_ankheg","LOCALS",3) 
      NumItemsPartyGT("MISC12",1)~ THEN DO ~TakePartyItemNum("MISC12",1) 
                                            TakePartyItemNum("MISC12",1)~ REPLY @70226 GOTO CD23.MERCH2.1
  IF ~Global("cd_monk_calling_sf","GLOBAL",2) 
      Global("cd_monk_ankheg","LOCALS",4) 
      NumItemsPartyGT("MISC12",1)~ THEN DO ~TakePartyItemNum("MISC12",1)~ REPLY @70226 GOTO CD23.MERCH2.1
  IF ~Global("cd_monk_calling_sf","GLOBAL",2) 
      GlobalLT("cd_monk_ankheg","LOCALS",1) 
      NumItemsParty("MISC12",4)~ THEN DO ~IncrementGlobal("cd_monk_ankheg","LOCALS",4)
                                          TakePartyItemNum("MISC12",1) 
                                          TakePartyItemNum("MISC12",1) 
                                          TakePartyItemNum("MISC12",1) 
                                          TakePartyItemNum("MISC12",1)~ REPLY @70226 GOTO CD23.MERCH2.2
  IF ~Global("cd_monk_calling_sf","GLOBAL",2) 
      GlobalLT("cd_monk_ankheg","LOCALS",2) 
      NumItemsParty("MISC12",3)~ THEN DO ~IncrementGlobal("cd_monk_ankheg","LOCALS",3)
                                          TakePartyItemNum("MISC12",1) 
                                          TakePartyItemNum("MISC12",1) 
                                          TakePartyItemNum("MISC12",1)~ REPLY @70226 GOTO CD23.MERCH2.2
  IF ~Global("cd_monk_calling_sf","GLOBAL",2) 
      GlobalLT("cd_monk_ankheg","LOCALS",3) 
      NumItemsParty("MISC12",2)~ THEN DO ~IncrementGlobal("cd_monk_ankheg","LOCALS",2)
                                          TakePartyItemNum("MISC12",1) 
                                          TakePartyItemNum("MISC12",1)~ REPLY @70226 GOTO CD23.MERCH2.2
  IF ~Global("cd_monk_calling_sf","GLOBAL",2) 
      GlobalLT("cd_monk_ankheg","LOCALS",4) 
      NumItemsParty("MISC12",1)~ THEN DO ~IncrementGlobal("cd_monk_ankheg","LOCALS",1)
                                          TakePartyItemNum("MISC12",1)~ REPLY @70226 GOTO CD23.MERCH2.2
END

APPEND %tutu_var%MERCH2
  IF ~~ THEN BEGIN CD23.MERCH2.0 SAY @70227 = @70228 = @70229
    IF ~~ THEN EXIT
  END
  
  IF ~~ THEN BEGIN CD23.MERCH2.1 SAY @70230 = @70231 
    IF ~~ THEN DO ~SetGlobal("cd_monk_ankheg","LOCALS",5) GiveItemCreate("CD23WHE",Player1,1,0,0) SetGlobal("cd_monk_calling_sf","GLOBAL",3)~ EXIT
  END
  
  IF ~~ THEN BEGIN CD23.MERCH2.2 SAY @70232
    IF ~~ THEN EXIT
  END
END
