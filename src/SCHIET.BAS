NIEUWGAME:
MAGRAKEN% = 20
GAS = 1
CLS
SCREEN 9
COLOR 4
LOCATE 1, 1: LINE INPUT "NAME "; NAAM$
IF NAAM$ = "" THEN NAAM$ = "PLAYER 1"
LOCATE 1, 1: PRINT STRING$(80, " ")
GAMESET:
PC% = PC% + 1
IF PC% = 7 THEN PC% = 1
IF PC% = 1 THEN PC$ = "286"
IF PC% = 2 THEN PC$ = "386"
IF PC% = 3 THEN PC$ = "486"
IF PC% = 4 THEN PC$ = "PENTIUM 100"
IF PC% = 5 THEN PC$ = "PENTIUM 150"
IF PC% = 6 THEN PC$ = "PENTIUM 200"
LOCATE 1, 1: PRINT STRING$(80, " ")
LOCATE 1, 1: PRINT "COMPUTER "; PC$
FIG$ = INPUT$(1)
IF FIG$ = CHR$(13) THEN GOTO OK
GOTO GAMESET

OK:
IF PC% = 1 THEN TYP = 1
IF PC% = 2 THEN TYP = 2
IF PC% = 3 THEN TYP = 3
IF PC% = 4 THEN TYP = 4
IF PC% = 5 THEN TYP = 5
IF PC% = 6 THEN TYP = 6
LOCATE 1, 1: PRINT STRING$(80, " ")
LOCATE 1, 1: PRINT "THE NEW SETTING "; PC$; " IS OK"
WAIT$ = INPUT$(1)
LOCATE 1, 1: PRINT STRING$(80, " ")
IF BEGONNEN = 1 THEN GOTO BEGIN
BEGONNEN = 1
LOCATE 1, 1: PRINT "LOADING GAME PLEASE WAIT (if you have a slow computer)"
COLOR 0
CIRCLE (100, 100), 0
DRAW "C2"
DRAW "L2BD1L2BD1L1BD1L1D4BR1D2BR1D2R5U1BU1R1U1BU1R1U4BL1U1L1U1L2"
DRAW "C1"
DRAW "D1R1D1R1U1D1R1D4L1U3D5L1D1L3U1L1U6L1D4R1U5R1D1U1R1U1"
DRAW "C2BU1L1"
DRAW "C3"
DRAW "BD3BR1R1D1R1D4L1D1L1U1L1U4R1"
DRAW "BD1"
DRAW "C11"
DRAW "D2R1U2"
DRAW "BR1BD7"
DRAW "C2"
DRAW "D2L3U1R2U1L2D3L1D1L1D1LD1L3D1L2D1L1R1D1R2D1R4U1R1U1R2U5"
DRAW "R1D5R2D1R1D1R4U1R2U1R1L1U1L2U1L3U1L1U1L1U1L2"
DRAW "C4"
DRAW "BL2BD1"
DRAW "D3L2D1L1D1L2U1L2R2U1R2U1R2U1"
DRAW "BR4BU1"
DRAW "D3R2D1R1D1R2U1R2L2U1L2U1L2U1"
DRAW "C14"
DRAW "BD3BR3"
DRAW "R1"
DRAW "BL13R1"
DRAW "C8"
DRAW "BR5BD1R1D1R1D1R1L5R1U1R1U1R1"
DRAW "C7"
DRAW "BD1L1R1D1R1L3"
DRAW "C8"
DRAW "BU6BL5U2BR13D2"
DRAW "BD7"
DRAW "C4BL5L3D1"
DRAW "C12L1R5"
CIRCLE (200, 100), 0
'''DIT IS DE VIJAND!!!
DRAW "S4"
DRAW "C15RRRURRURRURRURRURRDDLDDLDDLDDLDDLDDLDDLDDLDDLDDLLDDLLDDLLDLLDLLLLLLULLULLUULLUULLUULUULUULUULUULUULUULUULUULUURRDRRDRRDRRDRRDRRR"
DRAW "DRRDRDDRDDRDDDRDRRURUUURUURUURURRU"
DRAW "BD10BL19"
DRAW "R24U1L9U1R10U1L10U1R11U1L11U1R12U1L10U1R11U1L10R3U1R8U1L5R3U1R4L1U1L1R1U1R1"
DRAW "BD13BL31R9U1L10U1R10U1L11U1R11U1L12U1R11U1L12U1R11L2U1L10U1R6L3U1L4U1R2LU1L2"
DRAW "BD15BR8R22D1L22D1R22L1D1L20D1R20L2D1L17D1R17L2D1L13R2D1R9D1L6"
DRAW "C5"
DRAW "BR1BU1U7BR2D7RURURURURUURUURUURUU"
DRAW "LLDLLDLLDDLLD"
DRAW "BL2ULLUULLULLULLDDRDDRDDRDDRDRDRDRDR"
DRAW "C4BU2BL1U5L2U2L2U1L2U1D1R1D1R1D2R1U3D5R1U1D2R1U4D5"
DRAW "BR5D1U5R2U2R2U1R2U1D1L1D1L1D2L1U2D4L3U1R3U1L3R1D4U1R1"
DRAW "BL17BU15"
DRAW "C7LDLDDDRDRRRRRURUUULULBD2BL1L1D1R1"
DRAW "BR21BU3"
DRAW "C7LDLDDDRDRRRRRURUUULULBD2BL1L1D1R1"
DRAW "C8"
DRAW "BD10D3LU2D5U3L1BL20L1D3U4D2U1L1U3"
CIRCLE (300, 200), 0
''SPEL
DIM BRANDSTOF(100)
DIM VLIEGTUIG(1000)
DIM VIJAND(4000)
DIM VLAM1(100)
DIM VLAM2(100)
CIRCLE (200, 200), 0
DRAW "C14R1L7"
GET (170, 200)-(222, 200), VLAM1
CIRCLE (200, 200), 0
DRAW "C0R1L7"
GET (170, 200)-(222, 200), VLAM2
'''''X'''Y''''X''''Y'''
GET (65, 90)-(132, 125), VLIEGTUIG
GET (150, 94)-(240, 130), VIJAND
CLS
DIM STERREN(6000)
COLOR 15
T% = 0
A:
T% = T% + 1
SX% = INT(0 + RND * 126)
SY% = INT(0 + RND * 68)
IF T% = 8 THEN GOTO B
RANDOMIZE SX%
RANDOMIZE SY%
PSET (SX%, SY%)
GOTO A
B:
GET (0, 0)-(126, 68), STERREN
H% = 70
S = 1
S% = 1
EXTRA% = 1000
LEVEN% = 3
COLOR 4
A = 1
GEL% = 1
LEVEL% = 0
OPNIEWLEVEL:
RAAK% = 0
VY% = 20
VX% = 280
V = 2
X% = 280
Y% = 300
AM% = 75
LEVEL% = LEVEL% + 1
MAGRAKEN% = MAGRAKEN% + 10
TIME% = 75
FEUL% = 75
CLS
COLOR 4
LOCATE 1, 1: PRINT "LOADING SCENARIO PLEASE WAIT"
PUT (0, 0), STERREN
PUT (126, 0), STERREN
PUT (252, 0), STERREN
PUT (378, 0), STERREN
PUT (504, 0), STERREN
''
PUT (0, 68), STERREN
PUT (126, 68), STERREN
PUT (252, 68), STERREN
PUT (378, 68), STERREN
PUT (504, 68), STERREN
''
PUT (0, 134), STERREN
PUT (126, 134), STERREN
PUT (252, 134), STERREN
PUT (378, 134), STERREN
PUT (504, 134), STERREN
''
PUT (0, 202), STERREN
PUT (126, 202), STERREN
PUT (252, 202), STERREN
PUT (378, 202), STERREN
PUT (504, 202), STERREN
''
PUT (0, 268), STERREN
PUT (126, 268), STERREN
PUT (252, 268), STERREN
PUT (378, 268), STERREN
PUT (504, 268), STERREN

