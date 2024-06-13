BEGIN CD51SHOP

IF ~NumTimesTalkedTo(0)~ THEN BEGIN cdshop51 SAY @10166
  IF ~~ THEN GOTO main
END 

IF ~True()~ THEN BEGIN cdshop51_return SAY @10167
  IF ~~ THEN GOTO main
END 

IF ~~ THEN BEGIN main SAY @10168
  IF~~THEN REPLY @10169 DO ~StartStore("cd51shop",LastTalkedToBy(Myself))~ EXIT
  IF~~THEN REPLY @10170 GOTO shopexit
END

IF ~~ THEN BEGIN shopexit SAY @10171
  IF ~~ THEN EXIT
END 