COLOR 4
LOCATE 1, 1: PRINT STRING$(80, " ")
LOCATE 1, 1: PRINT "PRESS SPACEBAR TO ENTER LEVEL"; LEVEL%
WAIT$ = INPUT$(1)
GOTO TOGGLE

''HET SPEL''
BEGIN:
BEWEEG% = BEWEEG% + 1
IF BEWEEG% = 7 THEN BEWEEG% = 1: GOTO BEWEEG
IF S = 1 THEN SOUND 37, 1
A$ = INKEY$
IF A$ = CHR$(27) THEN GOTO EINDE
IF A$ = CHR$(32) THEN IF A = 1 THEN GOTO VUUR1
IF A$ = "S" THEN GOTO GELUID
IF A$ = "Q" THEN GOTO EINDE
IF A$ = "T" THEN GOTO TTT
IF A$ = "I" THEN IF GAS = 1 THEN X% = X% - 20: IF X% = 0 THEN X% = 20
IF A$ = "O" THEN IF GAS = 1 THEN X% = X% + 20: IF X% = 560 THEN X% = 540
IF A$ = "P" THEN GOTO PAUSE
IF A$ = "C" THEN GOTO CODE
PUT (X%, Y%), VLIEGTUIG, PSET
IF VX% > 559 THEN VX% = 540
IF VX% <= 1 THEN VX% = 20
PUT (VX% - 9, VY%), VIJAND, PSET
V% = V% + 1
IF V% = 3 THEN V% = 1
IF V% = 1 THEN PUT (X% + 6, Y% + 36), VLAM1, PSET
IF V% = 2 THEN PUT (X% + 6, Y% + 36), VLAM2, PSET
IF A$ = "." THEN Z = 1: GOTO TOGGLE
IF A$ = "," THEN Z = 2: GOTO TOGGLE
G% = G% + 1
IF G% = 5 THEN FEUL% = FEUL% - 1: IF S% = 5 THEN GOTO TOGGLE
IF G% = 20 THEN TIME% = TIME% - 1: G% = 0: IF S% = 3 THEN GOTO TOGGLE
IF TYP = 1 THEN FOR W = 1 TO 0: NEXT
IF TYP = 2 THEN FOR W = 1 TO 100: NEXT
IF TYP = 3 THEN FOR W = 1 TO 100: NEXT
IF TYP = 4 THEN FOR W = 1 TO 100: NEXT
IF TYP = 5 THEN FOR W = 1 TO 100: NEXT
IF TYP = 6 THEN FOR W = 1 TO 2500: NEXT
GOTO BEGIN

VUUR1:
IF S = 1 THEN SOUND 4000, 1
LINE (X% + 27, Y% + 24)-(X% + 27, 45), 4
LINE (X% + 40, Y% + 24)-(X% + 40, 45), 4
IF TYP = 1 THEN FOR W = 1 TO 0: NEXT
IF TYP = 2 THEN FOR W = 1 TO 100: NEXT
IF TYP = 3 THEN FOR W = 1 TO 100: NEXT
IF TYP = 4 THEN FOR W = 1 TO 100: NEXT
IF TYP = 5 THEN FOR W = 1 TO 100: NEXT
IF TYP = 6 THEN FOR W = 1 TO 2500: NEXT
LINE (X% + 27, Y% + 24)-(X% + 27, 45), 0
LINE (X% + 40, Y% + 24)-(X% + 40, 45), 0
IF X% = VX% - 5 THEN GERAAKT = 1: GOTO RAAK
IF X% = VX% - 4 THEN GERAAKT = 1: GOTO RAAK
IF X% = VX% - 3 THEN GERAAKT = 1: GOTO RAAK
IF X% = VX% - 2 THEN GERAAKT = 1: GOTO RAAK
IF X% = VX% - 1 THEN GERAAKT = 1: GOTO RAAK
IF X% = VX% THEN GERAAKT = 1: GOTO RAAK
IF X% = VX% + 1 THEN GERAAKT = 1: GOTO RAAK
IF X% = VX% + 2 THEN GERAAKT = 1: GOTO RAAK
IF X% = VX% + 3 THEN GERAAKT = 1: GOTO RAAK
IF X% = VX% + 4 THEN GERAAKT = 1: GOTO RAAK
IF X% = VX% + 5 THEN GERAAKT = 1: GOTO RAAK
AM% = AM% - 1: IF S% = 2 THEN GOTO TOGGLE
GOTO BEGIN

TOGGLE:
IF Z = 1 THEN S% = S% + 1
IF Z = 2 THEN S% = S% - 1
IF S% = 8 THEN S% = 1
IF S% = 0 THEN S% = 7
IF AM% = 0 THEN A = 0
IF S% = 4 THEN LOCATE 1, 1: PRINT "SCORE "; STRING$(SCORE%, "�"); STRING$(80 - SCORE% - 6, " ")
IF S% = 1 THEN LOCATE 1, 1: PRINT "HEALTH "; STRING$(H%, "�"); STRING$(80 - H% - 7, " ")
IF S% = 2 THEN LOCATE 1, 1: PRINT "AMMO "; STRING$(AM%, "�"); STRING$(80 - AM% - 5, " ")
IF S% = 3 THEN LOCATE 1, 1: PRINT "TIME "; STRING$(TIME%, "�"); STRING$(80 - TIME% - 5, " ")
IF S% = 5 THEN LOCATE 1, 1: PRINT "FUEL "; STRING$(FEUL%, "�"); STRING$(80 - FEUL% - 5, " ")
IF S% = 6 THEN LOCATE 1, 1: PRINT "LIVES "; STRING$(LEVEN%, "�"); STRING$(80 - LEVEN% - 6, " ")
IF S% = 7 THEN LOCATE 1, 1: PRINT "LEVEL "; STRING$(LEVEL%, "�"); STRING$(80 - LEVEL% - 6, " ")
Z = 0
GOTO BEGIN

CODE:
LOCATE 1, 1: PRINT STRING$(80, " ")
LOCATE 1, 1: LINE INPUT "CODE "; CODE$
LOCATE 1, 1: PRINT STRING$(80, " ")
C = 0
IF CODE$ = "GIVE ME LIFE PLEASE" THEN LEVEN% = LEVEN% + 1: LOCATE 1, 1: PRINT "OK HERE'S YOUR LIFE": C = 1
IF CODE$ = "GOTO NEXT LEVEL PLEASE" THEN GOTO OPNIEWLEVEL
IF CODE$ = "GAME SETTINGS" THEN GOTO GAMESET
IF CODE$ = "GIVE ME FUEL PLEASE" THEN FEUL% = 75: LOCATE 1, 1: PRINT "OK HERE'S YOUR FUEL": C = 1
IF CODE$ = "GIVE ME TIME PLEASE" THEN TIME% = 75: LOCATE 1, 1: PRINT "OK HERE'S YOUR TIME": C = 1
IF CODE$ = "GIVE ME AMMO PLEASE" THEN AMMO% = 75: LOCATE 1, 1: PRINT "OK HERE'S YOUR AMMO": C = 1
IF CODE$ = "GOD" THEN GOD% = GOD% + 1: GOTO GOD
IF C = 0 THEN LOCATE 1, 1: PRINT "WRONG CODE"
WAIT$ = INPUT$(1)
LOCATE 1, 1: PRINT STRING$(80, " ")
GOTO BEGIN

GOD:
IF GOD% = 2 THEN GOD% = 0
IF GOD% = 1 THEN GOD = 1
IF GOD% = 0 THEN GOD = 0
LOCATE 1, 1: PRINT STRING$(80, " ")
IF GOD = 1 THEN LOCATE 1, 1: PRINT "GODMODE ON "
IF GOD = 0 THEN LOCATE 1, 1: PRINT "GODMODE OFF"
WAIT$ = INPUT$(1)
LOCATE 1, 1: PRINT STRING$(80, " ")
GOTO BEGIN

PAUSE:
LOCATE 1, 1: PRINT STRING$(80, " ")
LOCATE 1, 1: PRINT "THE GAME IS PAUSED PRESS SPACEBAR TO CONTINUE"
WAIT$ = INPUT$(1)
LOCATE 1, 1: PRINT STRING$(80, " ")
GOTO BEGIN

RAAK:
IF GERAAKT = 1 THEN AM% = AM% - 1
IF GOD = 1 THEN IF GERAAKT = 2 THEN GOTO OVERSLAAN
IF GERAAKT = 1 THEN CIRCLE (VX% + 40, XY% + 30), 0: RAAK% = RAAK% + 1: IF RAAK% = MAGRAKEN% THEN SCORE% = SCORE% + 2: GOTO OPNIEWLEVEL
IF GERAAKT = 2 THEN CIRCLE (X% + 40, Y% + 30), 0: IF GOD = 0 THEN H% = H% - 7: CO = 1: IF H% = 0 THEN LEVEN% = LEVEN% - 1: H% = 70
IF LEVEN% = 0 THEN GOTO GAMEOVER
DRAW "C14D2C12RU3L2D3LU3C4UC0R1C4R1LUDRRC0RDC4DDURRLLDDC0DLC4DULC0LC4LDLRULC0UC4LUDRRUUULBD3BR5F"
DRAW "BL15BU3"
DRAW "C14D2C12RU3L2D3LU3C4UC0R1C4R1LUDRRC0RDC4DDURRLLDDC0DLC4DULC0LC4LDLRULC0UC4LUDRRUUULBD3BR5F"
COLOR 4, 15
IF S = 1 THEN SOUND 37, 1
COLOR 4, 0
IF S = 1 THEN SOUND 70, 1
IF TYP = 1 THEN COLOR 4, 15
IF S = 1 THEN SOUND 37, 1
IF TYP = 1 THEN COLOR 4, 0
IF S = 1 THEN SOUND 70, 1
IF TYP = 1 THEN COLOR 4, 15
IF S = 1 THEN SOUND 37, 1
IF TYP = 1 THEN COLOR 4, 0
IF S = 1 THEN SOUND 70, 1
OVERSLAAN:
CO = 0
IF S% = 1 THEN IF GERAAKT = 2 THEN IF GOD = 0 THEN GERAAKT = 0: GOTO TOGGLE
IF S% = 6 THEN IF GERAAKT = 2 THEN IF GOD = 0 THEN GERAAKT = 0: GOTO TOGGLE
IF S% = 2 THEN IF GERAAKT = 1 THEN GERAAKT = 0: GOTO TOGGLE
GOTO BEGIN

GELUID:
GEL% = GEL% + 1
IF GEL% = 2 THEN GEL% = 0
IF GEL% = 1 THEN S = 1
IF GEL% = 0 THEN S = 0
LOCATE 1, 1: PRINT STRING$(80, " ")
IF S = 1 THEN LOCATE 1, 1: PRINT "SOUND ON"
IF S = 0 THEN LOCATE 1, 1: PRINT "SOUND OFF"
WAIT$ = INPUT$(1)
LOCATE 1, 1: PRINT STRING$(80, " ")
GOTO BEGIN

EINDE:
LOCATE 1, 1: PRINT STRING$(80, " ")
LOCATE 1, 1: PRINT "ARE YOU SURE YOU WANT TO QUIT"
EXIT$ = INPUT$(1)
IF EXIT$ = "Y" THEN END
LOCATE 1, 1: PRINT STRING$(80, " ")
GOTO BEGIN

BEWEEG:
FFF% = FFF% + 1
IF FFF% = 5 THEN FFF% = 0: GOTO BEWEGEN ELSE GOTO NIETBEWEGEN
BEWEGEN:
BEW% = INT(0 + RND * 3)
RANDOMIZE BEW%
IF BEW% = 0 THEN V = 1
IF BEW% = 1 THEN V = 2
IF BEW% = 2 THEN V = 2
IF BEW% = 3 THEN V = 3
NIETBEWEGEN:
IF VX% = X% - 5 THEN IF V = 2 THEN GOTO VUUR2
IF VX% = X% - 4 THEN IF V = 2 THEN GOTO VUUR2
IF VX% = X% - 3 THEN IF V = 2 THEN GOTO VUUR2
IF VX% = X% - 2 THEN IF V = 2 THEN GOTO VUUR2
IF VX% = X% - 1 THEN IF V = 2 THEN GOTO VUUR2
IF VX% = X% THEN IF V = 2 THEN GOTO VUUR2
IF VX% = X% + 1 THEN IF V = 2 THEN GOTO VUUR2
IF VX% = X% + 2 THEN IF V = 2 THEN GOTO VUUR2
IF VX% = X% + 3 THEN IF V = 2 THEN GOTO VUUR2
IF VX% = X% + 4 THEN IF V = 2 THEN GOTO VUUR2
IF VX% = X% + 5 THEN IF V = 2 THEN GOTO VUUR2
IF V = 2 THEN IF X% < VX% THEN VX% = VX% - 20 ELSE VX% = VX% + 20
IF X% < VX% THEN IF V = 1 THEN VX% = VX% - 20 ELSE IF V = 3 THEN VX% = VX% + 20
IF X% > VX% THEN IF V = 3 THEN VX% = VX% + 20 ELSE IF V = 1 THEN VX% = VX% - 20
GOTO BEGIN

VUUR2:
COMM% = INT(0 + RND * 4)
RANDOMIZE COMM%
IF T = 1 THEN LOCATE 1, 1: PRINT STRING$(80, " ")
IF T = 1 THEN IF COMM% = 0 THEN LOCATE 1, 1: PRINT NAAM$; " HAS A BAD DAY"
IF T = 1 THEN IF COMM% = 1 THEN LOCATE 1, 1: PRINT NAAM$; " THINKS HE'S SUPERMAN"
IF T = 1 THEN IF COMM% = 2 THEN LOCATE 1, 1: PRINT NAAM$; " DOESN'T LIKE THIS GAME"
IF T = 1 THEN IF COMM% = 3 THEN LOCATE 1, 1: PRINT NAAM$; " IS A LOSER"
IF T = 1 THEN IF COMM% = 4 THEN LOCATE 1, 1: PRINT NAAM$; " NEEDS A REST"
IF S = 1 THEN SOUND 4000, 1
LINE (VX% + 23, VY% + 26)-(VX% + 23, 329), 10
LINE (VX% + 45, VY% + 26)-(VX% + 45, 329), 10
IF TYP = 1 THEN FOR W = 1 TO 0: NEXT
IF TYP = 2 THEN FOR W = 1 TO 100: NEXT
IF TYP = 3 THEN FOR W = 1 TO 100: NEXT
IF TYP = 4 THEN FOR W = 1 TO 100: NEXT
IF TYP = 5 THEN FOR W = 1 TO 100: NEXT
IF TYP = 6 THEN FOR W = 1 TO 2500: NEXT
LINE (VX% + 23, VY% + 26)-(VX% + 23, 329), 0
LINE (VX% + 45, VY% + 26)-(VX% + 45, 329), 0
IF VX% = X% - 5 THEN GERAAKT = 2: GOTO RAAK
IF VX% = X% - 4 THEN GERAAKT = 2: GOTO RAAK
IF VX% = X% - 3 THEN GERAAKT = 2: GOTO RAAK
IF VX% = X% - 2 THEN GERAAKT = 2: GOTO RAAK
IF VX% = X% - 1 THEN GERAAKT = 2: GOTO RAAK
IF VX% = X% THEN GERAAKT = 2: GOTO RAAK
IF VX% = X% + 1 THEN GERAAKT = 2: GOTO RAAK
IF VX% = X% + 2 THEN GERAAKT = 2: GOTO RAAK
IF VX% = X% + 3 THEN GERAAKT = 2: GOTO RAAK
IF VX% = X% + 4 THEN GERAAKT = 2: GOTO RAAK
IF VX% = X% + 5 THEN GERAAKT = 2: GOTO RAAK
GOTO BEGIN

GAMEOVER:
LOCATE 1, 1: PRINT STRING$(80, " ")
LOCATE 1, 1: PRINT "GAME OVER!!!"
WAIT$ = INPUT$(1)
LOCATE 1, 1: PRINT "YOU LOSER!!! I CAN'T BELIEVE YOU LET ME DOWN!!!"
WAIT$ = INPUT$(1)
LOCATE 1, 1: PRINT "I HOPE YOU'RE BETTER NEXT TIME. WANNA TRY AGAIN?"
IN$ = INPUT$(1)
IF IN$ = "Y" THEN GOTO NIEUWGAME
COLOR 0
END

TTT:
IF T = 1 THEN T = 0: GOTO TTTT
IF T = 0 THEN T = 1: GOTO TTTT
TTTT:
LOCATE 1, 1: PRINT STRING$(80, " ")
IF T = 1 THEN LOCATE 1, 1: PRINT "TEKST ON"
IF T = 0 THEN LOCATE 1, 1: PRINT "TEKST OFF"
WAIT$ = INPUT$(1)
LOCATE 1, 1: PRINT STRING$(80, " ")
GOTO BEGIN


