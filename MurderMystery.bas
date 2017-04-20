DECLARE SUB FINISH ()
DECLARE SUB ONE ()
DECLARE SUB TWO ()
DECLARE SUB THREE ()
DECLARE SUB SHOP2 ()
DECLARE SUB SHOP3 ()
DECLARE SUB PETS0 ()
DECLARE SUB LAB0 ()
DECLARE SUB ICECREAM0 ()
DECLARE SUB MAP1 ()
DECLARE SUB LAB1 ()
DECLARE SUB PETS1 ()
DECLARE SUB SHOP1 ()
DECLARE SUB POLICE1 ()
DECLARE SUB DINER1 ()
DECLARE SUB HOUSE1 ()
DECLARE SUB MUSEUM1 ()
DECLARE SUB MURDERSCENE1 ()
DECLARE SUB THANKS ()
REM Austin Smith
REM Start Date 4-27-2004
REM End Date 5-18-2004
REM FINAL PROJECT : GAME : "MURDER MYSTERY"

REM This defines shared variables or arrays throughout the game.
   COMMON SHARED Q$, W$, E$, Z$, V, B, N, a
   DIM SHARED C(1 TO 8)
REM This sets all the places variables at zero:
   C(1) = 0
   C(2) = 0
   C(3) = 0
   C(4) = 0
   C(5) = 0
   C(6) = 0
   C(7) = 0
   C(8) = 0
   V = 0
   B = 0
   N = 0
   a = 0
REM THIS FIXS THE STACK SPACE PROBLEM - PROGRAM WOULD NOT RUN WITHOUT THIS!!!
CLS
SCREEN 12
PRINT "PLEASE ENTER THE NUMBER 25000.  YOU MUST ENTER IT EXACTLY OR ELSE THE GAME WILL NOT RUN!!!"
INPUT "stack number: "; x
CLEAR , , x

REM This is the title screen.
CLS
SCREEN 12
LOCATE 3, 35: COLOR 15: PRINT "Welcome to ";
REM This is the word MURDER:
   REM This is the M:
      LINE (40, 180)-(40, 100), 4
      LINE (40, 100)-(70, 140), 4
      LINE (70, 140)-(100, 100), 4
      LINE (100, 100)-(100, 180), 4
   REM This is the U:
      LINE (120, 100)-(120, 180), 4
      LINE (120, 180)-(180, 180), 4
      LINE (180, 180)-(180, 100), 4
   REM This is the R:
      LINE (200, 100)-(200, 180), 4
      LINE (200, 100)-(260, 100), 4
      LINE (260, 100)-(260, 140), 4
      LINE (260, 140)-(200, 140), 4
      LINE (220, 140)-(260, 180), 4
   REM This is the D:
      LINE (280, 100)-(280, 180), 4
      LINE (280, 180)-(340, 160), 4
      LINE (340, 160)-(340, 120), 4
      LINE (340, 120)-(280, 100), 4
   REM This is the E:
      LINE (360, 100)-(360, 180), 4
      LINE (360, 180)-(420, 180), 4
      LINE (360, 140)-(400, 140), 4
      LINE (360, 100)-(420, 100), 4
   REM This is the R:
      LINE (440, 100)-(500, 100), 4
      LINE (500, 100)-(500, 140), 4
      LINE (500, 140)-(440, 140), 4
      LINE (440, 100)-(440, 180), 4
      LINE (460, 140)-(500, 180), 4
REM This is the word MYSTERY:
   REM This is the M:
      LINE (60, 220)-(60, 300), 4
      LINE (60, 220)-(90, 260), 4
      LINE (90, 260)-(120, 220), 4
      LINE (120, 220)-(120, 300), 4
   REM This is the Y:
      LINE (140, 220)-(170, 260), 4
      LINE (170, 260)-(170, 300), 4
      LINE (170, 260)-(200, 220), 4
   REM This is the S:
      LINE (220, 220)-(280, 300), 4, B
      LINE (220, 260)-(280, 260), 4
      LINE (220, 261)-(220, 299), 0
      LINE (280, 221)-(280, 259), 0
   REM This is the T:
      LINE (300, 220)-(360, 220), 4
      LINE (330, 220)-(330, 300), 4
   REM This is the E:
      LINE (380, 220)-(440, 220), 4
      LINE (380, 220)-(380, 300), 4
      LINE (380, 300)-(440, 300), 4
      LINE (380, 260)-(420, 260), 4
   REM This is the R:
      LINE (460, 220)-(520, 220), 4
      LINE (520, 220)-(520, 260), 4
      LINE (520, 260)-(460, 260), 4
      LINE (460, 260)-(520, 300), 4
      LINE (460, 220)-(460, 300), 4
   REM This is the Y:
      LINE (540, 220)-(570, 260), 4
      LINE (570, 260)-(570, 300), 4
      LINE (570, 260)-(600, 220), 4
REM This is the police car:
      REM This is the "body" of the car:
         LINE (500, 170)-(500, 180), 15
         LINE (500, 180)-(510, 180), 15
         CIRCLE (515, 180), 5, 15
         LINE (520, 180)-(530, 180), 15
         CIRCLE (535, 180), 5, 15
         LINE (540, 180)-(550, 180), 15
         LINE (550, 180)-(550, 170), 15
         LINE (550, 170)-(540, 170), 15
         LINE (540, 170)-(535, 160), 15
         LINE (535, 160)-(520, 160), 15
         LINE (520, 160)-(510, 170), 15
         LINE (510, 170)-(500, 170), 15
         PAINT (530, 170), 15
         LINE (552, 178)-(552, 168), 15
         LINE (552, 178)-(550, 180), 15
         LINE (552, 168)-(542, 168), 15
         LINE (552, 168)-(550, 170), 15
         LINE (542, 168)-(537, 158), 15
         LINE (542, 168)-(540, 170), 15
         LINE (537, 158)-(522, 158), 15
         LINE (537, 158)-(535, 160), 15
         LINE (522, 158)-(520, 160), 15
         LINE (511, 168)-(502, 168), 15
         LINE (502, 168)-(500, 170), 15
         PAINT (551, 178), 15
         PAINT (548, 169), 15
         PAINT (541, 167), 15
         PAINT (535, 159), 15
         PAINT (502, 169), 15
      REM This is the blue line across the car:
         LINE (500, 172)-(550, 173), 1, BF
      REM This is the yellow front headlight on the car:
         LINE (500, 173)-(504, 177), 14, BF
      REM This is the red back light:
         LINE (550, 173)-(547, 177), 4, BF
      REM These are the two doors on the side of the car:
         LINE (528, 160)-(528, 180), 0
      REM Thes are the two windows on the side of the car:
         REM This is the left window:
            LINE (526, 160)-(526, 170), 0
            LINE (526, 170)-(512, 170), 0
            LINE (512, 170)-(522, 160), 0
         REM This is the right window:
            LINE (530, 160)-(530, 170), 0
            LINE (530, 170)-(538, 170), 0
            LINE (538, 170)-(533, 160), 0
      REM These are the tires of the car:
         REM This is the left tire:
            CIRCLE (515, 180), 5, 0
            PAINT (515, 180), 0
            CIRCLE (515, 180), 2, 7
            PAINT (515, 180), 7
         REM This is the right tire:
            CIRCLE (535, 180), 5, 0
            PAINT (535, 180), 0
            CIRCLE (535, 180), 2, 7
            PAINT (535, 180), 7
      REM This is the outline for the car:
         LINE (500, 170)-(500, 180), 0
         LINE (500, 180)-(510, 180), 0
         LINE (520, 180)-(530, 180), 0
         LINE (540, 180)-(550, 180), 0
         LINE (550, 180)-(550, 170), 0
         LINE (550, 170)-(540, 170), 0
         LINE (540, 170)-(535, 160), 0
         LINE (535, 160)-(520, 160), 0
         LINE (520, 160)-(510, 170), 0
         LINE (510, 170)-(500, 170), 0
         LINE (552, 178)-(552, 168), 0
         LINE (552, 178)-(550, 180), 0
         LINE (552, 168)-(542, 168), 0
         LINE (552, 168)-(550, 170), 0
         LINE (542, 168)-(537, 158), 0
         LINE (542, 168)-(540, 170), 0
         LINE (537, 158)-(522, 158), 0
         LINE (537, 158)-(535, 160), 0
         LINE (522, 158)-(520, 160), 0
         LINE (511, 168)-(502, 168), 0
         LINE (502, 168)-(500, 170), 0
REM This tells the user who created the game:
   LOCATE 22, 30: COLOR 15: PRINT "Created By: Austin Smith"
REM This turns my name green (like the names in the game):
   LOCATE 22, 42: COLOR 10: PRINT "Austin Smith - May 2004"
LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
REM This makes the light blink on the police car and lets the screen go until a key is hit.
DO
   LINE (525, 156)-(530, 159), 12, BF
   SLEEP 1
   LINE (525, 156)-(530, 159), 9, BF
   SLEEP 1
LOOP WHILE INKEY$ = ""
REM This is the screen after the title screen that asks the user a few questions:
CLS
SCREEN 12
REM This adds the border:
   LINE (0, 0)-(639, 479), 9, B
REM These are the questions:
LOCATE 2, 2: COLOR 15: PRINT "Welcome to ";
COLOR 4: PRINT "Murder Mystery";
COLOR 15: PRINT "!  Before beginning the game, please answer the"
LOCATE 3, 2: PRINT "following questions:"
LOCATE 5, 2: PRINT "Have you ever played this game before?  (Please answer yes or no.)"
LOCATE 6, 2: COLOR 10: INPUT Q$
IF Q$ = "YES" OR Q$ = "yes" OR Q$ = "Yes" THEN
   LOCATE 8, 2: COLOR 15: PRINT "You can't play more than once!  You will already know who comitted the murder!"
   LOCATE 9, 2: PRINT "Do you wish to continue anyways";
   COLOR 10: INPUT Q$
   IF Q$ = "NO" OR Q$ = "no" OR Q$ = "No" THEN
      THANKS
      END
   END IF
END IF
LOCATE 8, 2: COLOR 0: PRINT "                                                                              "
LOCATE 9, 2: COLOR 0: PRINT "                                                                            "
LOCATE 8, 2: COLOR 15: PRINT "What is your first name? Enter as you would like to see it during the game."
LOCATE 9, 2: COLOR 10: INPUT W$
LOCATE 11, 2: COLOR 15: PRINT "What is your last name? Enter as you would like to see it during the game."
LOCATE 12, 2: COLOR 10: INPUT E$
LOCATE 14, 2: COLOR 15: PRINT "Now that we have your name, let's go over the instructions on how to play."
LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
WHILE INKEY$ = ""
WEND
REM This is the Instruction and Introduction screen:
CLS
SCREEN 12
REM This adds the border:
   LINE (0, 0)-(639, 479), 9, B
REM These are the instructions:
LOCATE 2, 35: COLOR 11: PRINT "INSTURCTIONS"
LOCATE 4, 2: COLOR 4: PRINT "Murder Mystery";
COLOR 15: PRINT " is a game in which you are Detective ";
COLOR 10: PRINT W$; " "; E$
LOCATE 5, 2: COLOR 15: PRINT "in the community of Cove City. The body of a local resident has been found on"
LOCATE 6, 2: PRINT "the outskirts of the town in the desert and your services are needed.  As you"
LOCATE 7, 2: PRINT "gather information on the case you will have to go to various locations"
LOCATE 8, 2: PRINT "within a section of the city.  A map of this section is displayed when"
LOCATE 9, 2: PRINT "you leave an area or are about to enter an area.  It shows all the possible"
LOCATE 10, 2: PRINT "locations that you can investigate.  At these locations you will encounter"
LOCATE 11, 2: PRINT "different people you will have to talk to and question in order to gain"
LOCATE 12, 2: PRINT "information.  Location names will always be displayed in red and"
LOCATE 13, 2: PRINT "character's names will always be displayed in green.  Remember you can"
LOCATE 14, 2: PRINT "revisit locations - more information can be found sometimes on a later"
LOCATE 15, 2: PRINT "trip to the same place.  This is because you gather information as you"
LOCATE 16, 2: PRINT "go, and gain the ability to ask more questions along with this.  It is"
LOCATE 17, 2: PRINT "recommended that you keep a sheet of paper and pencil with you while"
LOCATE 18, 2: PRINT "you are playing to put down notes on the suspects.  The rest of the game"
LOCATE 19, 2: PRINT "play will be explained as you play.  You can end the game at anytime once"
LOCATE 20, 2: PRINT "you think you know who the muderer is.  It is reccommended that you find"
LOCATE 21, 2: PRINT "out as much information from all places and characters that you can though"
LOCATE 22, 2: PRINT "first.  A prompt will ask you if you would like to end the game or"
LOCATE 23, 2: PRINT "continue, at everytime you leave a building or location.  Simply answer"
LOCATE 24, 2: PRINT "yes or no.  When you are finished, a screen will display all the suspects"
LOCATE 25, 2: PRINT "names, then it will ask you who you think the murderer is.  Answer"
LOCATE 26, 2: PRINT "correctly and you win the game.  Answer incorrectly and you lose."
LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
WHILE INKEY$ = ""
WEND
CLS
SCREEN 12
REM This adds the border:
   LINE (0, 0)-(639, 479), 9, B
REM These are the instructions CONTINUED:
LOCATE 2, 30: COLOR 11: PRINT "INSTURCTIONS - CONTINUED"
LOCATE 3, 2: COLOR 15: PRINT "The muderer along with an explanation of his motives will be displayed"
LOCATE 4, 2: PRINT "wheter you win or lose at the end.  This means you can only play the game"
LOCATE 5, 2: PRINT "once - so make sure you know who the muderer is before finishing."
LOCATE 7, 2: COLOR 15: PRINT "Alright then, ";
COLOR 10: PRINT ; W$;
COLOR 15: PRINT " let's go to the mini map of the section of"
LOCATE 8, 2: PRINT "Cove City that you will be investigating."
LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
WHILE INKEY$ = ""
WEND
MAP1

SUB DINER1
CLS
SCREEN 12
REM This is the closed sign for the diner:
   LOCATE 15, 35: COLOR 4: PRINT "CLOSED"
WHILE INKEY$ = ""
WEND
END SUB

SUB FINISH
CLS
SCREEN 12
REM These are the final screens of the game:

REM This adds the border:
   LINE (0, 0)-(639, 479), 9, B
LOCATE 2, 2: COLOR 10: PRINT "You can't go back after this.  Are you sure you know who the murder is? "
LOCATE 3, 2: PRINT "(enter yes to continue or no to go back to the mini-map)."
LOCATE 4, 2: INPUT S$
IF S$ = "NO" OR S$ = "no" OR S$ = "No" THEN MAP1
LOCATE 6, 2: COLOR 15: PRINT "Ok then.  Here's a list of all the suspects.  Find the ones you think took"
LOCATE 7, 2: PRINT "a part in the murder and make sure you know how to spell the name."
LOCATE 8, 2: PRINT "Remember David could have comitted suicide too."
LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
WHILE INKEY$ = ""
WEND
CLS
SCREEN 12
LINE (0, 0)-(639, 479), 9, B
LOCATE 2, 2: COLOR 15: PRINT "David Hall - Lab Assitant and Murder Victim"
LOCATE 3, 2: PRINT "Kelly Hall - David Hall's Wife"
LOCATE 4, 2: PRINT "Mike Hoover - Police Officer"
LOCATE 5, 2: PRINT "Alison Larson - Police Officer"
LOCATE 6, 2: PRINT "Jon Stone - Owner of Jon's Lab of Time Travel."
LOCATE 7, 2: PRINT "William Baker - Lab Assistant"
LOCATE 8, 2: PRINT "Ben Baskin - Ice Cream Shop Owner"
LOCATE 9, 2: PRINT "Jerry Robins - Ice Cream Shop Owner"
LOCATE 10, 2: PRINT "Jessica Anderson - Employee at Scott's Shop"
LOCATE 11, 2: PRINT "Scott Simon - Owner of Scott's Shop"
LOCATE 12, 2: PRINT "Matt Kistler - Pet Store Owner"
LOCATE 13, 2: PRINT "Ashley Killer - David Hall's Neighbor"
LOCATE 14, 2: PRINT "Jacob Killer - David Hall's Neighbor"
LOCATE 15, 2: PRINT "Tom Benson - Kelly's Boyfriend"
LOCATE 16, 2: PRINT "George Tompson - Diner Owner"
LOCATE 17, 2: PRINT "Bryan Smith - Museum Scientist"
LOCATE 18, 2: PRINT "Lindsey Lincoln - Museum Scientist"
LOCATE 19, 2: PRINT "Sean Miller - Diner Customer"
LOCATE 20, 2: PRINT "Danielle Johnson - Waitress"
LOCATE 21, 2: PRINT "Sam Brunner - Animal Caretaker"
LOCATE 22, 2: PRINT "Bob Smith - Strange Guy that lives in the desert"
LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
WHILE INKEY$ = ""
WEND
CLS
SCREEN 12
LINE (0, 0)-(639, 479), 9, B
LOCATE 2, 2: COLOR 15: PRINT "The following names you enter will determine if you have the correct answer. "
LOCATE 3, 2: PRINT "Enter in all capital letters and make sure the name is spelt correctly."
LOCATE 5, 2: COLOR 10: PRINT "Please enter the name of the murderer:"
LOCATE 6, 2: INPUT D$
LOCATE 8, 2: PRINT "Please enter the name of the accomplice.  If you don't think there"
LOCATE 9, 2: PRINT "was an accomplice enter NONE."
LOCATE 10, 2: INPUT F$
IF D$ = "WILLIAM BAKER" AND F$ = "NONE" THEN
LOCATE 12, 20: COLOR 11: PRINT "YOU'RE CORRECT!!!  YOU CAUGHT THE MUDERER!!!"
LOCATE 13, 2: PRINT "The murderer was William Baker and there was no accomplice!"
END IF
IF D$ <> "WILLIAM BAKER" OR F$ <> "NONE" THEN
LOCATE 12, 20: COLOR 4: PRINT "YOU'RE WRONG!  THE MURDERER GOT AWAY!"
LOCATE 13, 2: PRINT "The real murderer was William Baker and there was no accomplice!"
END IF
LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
WHILE INKEY$ = ""
WEND
CLS
SCREEN 12
LINE (0, 0)-(639, 479), 9, B
LOCATE 2, 2: COLOR 10: PRINT "Explanation:"
LOCATE 3, 2: COLOR 15: PRINT "William Baker found the e-mail that David Hall sent to the museum scientists"
LOCATE 4, 2: PRINT "about giving them information on the time machine.  Baker was very angry"
LOCATE 5, 2: PRINT "about this since Jon Stone always treated Hall better than him.  Stone"
LOCATE 6, 2: PRINT "refused to fire Hall.  Baker decided to get rid of Hall before the information"
LOCATE 7, 2: PRINT "on their invention got out.  On the night of the murder Baker sent Stone to"
LOCATE 8, 2: PRINT "get gloves at the local shop.  He told Stone that they were for an experiment."
LOCATE 9, 2: PRINT "After Stone returned with the gloves and went home, Baker got a vanilla ice"
LOCATE 10, 2: PRINT "cream cone and followed Hall into the desert on his way to the digsite. "
LOCATE 11, 2: PRINT "Baker stopped Hall and casually talked to him.  Next he pulled out a gun with"
LOCATE 12, 2: PRINT "the gloves on and shot him.  Jacob Killer saw this from the road in the"
LOCATE 13, 2: PRINT "darkness and thought he saw three people.  One actually being the cactus the"
LOCATE 14, 2: PRINT "two were standing next to.  The cactus Jacob mistook for Kelly Hall,"
LOCATE 15, 2: PRINT "David's angry wife with green hair.  William Baker then left the vanilla ice"
LOCATE 16, 2: PRINT "cream cone to frame Stone for the murder since he would be the most likely"
LOCATE 17, 2: PRINT "suspect.  Then Baker would be left alone with the credit for making the"
LOCATE 18, 2: PRINT "world's first time machine.  He didn't know that Stone never ordered a cone!"
LOCATE 20, 2: COLOR 10: PRINT "WASN'T THAT A GREAT STORY PEOPLE!"
LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
WHILE INKEY$ = ""
WEND
THANKS
END SUB

SUB HOUSE1
CLS
SCREEN 12
REM This is the house area:
REM This adds the border:
   LINE (0, 0)-(639, 479), 9, B
LOCATE 2, 2: COLOR 15: PRINT "You have just entered David Hall's neighborhood.  Who would you like to talk"
LOCATE 3, 2: PRINT "to?  Please enter 1, 2, or 3."
LOCATE 5, 2: PRINT "1.  Ashley and Jacob Killer"
LOCATE 6, 2: PRINT "2.  Kelly Hall"
LOCATE 7, 2: PRINT "3.  Sam Brunner"
LOCATE 9, 2: COLOR 10: INPUT J
IF J = 1 THEN
   IF V = 0 THEN ONE
   IF V = 1 THEN
      CLS
      SCREEN 12
      PRINT "You have already gone there.  Please hit any key to go back..."
      WHILE INKEY$ = ""
      WEND
      HOUSE1
   END IF
END IF
IF J = 2 THEN
   IF B = 0 THEN TWO
   IF B = 1 THEN
      CLS
      SCREEN 12
      PRINT "You have already gone there.  Please hit any key to go back..."
      WHILE INKEY$ = ""
      WEND
      HOUSE1
   END IF
END IF
IF J = 3 THEN
   IF N = 0 THEN THREE
   IF N = 1 THEN
      CLS
      SCREEN 12
      PRINT "You have already gone there.  Please hit any key to go back..."
      WHILE INKEY$ = ""
      WEND
      HOUSE1
   END IF
END IF
END SUB

SUB ICECREAM0
REM This is the first look at the ice cream shop after walking in the door:
CLS
SCREEN 12
REM This is the back wall:
   LINE (0, 0)-(640, 180), 4, BF
REM This is the floor:
   LINE (0, 180)-(640, 320), 7, BF
   LINE (0, 180)-(640, 180), 0
REM This is the back door:
   LINE (40, 40)-(120, 180), 8, BF
   CIRCLE (110, 100), 3, 0
   PAINT (110, 100), 0
   LINE (40, 40)-(120, 180), 0, B
REM This is the guy in front eating the ice cream:
   CIRCLE (60, 240), 40, 14
   PAINT (60, 240), 14
   CIRCLE (60, 240), 40, 0
   LINE (60, 280)-(60, 320), 0
   LINE (60, 300)-(40, 320), 0
   LINE (60, 300)-(80, 300), 0
   LINE (80, 300)-(100, 280), 0
   CIRCLE (60, 260), 8, 4
   PAINT (60, 260), 4
   CIRCLE (60, 260), 8, 0
   CIRCLE (50, 230), 10, 15
   PAINT (50, 230), 15
   CIRCLE (50, 230), 10, 0
   CIRCLE (55, 235), 5, 0
   PAINT (55, 235), 0
   CIRCLE (70, 230), 10, 15
   PAINT (70, 230), 15
   CIRCLE (70, 230), 10, 0
   CIRCLE (75, 235), 5, 0
   PAINT (75, 235), 0
   PAINT (79, 236), 0
   PAINT (59, 236), 0
REM This is the ice cream cone:
   CIRCLE (110, 275), 10, 15
   PAINT (110, 275), 15
   CIRCLE (110, 275), 10, 0
   LINE (100, 280)-(120, 280), 6
   LINE (120, 280)-(110, 300), 6
   LINE (110, 300)-(100, 280), 6
   PAINT (110, 290), 6
   LINE (100, 280)-(120, 280), 0
   LINE (120, 280)-(110, 300), 0
   LINE (110, 300)-(100, 280), 0
REM This is the counter:
   LINE (140, 160)-(420, 170), 7, BF
   LINE (140, 170)-(420, 240), 15, BF
   LINE (140, 160)-(420, 170), 0, B
   LINE (140, 170)-(420, 240), 0, B
   LINE (140, 160)-(420, 160), 7
   LINE (420, 160)-(440, 140), 7
   LINE (440, 140)-(160, 140), 7
   LINE (160, 140)-(140, 160), 7
   PAINT (200, 150), 7
   LINE (140, 160)-(420, 160), 0
   LINE (420, 160)-(440, 140), 0
   LINE (440, 140)-(160, 140), 0
   LINE (160, 140)-(140, 160), 0
   LINE (420, 170)-(440, 150), 15
   LINE (440, 150)-(440, 220), 15
   LINE (440, 220)-(420, 240), 15
   LINE (420, 240)-(420, 170), 15
   PAINT (430, 190), 15
   LINE (420, 170)-(420, 160), 7
   LINE (440, 140)-(420, 160), 7
   LINE (440, 140)-(440, 150), 7
   LINE (440, 150)-(420, 170), 7
   PAINT (430, 159), 7
   LINE (420, 170)-(420, 160), 0
   LINE (440, 140)-(420, 160), 0
   LINE (440, 140)-(440, 150), 0
   LINE (440, 150)-(420, 170), 0
   LINE (420, 170)-(440, 150), 0
   LINE (440, 150)-(440, 220), 0
   LINE (440, 220)-(420, 240), 0
   LINE (420, 240)-(420, 170), 0
REM These are the ice cream containers:
   LINE (160, 145)-(200, 155), 6, BF
   LINE (220, 145)-(260, 155), 15, BF
   LINE (280, 145)-(320, 155), 12, BF
   LINE (160, 145)-(200, 155), 0, B
   LINE (220, 145)-(260, 155), 0, B
   LINE (280, 145)-(320, 155), 0, B
REM This is the cash register:
   LINE (360, 110)-(400, 150), 8, BF
   LINE (400, 150)-(420, 145), 8
   LINE (420, 145)-(420, 130), 8
   LINE (420, 130)-(400, 120), 8
   PAINT (410, 140), 8
   LINE (360, 110)-(400, 150), 0, B
   LINE (400, 150)-(420, 145), 0
   LINE (420, 145)-(420, 130), 0
   LINE (420, 130)-(400, 120), 0
REM This is the table on the right:
   LINE (520, 200)-(640, 200), 6
   LINE (640, 200)-(640, 210), 6
   LINE (640, 210)-(620, 230), 6
   LINE (620, 230)-(500, 230), 6
   LINE (500, 230)-(500, 220), 6
   LINE (500, 220)-(520, 200), 6
   LINE (510, 230)-(520, 280), 6, BF
   LINE (530, 230)-(540, 260), 6, BF
   LINE (600, 230)-(610, 280), 6, BF
   LINE (630, 220)-(630, 260), 6
   LINE (630, 260)-(620, 260), 6
   LINE (620, 260)-(620, 230), 6
   PAINT (560, 210), 6
   PAINT (625, 230), 6
REM This outlines the table:
   LINE (620, 220)-(640, 200), 0
   LINE (520, 200)-(640, 200), 0
   LINE (640, 200)-(640, 210), 0
   LINE (640, 210)-(620, 230), 0
   LINE (620, 230)-(500, 230), 0
   LINE (500, 230)-(500, 220), 0
   LINE (500, 220)-(520, 200), 0
   LINE (510, 230)-(520, 280), 0, B
   LINE (530, 230)-(540, 260), 0, B
   LINE (600, 230)-(610, 280), 0, B
   LINE (630, 220)-(630, 260), 0
   LINE (630, 260)-(620, 260), 0
   LINE (620, 260)-(620, 230), 0
   LINE (500, 220)-(620, 220), 0
REM This is the window on the wall:
   LINE (490, 50)-(630, 130), 8, BF
   LINE (500, 60)-(620, 120), 11, BF
   LINE (490, 50)-(630, 130), 0, B
   LINE (500, 60)-(620, 120), 0, B
REM This is the sign behind BEN BASKIN:
   LINE (160, 20)-(300, 120), 0, BF
   LINE (160, 20)-(300, 120), 15, B
   LOCATE 4, 25: COLOR 15: PRINT "CHOCOLATE"
   LOCATE 5, 25: PRINT "VANILLA"
   LOCATE 6, 25: PRINT "STRAWBERRY"
REM This is BEN BASKIN:
   LINE (340, 100)-(340, 140), 0
   LINE (340, 110)-(320, 140), 0
   LINE (340, 110)-(360, 140), 0
   CIRCLE (340, 80), 20, 14
   PAINT (340, 80), 14
   CIRCLE (340, 80), 20, 0
REM This is the box asking the question if you would like to go forward:
   REM This is the border:
      LINE (0, 322)-(639, 479), 9, B
   REM This is the text:
      LOCATE 22, 2: COLOR 15: PRINT "Would you like to go to the counter? (yes or no)"
      LOCATE 23, 2: COLOR 10: INPUT J$
      IF J$ = "Yes" OR J$ = "YES" OR J$ = "yes" THEN
CLS
SCREEN 12
REM This is the inside of the ice cream shop:

REM This is the back wall:
   LINE (0, 0)-(640, 320), 4, BF
REM This is the counter:
   LINE (0, 260)-(640, 320), 9, BF
   LINE (0, 260)-(640, 260), 0
REM These are the ice cream containers:
   LINE (100, 280)-(0, 320), 15, BF
   LINE (100, 280)-(0, 320), 0, B
   LINE (120, 280)-(240, 320), 12, BF
   LINE (120, 280)-(240, 320), 0, B
REM This is the cash register:
   LINE (480, 200)-(560, 300), 8, BF
   LINE (560, 300)-(600, 240), 8, BF
   LINE (600, 240)-(560, 220), 8
   PAINT (570, 230), 8
   LINE (480, 200)-(560, 300), 0, B
   LINE (560, 300)-(600, 240), 0, B
   LINE (600, 240)-(560, 220), 0
   LINE (561, 240)-(599, 240), 8
REM This is BEN BASKIN:
   LINE (340, 160)-(340, 260), 0
   LINE (340, 180)-(300, 240), 0
   LINE (300, 240)-(280, 200), 0
   LINE (340, 180)-(380, 260), 0
   CIRCLE (280, 200), 5, 14
   PAINT (280, 200), 14
   CIRCLE (280, 200), 5, 0
   CIRCLE (340, 100), 60, 14
   PAINT (340, 100), 14
   CIRCLE (340, 100), 60, 0
REM These are the numbers on the cash register:
   LOCATE 14, 62: PRINT "$4.00"
         IF C(2) = 0 THEN
REM These are the dialog boxes:
   REM This is the border:
      LINE (0, 322)-(639, 479), 9, B
   REM This is the 1st box:
      LOCATE 22, 2: COLOR 10: PRINT "BEN BASKIN:"
      LOCATE 23, 2: COLOR 15: PRINT "Hello!  I'm Ben Baskin, would you like some ice cream?  We have chocolate,"
      LOCATE 24, 2: PRINT "vanilla, and strawberry."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 2nd box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "No thank you.  I'm the detective investigating the murder of David Hall.  You"
      LOCATE 24, 2: PRINT "wouldn't happen to know anything that might help me with the case, would you?"
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND

   REM This is the 3rd box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "BEN BASKIN:"
      LOCATE 23, 2: COLOR 15: PRINT "I'm sorry, but I've never heard of anyone by that name.  It's possible that"
      LOCATE 24, 2: PRINT "he may have come in here for ice cream, but I can't remember everyone that"
      LOCATE 25, 2: PRINT "walks in that door.  (laughs)."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 4th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "Hmm...  He worked right across the street at Jon's Lab of Time Travel.  I"
      LOCATE 24, 2: PRINT "thought you might have seen him."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 5th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "BEN BASKIN:"
      LOCATE 23, 2: COLOR 15: PRINT "Well now that you mention the lab, I always see the lab owner a lot in here."
      LOCATE 24, 2: PRINT "His name is Jon Stone.  I never talk to him much or even take his order.  My"
      LOCATE 25, 2: PRINT "partner Jerry always talks to him when he comes in.  He might know some"
      LOCATE 26, 2: PRINT "information that could help you."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 6th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "When would I be able to talk to this Jerry?"
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 7th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "BEN BASKIN:"
      LOCATE 23, 2: COLOR 15: PRINT "He's in the back right now busy with things.  If you come back later I'm sure"
      LOCATE 24, 2: PRINT "that he would be happy to talk to you."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 8th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "Alright then.  I will see you later.  Thank you!"
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
      C(2) = C(2) + 1
     MAP1
         END IF
         IF C(2) = 1 AND C(4) <> 2 THEN
REM These are the dialog boxes:
   REM This is the border:
      LINE (0, 322)-(639, 479), 9, B
   REM This is the 1st box:
      LOCATE 22, 2: COLOR 10: PRINT "BEN BASKIN:"
      LOCATE 23, 2: COLOR 15: PRINT "Oh hello detective!  I think Jerry is still busy.  Why don't you come back"
      LOCATE 24, 2: PRINT "later."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
      MAP1
         END IF
         IF C(2) = 1 AND C(4) = 2 THEN
REM This is JERRY ROBINS
   LINE (120, 160)-(120, 260), 0
   LINE (80, 260)-(120, 180), 0
   LINE (120, 180)-(160, 260), 0
   CIRCLE (120, 100), 60, 14
   PAINT (120, 100), 14
   CIRCLE (120, 100), 60, 0
REM These are the dialog boxes:
   REM This is the border:
      LINE (0, 322)-(639, 479), 9, B
   REM This is the 1st box:
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "Well now, this must be Jerry."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 2nd box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "BEN BASKIN:"
      LOCATE 23, 2: COLOR 15: PRINT "Yes this is my business partner, Jerry Robins."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 3rd box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "JERRY ROBINS:"
      LOCATE 23, 2: COLOR 15: PRINT "I heard that you would like to know about my connection to Jon Stone."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 4th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "That's correct."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 5th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "JERRY ROBINS:"
      LOCATE 23, 2: COLOR 15: PRINT "Well I know Jon very well.  He comes in almost everyday to get a scoop of"
      LOCATE 24, 2: PRINT "vanilla ice cream.  He tells us it's his favorite.  He would never order a"
      LOCATE 25, 2: PRINT "cone with it however.  As to him and the murder I highly doubt that he had"
      LOCATE 26, 2: PRINT "anything to do with it - he is a very nice man."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 6th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "I talked to the local shop owner in town here.  It seems that yesterday Jon"
      LOCATE 24, 2: PRINT "went there to buy some gloves for an experiment.  These gloves might have"
      LOCATE 25, 2: PRINT "something to do with David Hall's murder."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 7th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "JERRY ROBINS:"
      LOCATE 23, 2: COLOR 15: PRINT "I don't see what that has to do with me."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 8th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "The employee that helped Mr. Stone that night said she saw an ice cream spill"
      LOCATE 24, 2: PRINT "on his shirt.  Did he come in here at all yesterday?"
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 9th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "JERRY ROBINS:"
      LOCATE 23, 2: COLOR 15: PRINT "Well...yes...he did.  Yesterday afternoon he ordered a scoop of vanilla ice"
      LOCATE 24, 2: PRINT "cream as usual."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 10th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "Thank you for your help Mr. Robbins."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
      C(2) = C(2) + 1
      MAP1
         END IF
         IF C(2) = 2 THEN
REM These are the dialog boxes:
   REM This is the border:
      LINE (0, 322)-(639, 479), 9, B
   REM This is the 1st box:
      LOCATE 22, 2: COLOR 10: PRINT "BEN BASKIN:"
      LOCATE 23, 2: COLOR 15: PRINT "Hello again!  Would you care for some ice cream?"
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 2nd box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "No thank you.  Do you have any other information on the murder that I"
      LOCATE 24, 2: PRINT "could use?"
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 3rd box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "BEN BASKIN:"
      LOCATE 23, 2: COLOR 15: PRINT "No, sorry, I don't have any information at this time."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
      MAP1
         END IF
      END IF
      IF J$ = "NO" OR J$ = "no" OR J$ = "No" THEN MAP1
END SUB

SUB LAB1
CLS
SCREEN 12
REM This is the inside of the lab:
IF C(7) <> 2 THEN
   LOCATE 15, 35: COLOR 4: PRINT "OUT.  WILL BE BACK LATER."
   WHILE INKEY$ = ""
   WEND
END IF
IF C(1) = 1 THEN
   LOCATE 15, 35: COLOR 4: PRINT "BE BACK IN A FEW DAYS."
   WHILE INKEY$ = ""
   WEND
END IF
IF C(7) = 2 AND C(1) = 0 THEN
REM This is the back wall:
   LINE (0, 0)-(640, 200), 8, BF
REM This is the floor:
   LINE (640, 200)-(0, 320), 7, BF
   LINE (640, 200)-(0, 200), 0
REM This is the desk:
   LINE (0, 220)-(60, 280), 0, BF
   LINE (60, 280)-(100, 240), 0
   LINE (100, 240)-(100, 180), 0
   LINE (100, 180)-(60, 220), 0
   PAINT (80, 220), 0
   LINE (0, 200)-(80, 220), 6, BF
   LINE (80, 220)-(120, 180), 6
   LINE (120, 180)-(120, 160), 6
   LINE (120, 160)-(0, 160), 6
   PAINT (40, 180), 6
   PAINT (100, 190), 6
   LINE (0, 200)-(80, 220), 0, B
   LINE (80, 220)-(120, 180), 0
   LINE (120, 180)-(120, 160), 0
   LINE (120, 160)-(0, 160), 0
REM This is Jon Stone:
   CIRCLE (300, 220), 60, 14
   PAINT (300, 220), 14
   CIRCLE (300, 220), 60, 0
   LINE (300, 280)-(300, 320), 0
   LINE (300, 300)-(280, 320), 0
   LINE (300, 300)-(320, 320), 0
REM This is William Baker:
   CIRCLE (160, 220), 60, 14
   PAINT (160, 220), 14
   CIRCLE (160, 220), 60, 0
   LINE (160, 280)-(160, 320), 0
   LINE (160, 300)-(140, 320), 0
   LINE (160, 300)-(180, 320), 0
REM This is the time machine
   REM This is the circle thing on the time machine.
      CIRCLE (560, 120), 60, 9
      PAINT (560, 120), 9
      CIRCLE (560, 120), 60, 0
   REM This is the black body of the time machine.
      LINE (380, 120)-(560, 240), 0, BF
      LINE (560, 120)-(560, 60), 0
      LINE (560, 120)-(620, 120), 0
   REM This is the wind shield on the time machine.
      LINE (380, 120)-(500, 180), 15, BF
      LINE (380, 120)-(380, 180), 0
      LINE (380, 120)-(500, 120), 0
   REM These are the blue box designs on the time machine.
      LINE (400, 200)-(420, 220), 9, BF
      LINE (440, 200)-(460, 220), 9, BF
      LINE (480, 200)-(500, 220), 9, BF
      LINE (520, 200)-(540, 220), 9, BF
      LINE (520, 160)-(540, 180), 9, BF
   REM This is the steering wheel.
      LINE (400, 180)-(420, 160), 7
      LINE (420, 160)-(430, 170), 7
      LINE (430, 170)-(420, 180), 7
      LINE (420, 180)-(400, 180), 7
      PAINT (420, 170), 7
      LINE (400, 180)-(420, 160), 0
      LINE (420, 160)-(430, 170), 0
      LINE (430, 170)-(420, 180), 0
      LINE (420, 180)-(400, 180), 0
      LINE (410, 150)-(440, 180), 8
      LINE (440, 180)-(450, 170), 8
      LINE (450, 170)-(420, 140), 8
      LINE (420, 140)-(410, 150), 8
      PAINT (430, 160), 8
      LINE (410, 150)-(440, 180), 0
      LINE (440, 180)-(450, 170), 0
      LINE (450, 170)-(420, 140), 0
      LINE (420, 140)-(410, 150), 0
REM This is the computer:
   LINE (20, 120)-(80, 180), 9, BF
   LINE (20, 120)-(80, 180), 0, B
   LINE (30, 130)-(70, 170), 15, BF
   LINE (30, 130)-(70, 170), 0, B
REM These are the dialog boxes:
   REM This is the border:
      LINE (0, 322)-(639, 479), 9, B
   REM This is the 1st box:
      LOCATE 22, 2: COLOR 10: PRINT "JON STONE:"
      LOCATE 23, 2: COLOR 15: PRINT "Oh hello, you must be the detective working on David's case."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 2nd box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "Yes, I am.  You are..."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 3rd box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "JON STONE:"
      LOCATE 23, 2: COLOR 15: PRINT "I'm Jon Stone, the owner of this lab.  David Hall was my lab assistant along"
      LOCATE 24, 2: PRINT "with William Baker here."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 4th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "WILLIAM BAKER:"
      LOCATE 23, 2: COLOR 15: PRINT "Hello.  If you have any questions for us detective, you will have to ask"
      LOCATE 24, 2: PRINT "them now.  We were leaving just as you walked in.  We just can't work at all"
      LOCATE 25, 2: PRINT "today after David's death."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 5th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "JON STONE:"
      LOCATE 23, 2: COLOR 15: PRINT "Yes, David was the best assistant I ever had.  I really liked him.  (Will"
      LOCATE 24, 2: PRINT "looks angered).  I didn't like him working at that digsite with the museum"
      LOCATE 25, 2: PRINT "scientists though..."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 6th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "Why is that Mr. Stone?"
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 7th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "WILLIAM BAKER:"
      LOCATE 23, 2: COLOR 15: PRINT "Well, those museum scientists want information on our time machine, so that"
      LOCATE 24, 2: PRINT "they can make their own and credit themselves for the work."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 8th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "JON STONE:"
      LOCATE 23, 2: COLOR 15: PRINT "Yes, when it's completed it will be a breakthrough in science.  Now if"
      LOCATE 24, 2: PRINT "you're finished with me, I would like to go home now.  I think I will"
      LOCATE 25, 2: PRINT "get a scoop of vanilla as a matter of fact...   Make sure you turn that"
      LOCATE 26, 2: PRINT "computer off once you're done Will."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
LINE (240, 200)-(360, 320), 7, BF
LINE (240, 200)-(360, 160), 8, BF
   REM This is the 9th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "WILLIAM BAKER:"
      LOCATE 23, 2: COLOR 15: PRINT "Him and his ice cream cones...  Anyways, I would like to leave myself at"
      LOCATE 24, 2: PRINT "the moment.  Is there anything else you needed detective?"
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 10th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "Well... I was wondering, you must have gloves here at a lab correct?"
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 11th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "WILLIAM BAKER:"
      LOCATE 23, 2: COLOR 15: PRINT "Yes... sometimes... why do you ask that?"
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 12th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "Well, the murderer left no fingerprints on the murder weapon and..."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 13th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "William Baker:"
      LOCATE 23, 2: COLOR 15: PRINT "Oh, I see.  Well that doesn't necessarily mean the person was using gloves."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 14th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "What do you mean?"
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 15th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "WILLIAM BAKER:"
      LOCATE 23, 2: COLOR 15: PRINT "Well with all the experiments we do, many are dangerous.  Jon melted his"
      LOCATE 24, 2: PRINT "fingerprints off a couple years ago in one."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 16th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "So you think Mr. Stone killed David?  He said he really liked him."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 17th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "WILLIAM BAKER:"
      LOCATE 23, 2: COLOR 15: PRINT "(quietly) ...yes always treated him better...  Jon found this e-mail"
      LOCATE 24, 2: PRINT "yesterday after David left."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 18th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 11:  PRINT "I found the rest of the papers on the machine.  Tell you everything"
      LOCATE 23, 2: PRINT "there is to know tomorrow morning. "
      LOCATE 24, 10: PRINT "- David"
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 19th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "WILLIAM BAKER:"
      LOCATE 23, 2: COLOR 15: PRINT "It was sent to the museum scientists.  Jon was very angery about it."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
   REM This is the 20th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "I see... well, I'll let you go now.  Thanks.  Bye."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
C(1) = C(1) + 1
END IF
END SUB

SUB MAP1
REM This is the mini map:
REM This is the green background:
   LINE (0, 0)-(640, 320), 2, BF
   REM This is the sidewalk in front of the building:
      LINE (65, 141)-(50, 159), 15
      LINE (50, 159)-(60, 159), 15
      LINE (60, 159)-(75, 141), 15
      LINE (75, 141)-(65, 141), 15
      PAINT (59, 150), 15
      LINE (58, 150)-(68, 150), 0
      LINE (65, 141)-(50, 159), 0
      LINE (50, 159)-(60, 159), 0
      LINE (60, 159)-(75, 141), 0
      LINE (75, 141)-(65, 141), 0
REM This is QBASIC Street:
   LINE (0, 320)-(640, 480), 0, BF
REM This is Time Ave:
   LINE (160, 0)-(200, 320), 0, BF
REM This is QBASIC STREET
   LINE (0, 160)-(640, 200), 0, BF
REM These are the yellow blocks on TIME AVE:
   FOR I = 0 TO 280 STEP 40
      LINE (179, 10 + I)-(181, 30 + I), 14, BF
   NEXT I
REM These are the yellow blocks on QBASIC STREET:
   FOR I = 0 TO 640 STEP 40
      LINE (10 + I, 179)-(30 + I, 181), 14, BF
   NEXT I
REM This is the intersection:
   LINE (160, 160)-(200, 200), 0, BF
REM These are the words QBASIC STREET:
   LOCATE 11, 15: COLOR 15: PRINT "QBASIC STREET"
REM These are the words Time Ave:
   LOCATE 1, 21: PRINT "T"
   LOCATE 2, 21: PRINT "I"
   LOCATE 3, 21: PRINT "M"
   LOCATE 4, 21: PRINT "E"
   LOCATE 6, 21: PRINT "A"
   LOCATE 7, 21: PRINT "V"
   LOCATE 8, 21: PRINT "E"
REM This is some of the sidewalk on QBASIC STREET:
   LINE (200, 80)-(640, 160), 15, BF
   FOR I = 0 TO 60 STEP 20
      LINE (200, 80 + I)-(640, 80 + I), 0
   NEXT I
   FOR I = 0 TO 400 STEP 20
      LINE (220 + I, 80)-(220 + I, 160), 0
   NEXT I
REM These are details for the road, like curbing and turns:
   CIRCLE (140, 140), 20, 0
   PAINT (150, 158), 0
   CIRCLE (140, 140), 19, 7
   CIRCLE (140, 140), 18, 7
   LINE (120, 120)-(140, 160), 2, BF
   LINE (120, 120)-(160, 140), 2, BF
   LINE (140, 160)-(0, 159), 7, BF
   LINE (160, 140)-(159, 0), 7, BF
   CIRCLE (220, 140), 20, 0
   PAINT (210, 158), 0
   CIRCLE (220, 140), 19, 7
   CIRCLE (220, 140), 18, 7
   LINE (240, 120)-(200, 140), 15, BF
   LINE (240, 120)-(220, 160), 15, BF
   LINE (200, 140)-(201, O), 7, BF
   LINE (220, 160)-(640, 159), 7, BF
   CIRCLE (220, 220), 20, 0
   PAINT (205, 205), 0
   CIRCLE (220, 220), 19, 7
   CIRCLE (220, 220), 18, 7
   LINE (240, 240)-(220, 200), 2, BF
   LINE (240, 240)-(200, 220), 2, BF
   LINE (220, 200)-(640, 201), 7, BF
   LINE (200, 220)-(201, 320), 7, BF
   LINE (220, 80)-(220, 158), 0
   LINE (240, 80)-(240, 158), 0
   LINE (202, 120)-(300, 120), 0
   LINE (202, 140)-(300, 140), 0
REM This is Jon's Lab of Time Travel:
   REM This is the front side of the building:
      LINE (20, 80)-(120, 140), 8, BF
   REM This is the right side of the building:
      LINE (120, 140)-(140, 120), 8
      LINE (140, 120)-(140, 60), 8
      LINE (140, 60)-(120, 80), 8
      PAINT (130, 90), 8
   REM This is the roof:
      LINE (140, 60)-(40, 60), 8
      LINE (40, 60)-(20, 80), 8
      PAINT (80, 70), 8
   REM This is the outline of the building:
      LINE (140, 60)-(40, 60), 0
      LINE (40, 60)-(20, 80), 0
      LINE (120, 140)-(140, 120), 0
      LINE (140, 120)-(140, 60), 0
      LINE (140, 60)-(120, 80), 0
      LINE (20, 80)-(120, 80), 0
      LINE (120, 80)-(120, 140), 0
      LINE (120, 140)-(20, 140), 0
      LINE (20, 140)-(20, 80), 0
   REM This is the sign outside the building:
      REM This is the top of the sign:
         LINE (5, 130)-(35, 150), 0, BF
      REM This is the sign post:
         LINE (15, 150)-(25, 156), 7, BF
         LINE (5, 150)-(35, 150), 0
         LINE (15, 150)-(25, 150), 0
         LINE (25, 150)-(25, 156), 0
         LINE (25, 156)-(15, 156), 0
         LINE (15, 156)-(15, 150), 0
   REM This is the word "LAB" on the sign:
      REM This is the letter L:
         LINE (10, 138)-(10, 145), 15
         LINE (10, 145)-(15, 145), 15
      REM This is the letter A:
         LINE (17, 145)-(20, 138), 15
         LINE (20, 138)-(23, 145), 15
         LINE (19, 142)-(21, 142), 15
      REM This is the letter B:
         LINE (25, 138)-(30, 142), 15, B
         LINE (25, 142)-(30, 145), 15, B
   REM These are the two windows on the front of the building:
      REM This is the first window:
         LINE (30, 105)-(50, 110), 14, BF
         LINE (30, 105)-(30, 110), 0
         LINE (30, 110)-(50, 110), 0
         LINE (50, 110)-(50, 105), 0
         LINE (50, 105)-(30, 105), 0
      REM This is the second window:
         LINE (90, 105)-(110, 110), 14, BF
         LINE (90, 105)-(110, 105), 0
         LINE (110, 105)-(110, 110), 0
         LINE (110, 110)-(90, 110), 0
         LINE (90, 105)-(90, 110), 0
   REM This is the door on the front of the building:
      LINE (65, 120)-(75, 140), 0, BF
      LINE (72, 130)-(74, 132), 15, BF


REM This is the desert area or murder scene:
   REM This is the tan background color:
      LINE (0, 201)-(159, 320), 6, BF
      CIRCLE (140, 220), 20, 0
      PAINT (150, 201), 0
      CIRCLE (140, 220), 18, 7
      CIRCLE (140, 220), 19, 7
      LINE (159, 220)-(120, 240), 6, BF
      LINE (120, 201)-(140, 240), 6, BF
      LINE (0, 201)-(140, 202), 7, BF
      LINE (159, 320)-(158, 220), 7, BF
   REM This is the cactus:
      REM This is the "trunk" of the cactus:
         CIRCLE (60, 265), 5, 2
         PAINT (60, 265), 2
         LINE (65, 265)-(65, 300), 2
         LINE (65, 300)-(55, 300), 2
         LINE (55, 300)-(55, 265), 2
         PAINT (60, 280), 2
      REM This is the right arm of the cactus:
         LINE (65, 275)-(67, 275), 2
         LINE (67, 275)-(70, 270), 2
         CIRCLE (72, 270), 2, 2
         PAINT (72, 270), 2, 2
         LINE (74, 270)-(67, 282), 2
         LINE (67, 282)-(65, 282), 2
         PAINT (66, 280), 2
      REM This is the left arm of the cactus:
         LINE (55, 278)-(53, 278), 2
         LINE (53, 278)-(50, 273), 2
         CIRCLE (48, 273), 2, 2
         PAINT (48, 273), 2
         LINE (46, 273)-(53, 285), 2
         LINE (53, 285)-(55, 285), 2
         PAINT (54, 283), 2
      REM This is the outline of the cactus
         CIRCLE (60, 265), 5, 0
         LINE (56, 266)-(64, 270), 2, BF
         LINE (65, 265)-(65, 300), 0
         LINE (65, 300)-(55, 300), 0
         LINE (55, 300)-(55, 265), 0
         LINE (65, 275)-(67, 275), 0
         LINE (67, 275)-(70, 270), 0
         LINE (74, 270)-(67, 282), 0
         LINE (67, 282)-(65, 282), 0
         LINE (55, 278)-(53, 278), 0
         LINE (53, 278)-(50, 273), 0
         LINE (46, 273)-(53, 285), 0
         LINE (53, 285)-(55, 285), 0
         CIRCLE (48, 273), 2, 0
         CIRCLE (72, 270), 2, 0
         LINE (72, 272)-(71, 272), 2
         LINE (48, 275)-(49, 275), 2
      REM This is the dirt below the cactus:
         CIRCLE (60, 307), 10, 6
         PAINT (60, 299), 6
         CIRCLE (60, 307), 10, 0
         LINE (50, 301)-(70, 317), 6, BF
   REM This are a few bushes in the desert area:
      FOR I = 0 TO 20 STEP 4
         LINE (20, 290)-(10 + I, 280), 10
         LINE (40, 230)-(30 + I, 220), 10
         LINE (100, 250)-(90 + I, 240), 10
      NEXT I
   REM This is the dirt under the bushes in the desert area:
      CIRCLE (20, 295), 5, 0
      CIRCLE (40, 235), 5, 0
      CIRCLE (100, 255), 5, 0
      LINE (15, 293)-(25, 300), 6, BF
      LINE (35, 233)-(45, 240), 6, BF
      LINE (95, 253)-(105, 260), 6, BF
REM This is the Ice Cream shop:
   REM This is the structure of the building:
      LINE (220, 60)-(320, 120), 4, BF
      LINE (220, 60)-(240, 40), 4
      LINE (240, 40)-(338, 40), 4
      LINE (338, 40)-(320, 60), 4
      LINE (338, 40)-(338, 100), 4
      LINE (338, 100)-(320, 120), 4
      PAINT (330, 60), 4
      PAINT (280, 50), 4
   REM This is the top of the building:
      LINE (240, 40)-(338, 40), 8
      LINE (338, 40)-(320, 60), 8
      LINE (320, 60)-(220, 60), 8
      LINE (220, 60)-(240, 40), 8
      PAINT (280, 50), 8
      LINE (240, 40)-(338, 40), 7
      LINE (338, 40)-(320, 60), 7
      LINE (320, 60)-(220, 60), 7
      LINE (220, 60)-(240, 40), 7
      LINE (240, 45)-(334, 45), 7
      LINE (240, 45)-(225, 60), 7
      PAINT (280, 41), 7
   REM This is the brick layout on the building:
      FOR I = 0 TO 56 STEP 2
         LINE (220, 62 + I)-(320, 62 + I), 0
      NEXT I
      FOR I = 0 TO 95 STEP 5
         LINE (225 + I, 60)-(225 + I, 120), 0
      NEXT I
      FOR I = 0 TO 56 STEP 2
         LINE (320, 62 + I)-(338, 42 + I), 0
      NEXT I
   REM These are the two windows on the ice cream shop:
      LINE (230, 90)-(250, 110), 14, BF
      LINE (290, 90)-(310, 110), 14, BF
      LINE (230, 90)-(250, 90), 0
      LINE (250, 90)-(250, 110), 0
      LINE (250, 110)-(230, 110), 0
      LINE (230, 110)-(230, 90), 0
      LINE (290, 90)-(310, 90), 0
      LINE (310, 90)-(310, 110), 0
      LINE (310, 110)-(290, 110), 0
      LINE (290, 110)-(290, 90), 0
   REM This is the door on the building:
      LINE (263, 100)-(277, 120), 8, BF
      LINE (263, 100)-(277, 100), 0
      LINE (263, 100)-(263, 120), 0
      LINE (263, 120)-(277, 120), 0
      LINE (277, 120)-(277, 100), 0
   REM This is the door knob:
      LINE (273, 110)-(275, 112), 0, BF
   REM This is the sign on the top of the building:
      LOCATE 5, 30: COLOR 15: PRINT "Ice Cream"
   REM This is the outline of the building:
      LINE (220, 60)-(240, 40), 0
      LINE (240, 40)-(338, 40), 0
      LINE (338, 40)-(320, 60), 0
      LINE (338, 40)-(338, 100), 0
      LINE (338, 100)-(320, 120), 0
      LINE (220, 60)-(320, 60), 0
      LINE (320, 60)-(320, 120), 0
      LINE (320, 120)-(220, 120), 0
      LINE (220, 120)-(220, 60), 0
      LINE (240, 45)-(334, 45), 0
      LINE (240, 45)-(225, 60), 0
      LINE (240, 40)-(240, 45), 0

REM This is the PET STORE:
   REM This is the structure of the building:
      LINE (340, 60)-(420, 120), 9, BF
      LINE (340, 60)-(360, 40), 9
      LINE (360, 40)-(438, 40), 9
      LINE (438, 40)-(420, 60), 9
      LINE (420, 120)-(438, 100), 9
      LINE (438, 100)-(438, 40), 9
      PAINT (400, 50), 9
      PAINT (430, 70), 9
   REM This makes the top of the building:
      LINE (340, 60)-(360, 40), 8
      LINE (360, 40)-(438, 40), 8
      LINE (438, 40)-(420, 60), 8
      LINE (340, 60)-(420, 60), 8
      PAINT (400, 50), 8
      LINE (360, 45)-(434, 45), 7
      LINE (360, 45)-(345, 60), 7
      LINE (340, 60)-(360, 40), 7
      LINE (360, 40)-(438, 40), 7
      LINE (438, 40)-(420, 60), 7
      LINE (340, 60)-(420, 60), 7
      PAINT (400, 42), 7
      LINE (360, 40)-(360, 45), 0
      LINE (360, 45)-(434, 45), 0
      LINE (360, 45)-(345, 60), 0
   REM This is the window on the building:
      LINE (350, 90)-(370, 110), 14, BF
      LINE (350, 90)-(370, 90), 0
      LINE (370, 90)-(370, 110), 0
      LINE (370, 110)-(350, 110), 0
      LINE (350, 110)-(350, 90), 0
   REM This is the door on the building:
      LINE (383, 100)-(397, 120), 8, BF
      LINE (383, 100)-(397, 100), 0
      LINE (397, 100)-(397, 120), 0
      LINE (397, 120)-(383, 120), 0
      LINE (383, 120)-(383, 100), 0
   REM This is the door knob:
      LINE (393, 110)-(395, 112), 0, BF
   REM This is the sign on the building:
      LOCATE 5, 46: COLOR 15: PRINT "Pets"
   REM This outlines the building:
      LINE (340, 60)-(360, 40), 0
      LINE (360, 40)-(438, 40), 0
      LINE (438, 40)-(420, 60), 0
      LINE (420, 120)-(438, 100), 0
      LINE (438, 100)-(438, 40), 0
      LINE (340, 60)-(420, 60), 0
      LINE (420, 60)-(420, 120), 0
      LINE (420, 120)-(340, 120), 0
      LINE (340, 120)-(340, 60), 0
REM This is the computer store:
   REM This is the structure of the building:
      LINE (440, 60)-(500, 120), 15, BF
      LINE (440, 60)-(460, 40), 15
      LINE (460, 40)-(518, 40), 15
      LINE (518, 40)-(500, 60), 15
      LINE (500, 120)-(518, 100), 15
      LINE (518, 100)-(518, 40), 15
      PAINT (510, 70), 15
      PAINT (480, 50), 15
      PAINT (510, 100), 15
   REM This is the top of the building:
      LINE (440, 60)-(460, 40), 8
      LINE (460, 40)-(518, 40), 8
      LINE (518, 40)-(500, 60), 8
      LINE (500, 60)-(440, 60), 8
      PAINT (480, 50), 8
      LINE (440, 60)-(460, 40), 7
      LINE (460, 40)-(518, 40), 7
      LINE (518, 40)-(500, 60), 7
      LINE (500, 60)-(440, 60), 7
      LINE (460, 45)-(514, 45), 7
      LINE (460, 45)-(445, 60), 7
      PAINT (480, 43), 7
   REM This outlines the building:
      LINE (440, 60)-(460, 40), 0
      LINE (460, 40)-(518, 40), 0
      LINE (518, 40)-(500, 60), 0
      LINE (500, 60)-(440, 60), 0
      LINE (460, 45)-(514, 45), 0
      LINE (460, 45)-(445, 60), 0
      LINE (440, 60)-(500, 60), 0
      LINE (500, 60)-(500, 120), 0
      LINE (500, 120)-(440, 120), 0
      LINE (440, 120)-(440, 60), 0
      LINE (440, 60)-(460, 40), 0
      LINE (460, 40)-(518, 40), 0
      LINE (518, 40)-(500, 60), 0
      LINE (500, 120)-(518, 100), 0
      LINE (518, 100)-(518, 40), 0
   REM This is the sign on the building:
      LOCATE 5, 57: COLOR 15: PRINT "Shop"
   REM This is the window on the building:
      LINE (450, 90)-(470, 110), 14, BF
      LINE (450, 90)-(470, 90), 0
      LINE (470, 90)-(470, 110), 0
      LINE (470, 110)-(450, 110), 0
      LINE (450, 110)-(450, 90), 0
   REM This is the door on the building:
      LINE (483, 100)-(497, 120), 0, BF
   REM This is the door knob:
      LINE (493, 110)-(495, 112), 15, BF
REM This is the police station
   REM This is the structure of the building:
      LINE (520, 20)-(580, 120), 7, BF
      LINE (520, 20)-(540, 2), 7
      LINE (540, 2)-(600, 2), 7
      LINE (600, 2)-(600, 100), 7
      LINE (600, 100)-(580, 120), 7
      PAINT (590, 40), 7
   REM These are the two doors on the building:
      LINE (536, 100)-(564, 120), 6, BF
      LINE (536, 100)-(564, 100), 0
      LINE (564, 100)-(564, 120), 0
      LINE (536, 100)-(536, 120), 0
      LINE (550, 100)-(550, 120), 0
      LINE (538, 102)-(547, 109), 0, B
      LINE (538, 111)-(547, 118), 0, B
      LINE (562, 102)-(553, 109), 0, B
      LINE (562, 111)-(553, 118), 0, B
      LINE (546, 110)-(548, 112), 8, BF
      LINE (552, 110)-(554, 112), 8, BF
   REM This is the POLICE sign above the building:
      LOCATE 3, 67: COLOR 15: PRINT "POLICE"
   REM These are the windows on the building:
         LINE (525, 55)-(545, 65), 8, BF
         LINE (525, 75)-(545, 85), 8, BF
         LINE (555, 55)-(575, 65), 8, BF
         LINE (555, 75)-(575, 85), 8, BF
         LINE (525, 55)-(545, 55), 0
         LINE (545, 55)-(545, 65), 0
         LINE (545, 65)-(525, 65), 0
         LINE (525, 55)-(525, 65), 0
         LINE (525, 75)-(545, 75), 0
         LINE (545, 75)-(545, 85), 0
         LINE (545, 85)-(525, 85), 0
         LINE (525, 85)-(525, 75), 0
         LINE (555, 55)-(575, 55), 0
         LINE (575, 55)-(575, 65), 0
         LINE (575, 65)-(555, 65), 0
         LINE (555, 65)-(555, 55), 0
         LINE (555, 75)-(575, 75), 0
         LINE (575, 75)-(575, 85), 0
         LINE (575, 85)-(555, 85), 0
         LINE (555, 85)-(555, 75), 0
   REM This outlines the building:
      LINE (520, 20)-(540, 2), 0
      LINE (540, 2)-(600, 2), 0
      LINE (600, 2)-(600, 100), 0
      LINE (600, 100)-(580, 120), 0
      LINE (520, 20)-(580, 20), 0
      LINE (580, 20)-(580, 120), 0
      LINE (580, 120)-(520, 120), 0
      LINE (520, 120)-(520, 20), 0
      LINE (580, 20)-(600, 2), 0
   REM This is the Diner:
      LINE (220, 240)-(340, 280), 9, BF
      LINE (220, 240)-(240, 220), 9
      LINE (240, 220)-(360, 220), 9
      LINE (360, 220)-(360, 260), 9
      LINE (360, 260)-(340, 280), 9
      PAINT (320, 230), 9
      LINE (220, 240)-(340, 280), 0, B
      LINE (220, 240)-(240, 220), 0
      LINE (240, 220)-(360, 220), 0
      LINE (360, 220)-(360, 260), 0
      LINE (360, 260)-(340, 280), 0
      LINE (230, 250)-(250, 270), 14, BF
      LINE (230, 250)-(250, 270), 0, B
      LINE (270, 250)-(290, 270), 14, BF
      LINE (270, 250)-(290, 270), 0, B
      LINE (303, 260)-(318, 280), 1, BF
      LINE (303, 260)-(318, 280), 0, B
      LOCATE 15, 35: COLOR 15: PRINT "DINER"
      LINE (340, 240)-(360, 220), 0
   REM This is the museum:
      LINE (460, 260)-(580, 300), 15, BF
      LINE (580, 300)-(600, 280), 15
      LINE (600, 280)-(600, 250), 15
      LINE (610, 240)-(590, 260), 15
      LINE (590, 260)-(450, 260), 15
      LINE (450, 260)-(470, 240), 15
      LINE (470, 240)-(540, 220), 15
      LINE (540, 220)-(610, 240), 15
      LINE (540, 220)-(520, 240), 15
      LINE (520, 240)-(460, 260), 15
      LINE (520, 240)-(580, 260), 15
      PAINT (560, 240), 15
      PAINT (500, 240), 15
      PAINT (520, 250), 15
      PAINT (590, 280), 15
      LINE (460, 260)-(580, 300), 0, B
      LINE (580, 300)-(600, 280), 0
      LINE (600, 280)-(600, 250), 0
      LINE (610, 240)-(590, 260), 0
      LINE (590, 260)-(450, 260), 0
      LINE (450, 260)-(470, 240), 0
      LINE (470, 240)-(540, 220), 0
      LINE (540, 220)-(610, 240), 0
      LINE (540, 220)-(520, 240), 0
      LINE (520, 240)-(460, 260), 0
      LINE (520, 240)-(580, 260), 0
      LOCATE 17, 63: COLOR 15: PRINT "MUSEUM"
   REM These are the two doors on the building:
      LINE (536 - 30, 100 + 180)-(564 - 30, 120 + 180), 6, BF
      LINE (536 - 30, 100 + 180)-(564 - 30, 100 + 180), 0
      LINE (564 - 30, 100 + 180)-(564 - 30, 120 + 180), 0
      LINE (536 - 30, 100 + 180)-(536 - 30, 120 + 180), 0
      LINE (550 - 30, 100 + 180)-(550 - 30, 120 + 180), 0
      LINE (538 - 30, 102 + 180)-(547 - 30, 109 + 180), 0, B
      LINE (538 - 30, 111 + 180)-(547 - 30, 118 + 180), 0, B
      LINE (562 - 30, 102 + 180)-(553 - 30, 109 + 180), 0, B
      LINE (562 - 30, 111 + 180)-(553 - 30, 118 + 180), 0, B
      LINE (546 - 30, 110 + 180)-(548 - 30, 112 + 180), 8, BF
      LINE (552 - 30, 110 + 180)-(554 - 30, 112 + 180), 8, BF
      LINE (460, 300)-(580, 300), 0
   REM These are the numbers that correspond with the buildings:
      LOCATE 2, 10: COLOR 15: PRINT "1"
      LOCATE 2, 35: PRINT "2"
      LOCATE 2, 50: PRINT "3"
      LOCATE 2, 60: PRINT "4"
      LOCATE 1, 65: PRINT "5"
      LOCATE 14, 30: PRINT "6"
      LOCATE 14, 60: PRINT "7"
      LOCATE 20, 40: PRINT "Hall's House - 8"
IF a = 0 THEN
   REM This is the body of the murder victim:
      LINE (70, 305)-(75, 305), 0
      LINE (75, 305)-(75, 310), 0
      LINE (75, 305)-(80, 300), 0
      LINE (78, 303)-(82, 306), 0
      LINE (78, 303)-(76, 298), 0
      CIRCLE (82, 298), 2, 14
      PAINT (82, 298), 14
      CIRCLE (82, 298), 2, 0
   REM This is the police car:
      REM This is the "body" of the car:
         LINE (100, 270)-(100, 280), 15
         LINE (100, 280)-(110, 280), 15
         CIRCLE (115, 280), 5, 15
         LINE (120, 280)-(130, 280), 15
         CIRCLE (135, 280), 5, 15
         LINE (140, 280)-(150, 280), 15
         LINE (150, 280)-(150, 270), 15
         LINE (150, 270)-(140, 270), 15
         LINE (140, 270)-(135, 260), 15
         LINE (135, 260)-(120, 260), 15
         LINE (120, 260)-(110, 270), 15
         LINE (110, 270)-(100, 270), 15
         PAINT (130, 270), 15
         LINE (152, 278)-(152, 268), 15
         LINE (152, 278)-(150, 280), 15
         LINE (152, 268)-(142, 268), 15
         LINE (152, 268)-(150, 270), 15
         LINE (142, 268)-(137, 258), 15
         LINE (142, 268)-(140, 270), 15
         LINE (137, 258)-(122, 258), 15
         LINE (137, 258)-(135, 260), 15
         LINE (122, 258)-(120, 260), 15
         LINE (111, 268)-(102, 268), 15
         LINE (102, 268)-(100, 270), 15
         PAINT (151, 278), 15
         PAINT (148, 269), 15
         PAINT (141, 267), 15
         PAINT (135, 259), 15
         PAINT (102, 269), 15
      REM This is the blue line across the car:
         LINE (100, 272)-(150, 273), 1, BF
      REM This is the yellow front headlight on the car:
         LINE (100, 273)-(104, 277), 14, BF
      REM This is the red back light:
         LINE (150, 273)-(147, 277), 4, BF
      REM These are the two doors on the side of the car:
         LINE (128, 260)-(128, 280), 0
      REM Thes are the two windows on the side of the car:
         REM This is the left window:
            LINE (126, 260)-(126, 270), 0
            LINE (126, 270)-(112, 270), 0
            LINE (112, 270)-(122, 260), 0
         REM This is the right window:
            LINE (130, 260)-(130, 270), 0
            LINE (130, 270)-(138, 270), 0
            LINE (138, 270)-(133, 260), 0
      REM These are the tires of the car:
         REM This is the left tire:
            CIRCLE (115, 280), 5, 0
            PAINT (115, 280), 0
            CIRCLE (115, 280), 2, 7
            PAINT (115, 280), 7
         REM This is the right tire:
            CIRCLE (135, 280), 5, 0
            PAINT (135, 280), 0
            CIRCLE (135, 280), 2, 7
            PAINT (135, 280), 7
      REM This is the outline for the car:
         LINE (100, 270)-(100, 280), 0
         LINE (100, 280)-(110, 280), 0
         LINE (120, 280)-(130, 280), 0
         LINE (140, 280)-(150, 280), 0
         LINE (150, 280)-(150, 270), 0
         LINE (150, 270)-(140, 270), 0
         LINE (140, 270)-(135, 260), 0
         LINE (135, 260)-(120, 260), 0
         LINE (120, 260)-(110, 270), 0
         LINE (110, 270)-(100, 270), 0
         LINE (152, 278)-(152, 268), 0
         LINE (152, 278)-(150, 280), 0
         LINE (152, 268)-(142, 268), 0
         LINE (152, 268)-(150, 270), 0
         LINE (142, 268)-(137, 258), 0
         LINE (142, 268)-(140, 270), 0
         LINE (137, 258)-(122, 258), 0
         LINE (137, 258)-(135, 260), 0
         LINE (122, 258)-(120, 260), 0
         LINE (111, 268)-(102, 268), 0
         LINE (102, 268)-(100, 270), 0
   REM This is the dialog at the bottom of the screen along with the border:
      LINE (0, 322)-(639, 479), 9, B
      LOCATE 22, 2: COLOR 15: PRINT "Above you can see a map of the section of Cove City you will be investigating."
      LOCATE 23, 2: PRINT "Going from right to left on the top there is: Jon's Lab of Time Travel, the"
      LOCATE 24, 2: PRINT "ice cream shop, the pet store, the local convenience store, and the police"
      LOCATE 25, 2: PRINT "station.  On the bottom there is the Cove City Museum, one of the local"
      LOCATE 26, 2: PRINT "resturants, and the murder scene.  Time for you to get to the murder scene"
      LOCATE 27, 2: PRINT "and start your investigation..."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
REM This is the blinking siren on top of the police car from above:
   DO
      LINE (125, 256)-(130, 259), 12, BF
      SLEEP 1
      LINE (125, 256)-(130, 259), 9, BF
      SLEEP 1
   LOOP WHILE INKEY$ = ""
   a = 1
   MURDERSCENE1
END IF
IF a = 1 THEN
   REM This is the parked police car:
      REM This is the "body" of the car:
         LINE (500, 170)-(500, 180), 15
         LINE (500, 180)-(510, 180), 15
         CIRCLE (515, 180), 5, 15
         LINE (520, 180)-(530, 180), 15
         CIRCLE (535, 180), 5, 15
         LINE (540, 180)-(550, 180), 15
         LINE (550, 180)-(550, 170), 15
         LINE (550, 170)-(540, 170), 15
         LINE (540, 170)-(535, 160), 15
         LINE (535, 160)-(520, 160), 15
         LINE (520, 160)-(510, 170), 15
         LINE (510, 170)-(500, 170), 15
         PAINT (530, 170), 15
         LINE (552, 178)-(552, 168), 15
         LINE (552, 178)-(550, 180), 15
         LINE (552, 168)-(542, 168), 15
         LINE (552, 168)-(550, 170), 15
         LINE (542, 168)-(537, 158), 15
         LINE (542, 168)-(540, 170), 15
         LINE (537, 158)-(522, 158), 15
         LINE (537, 158)-(535, 160), 15
         LINE (522, 158)-(520, 160), 15
         LINE (511, 168)-(502, 168), 15
         LINE (502, 168)-(500, 170), 15
         PAINT (551, 178), 15
         PAINT (548, 169), 15
         PAINT (541, 167), 15
         PAINT (535, 159), 15
         PAINT (502, 169), 15
      REM This is the blue line across the car:
         LINE (500, 172)-(550, 173), 1, BF
      REM This is the yellow front headlight on the car:
         LINE (500, 173)-(504, 177), 14, BF
      REM This is the red back light:
         LINE (550, 173)-(547, 177), 4, BF
      REM These are the two doors on the side of the car:
         LINE (528, 160)-(528, 180), 0
      REM Thes are the two windows on the side of the car:
         REM This is the left window:
            LINE (526, 160)-(526, 170), 0
            LINE (526, 170)-(512, 170), 0
            LINE (512, 170)-(522, 160), 0
         REM This is the right window:
            LINE (530, 160)-(530, 170), 0
            LINE (530, 170)-(538, 170), 0
            LINE (538, 170)-(533, 160), 0
      REM These are the tires of the car:
         REM This is the left tire:
            CIRCLE (515, 180), 5, 0
            PAINT (515, 180), 0
            CIRCLE (515, 180), 2, 7
            PAINT (515, 180), 7
         REM This is the right tire:
            CIRCLE (535, 180), 5, 0
            PAINT (535, 180), 0
            CIRCLE (535, 180), 2, 7
            PAINT (535, 180), 7
      REM This is the outline for the car:
         LINE (500, 170)-(500, 180), 0
         LINE (500, 180)-(510, 180), 0
         LINE (520, 180)-(530, 180), 0
         LINE (540, 180)-(550, 180), 0
         LINE (550, 180)-(550, 170), 0
         LINE (550, 170)-(540, 170), 0
         LINE (540, 170)-(535, 160), 0
         LINE (535, 160)-(520, 160), 0
         LINE (520, 160)-(510, 170), 0
         LINE (510, 170)-(500, 170), 0
         LINE (552, 178)-(552, 168), 0
         LINE (552, 178)-(550, 180), 0
         LINE (552, 168)-(542, 168), 0
         LINE (552, 168)-(550, 170), 0
         LINE (542, 168)-(537, 158), 0
         LINE (542, 168)-(540, 170), 0
         LINE (537, 158)-(522, 158), 0
         LINE (537, 158)-(535, 160), 0
         LINE (522, 158)-(520, 160), 0
         LINE (511, 168)-(502, 168), 0
         LINE (502, 168)-(500, 170), 0
    LINE (525, 156)-(530, 159), 9, BF
REM This is the dialog at the bottom of the screen along with the border:
   LINE (0, 322)-(639, 479), 9, B
   LOCATE 22, 2: COLOR 15: PRINT "Please choose a place to investigate by entering the corresponding number."
   LOCATE 23, 2: PRINT "Ex: 1, 2, 3, 4, 5, 6, 7, or 8."
   LOCATE 24, 2: PRINT "If you think you know who the murderer is and would like to end the game"
   LOCATE 25, 2: PRINT "enter the number 123."
   LOCATE 26, 2: COLOR 10: INPUT P
REM This directs the person to the correct next screen:
   IF P = 1 THEN LAB1
   IF P = 2 THEN ICECREAM0
   IF P = 3 THEN PETS0
   IF P = 4 THEN
      IF C(4) = 0 THEN SHOP1
      IF C(4) = 1 THEN SHOP2
      IF C(4) = 2 THEN SHOP3
   END IF
   IF P = 5 THEN POLICE1
   IF P = 6 THEN DINER1
   IF P = 7 THEN MUSEUM1
   IF P = 8 THEN HOUSE1
   IF P = 123 THEN FINISH
   IF P <> 1 OR P <> 2 OR P <> 3 OR P <> 4 OR P <> 5 OR P <> 6 OR P <> 7 OR P <> 8 OR P <> 123 THEN MAP1
END IF
END SUB

SUB MURDERSCENE1
CLS
SCREEN 12
REM This is the first look at the murder scene in the desert:

REM This is the desert ground:
   LINE (0, 180)-(640, 320), 6, BF
REM This is the sky:
   LINE (0, 0)-(640, 180), 11, BF
REM This is the sky:
   CIRCLE (640, 0), 60, 14
   PAINT (630, 10), 14
   CIRCLE (640, 0), 60, 0
REM This is the cactus:
   CIRCLE (90, 60), 30, 2
   PAINT (90, 60), 2
   CIRCLE (90, 60), 30, 0
   LINE (60, 60)-(120, 260), 2, BF
   LINE (60, 60)-(60, 260), 0
   LINE (120, 60)-(120, 260), 0
   CIRCLE (90, 320), 80, 6
   PAINT (90, 250), 6
   CIRCLE (90, 320), 80, 0
   LINE (0, 280)-(180, 320), 6, BF
   CIRCLE (155, 40), 15, 2
   PAINT (155, 40), 2
   CIRCLE (155, 40), 15, 0
   LINE (140, 40)-(170, 90), 2, BF
   LINE (170, 90)-(120, 140), 2
   LINE (120, 140)-(120, 100), 2
   LINE (120, 100)-(140, 80), 2
   PAINT (130, 110), 2
   LINE (170, 90)-(120, 140), 0
   LINE (120, 140)-(120, 100), 0
   LINE (120, 100)-(140, 80), 0
   LINE (140, 40)-(140, 80), 0
   LINE (170, 90)-(170, 40), 0
   CIRCLE (25, 60), 15, 2
   PAINT (25, 60), 2
   CIRCLE (25, 60), 15, 0
   LINE (10, 110)-(40, 60), 2, BF
   LINE (10, 110)-(60, 160), 2
   LINE (60, 160)-(60, 120), 2
   LINE (60, 120)-(40, 100), 2
   PAINT (40, 120), 2
   LINE (10, 110)-(10, 60), 0
   LINE (40, 100)-(40, 60), 0
   LINE (10, 110)-(60, 160), 0
   LINE (60, 160)-(60, 120), 0
   LINE (60, 120)-(40, 100), 0
REM This is the police car:
   LINE (640, 200)-(480, 200), 15
   LINE (480, 200)-(480, 160), 15
   LINE (480, 160)-(540, 160), 15
   LINE (540, 160)-(580, 120), 15
   LINE (580, 120)-(640, 120), 15
   LINE (640, 120)-(640, 200), 15
   PAINT (500, 180), 15
   REM This is the blue line across the car:
      LINE (481, 165)-(640, 180), 1, BF
   REM This is the head light on the car:
      LINE (480, 170)-(500, 190), 14, BF
      LINE (480, 170)-(500, 190), 0, B
   LINE (640, 200)-(480, 200), 0
   LINE (480, 200)-(480, 160), 0
   LINE (480, 160)-(540, 160), 0
   LINE (540, 160)-(580, 120), 0
   LINE (580, 120)-(640, 120), 0
   LINE (640, 120)-(640, 200), 0
   LINE (560, 160)-(585, 125), 7
   LINE (585, 125)-(615, 125), 7
   LINE (615, 125)-(615, 160), 7
   LINE (615, 160)-(560, 160), 7
   LINE (620, 120)-(620, 200), 7
   LINE (625, 125)-(640, 125), 7
   LINE (640, 125)-(640, 160), 7
   LINE (640, 160)-(625, 160), 7
   LINE (625, 160)-(625, 125), 7
   PAINT (600, 140), 7
   PAINT (630, 140), 7
   LINE (560, 160)-(585, 125), 0
   LINE (585, 125)-(615, 125), 0
   LINE (615, 125)-(615, 160), 0
   LINE (615, 160)-(560, 160), 0
   LINE (620, 120)-(620, 200), 0
   LINE (625, 125)-(640, 125), 0
   LINE (640, 125)-(640, 160), 0
   LINE (640, 160)-(625, 160), 0
   LINE (625, 160)-(625, 125), 0
   LINE (600, 140)-(585, 150), 15
   LINE (610, 135)-(595, 150), 15
   REM These are the tires:
      REM This is the left tire:
         CIRCLE (540, 200), 20, 0
         PAINT (540, 199), 0
         PAINT (540, 201), 0
         CIRCLE (540, 200), 10, 8
         PAINT (540, 200), 8
      REM This is the right tire:
         CIRCLE (640, 200), 20, 0
         PAINT (639, 199), 0
         PAINT (639, 201), 0
         CIRCLE (640, 200), 10, 8
         PAINT (639, 200), 8
   REM These are the words on the side of the police car:
         LOCATE 12, 65: COLOR 15: PRINT "COVE CITY POLICE"
   REM Extra for 3Dness:
      LINE (480, 160)-(490, 155), 15
      LINE (490, 155)-(545, 155), 15
      PAINT (520, 156), 15
      LINE (480, 160)-(490, 155), 0
      LINE (490, 155)-(545, 155), 0
      LINE (480, 160)-(540, 160), 0
      LINE (540, 160)-(545, 155), 0
REM This is the pool of blood:
   CIRCLE (260, 220), 20, 4
   PAINT (260, 220), 4
REM This is DAVID HALL:
   LINE (220, 220)-(260, 260), 0
   LINE (250, 230)-(220, 260), 0
   LINE (220, 260)-(220, 300), 0
   LINE (220, 260)-(180, 280), 0
   CIRCLE (258, 222), 10, 14
   PAINT (258, 222), 14
   CIRCLE (258, 222), 10, 0
   CIRCLE (220, 220), 2, 14
   PAINT (220, 220), 14
   CIRCLE (220, 220), 2, 0
   CIRCLE (260, 260), 2, 14
   PAINT (260, 260), 14
   CIRCLE (260, 260), 2, 0
   LINE (180, 280)-(180, 270), 0
   LINE (220, 300)-(230, 300), 0
   CIRCLE (254, 225), 3, 0
   PAINT (254, 225), 0
   LINE (256, 216)-(258, 220), 0
   LINE (260, 222)-(264, 223), 0
   CIRCLE (262, 217), 2, 4
   PAINT (262, 217), 4
   CIRCLE (262, 217), 2, 0
REM This is ALISON LARSON's notepad:
   LINE (270, 200)-(290, 210), 15
   LINE (290, 210)-(290, 200), 15
   LINE (290, 200)-(280, 190), 15
   LINE (280, 190)-(270, 200), 15
   PAINT (280, 195), 15
   LINE (270, 200)-(290, 210), 0
   LINE (290, 210)-(290, 200), 0
   LINE (290, 200)-(280, 190), 0
   LINE (280, 190)-(270, 200), 0
REM This is ALISON LARSON:
   LINE (320, 170)-(320, 220), 0
   LINE (320, 220)-(340, 260), 0
   LINE (320, 220)-(300, 260), 0
   LINE (320, 180)-(300, 200), 0
   LINE (300, 200)-(290, 180), 0
   LINE (320, 180)-(330, 200), 0
   LINE (330, 200)-(290, 210), 0
   CIRCLE (290, 210), 2, 14
   PAINT (290, 210), 14
   CIRCLE (290, 210), 2, 0
   CIRCLE (290, 180), 2, 14
   PAINT (290, 180), 14
   CIRCLE (290, 180), 2, 0
   CIRCLE (320, 160), 10, 14
   PAINT (320, 160), 14
   CIRCLE (320, 160), 10, 0
   LINE (340, 260)-(350, 260), 0
   LINE (300, 260)-(290, 260), 0
REM This is ALISON LARSON's pen:
   LINE (290, 170)-(285, 205), 0
REM This is MIKE HOOVER:
   LINE (380, 240)-(380, 320), 0
   LINE (380, 260)-(340, 320), 0
   LINE (380, 260)-(420, 320), 0
   CIRCLE (380, 200), 40, 14
   PAINT (380, 200), 14
   CIRCLE (380, 200), 40, 0

REM The following is for the dialog between the user and the characters:

REM This is the dialog at the bottom of the screen along with the border:
   LINE (0, 322)-(639, 479), 9, B
   LOCATE 22, 2: COLOR 10: PRINT "MIKE HOOVER:"
   LOCATE 23, 2: COLOR 15: PRINT "Who are you?  What are you doing here?"
   LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
REM This makes the police siren blink.
   DO
      LINE (605, 100)-(640, 120), 9, BF
      LINE (615, 115)-(630, 120), 1, BF
      LINE (605, 100)-(640, 120), 0, B
      SLEEP 1
      LINE (605, 100)-(640, 120), 12, BF
      LINE (615, 115)-(630, 120), 4, BF
      LINE (605, 100)-(640, 120), 0, B
      SLEEP 1
   LOOP UNTIL INKEY$ <> ""

REM More dialog:
   LINE (1, 323)-(638, 478), 0, BF
   LOCATE 22, 2: COLOR 10: PRINT "YOU:"
   LOCATE 23, 2: COLOR 15: PRINT "Hi, I'm Detective ";
   COLOR 10: PRINT E$;
   COLOR 15: PRINT ", Detective ";
   COLOR 10: PRINT W$; ""
   LOCATE 24, 2: COLOR 10: PRINT E$;
   COLOR 15: PRINT ".  I was sent over to investigate the recent murder in the desert."
   LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
REM This makes the police siren blink.
   DO
      LINE (605, 100)-(640, 120), 9, BF
      LINE (615, 115)-(630, 120), 1, BF
      LINE (605, 100)-(640, 120), 0, B
      SLEEP 1
      LINE (605, 100)-(640, 120), 12, BF
      LINE (615, 115)-(630, 120), 4, BF
      LINE (605, 100)-(640, 120), 0, B
      SLEEP 1
   LOOP UNTIL INKEY$ <> ""

REM More dialog:
   LINE (1, 323)-(638, 478), 0, BF
   LOCATE 22, 2: COLOR 10: PRINT "MIKE HOOVER:"
   LOCATE 23, 2: COLOR 15: PRINT "Oh it's you!  We've been waiting for you to show up.  I'm";
   COLOR 10: PRINT " Mike Hoover,"
   LOCATE 24, 2: COLOR 15: PRINT "and behind me taking notes is my partner, ";
   COLOR 10: PRINT "Alison Larson";
   COLOR 15: PRINT "."
   LOCATE 25, 2: PRINT "As you can see the murder victim is behind me."
   LOCATE 26, 2: PRINT "Well, I better clue you in with all the information we have."
   LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
REM This makes the police siren blink.
   DO
      LINE (605, 100)-(640, 120), 9, BF
      LINE (615, 115)-(630, 120), 1, BF
      LINE (605, 100)-(640, 120), 0, B
      SLEEP 1
      LINE (605, 100)-(640, 120), 12, BF
      LINE (615, 115)-(630, 120), 4, BF
      LINE (605, 100)-(640, 120), 0, B
      SLEEP 1
   LOOP UNTIL INKEY$ <> ""

REM This is more dialog in a large box:
   CLS
   SCREEN 12
   REM This adds the border:
      LINE (0, 0)-(639, 479), 9, B
   LOCATE 2, 2: COLOR 10: PRINT "MIKE HOOVER:"
   LOCATE 3, 2: COLOR 15: PRINT "This morning we recieved a call from the scientists from the American Indian"
   LOCATE 4, 2: PRINT "digsite just over those small hills there, very close to here.  ";
   COLOR 4: PRINT "The Cove City"
   LOCATE 5, 2: PRINT "Museum";
   COLOR 15: PRINT " is sponsoring the dig and supplying two scientists to work at the site"
   LOCATE 6, 2: PRINT "to uncover artifacts.  They come to the site every morning.  This morning,"
   LOCATE 7, 2: PRINT "however, they discovered the body.  One of them said that he knew the"
   LOCATE 8, 2: PRINT "victim and that he used to come to the dig to work every now and then. "
   LOCATE 9, 2: PRINT "The victim's name is";
   COLOR 10: PRINT " David Hall";
   COLOR 15: PRINT ".  The only information we have have on him"
   LOCATE 10, 2: PRINT "at the moment is that he worked as a scientist over at ";
   COLOR 4: PRINT "Jon's Lab of Time "
   LOCATE 11, 2: PRINT "Travel";
   COLOR 15: PRINT ".  We also know that he was married to a";
   COLOR 10: PRINT " Kelly Hall";
   COLOR 15: PRINT ".  Here's the "
   LOCATE 12, 2: PRINT "address for the ";
   COLOR 4: PRINT "Halls' House";
   COLOR 15: PRINT ".  It's in another part of town.  As for how "
   LOCATE 13, 2: COLOR 10: PRINT "David Hall";
   COLOR 15: PRINT " was killed he was shot in the head, directly above the eyes.  Our"
   LOCATE 14, 2: PRINT "forensic scientist tells us that the body has been here for less than 24 hours"
   LOCATE 15, 2: PRINT "and suspects he was killed late last night.  He also noticed that whoever was"
   LOCATE 16, 2: PRINT "here left footprints, but brushed them away.  There was also a vanilla ice"
   LOCATE 17, 2: PRINT "cream cone lying next to the body.  Whatever that can mean..."
   LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
WHILE INKEY$ = ""
WEND

REM This is going back to the murder scene to finish the dialog:
REM This is the graphic drawn again:

REM This is the desert ground:
   LINE (0, 180)-(640, 320), 6, BF
REM This is the sky:
   LINE (0, 0)-(640, 180), 11, BF
REM This is the sky:
   CIRCLE (640, 0), 60, 14
   PAINT (630, 10), 14
   CIRCLE (640, 0), 60, 0
REM This is the cactus:
   CIRCLE (90, 60), 30, 2
   PAINT (90, 60), 2
   CIRCLE (90, 60), 30, 0
   LINE (60, 60)-(120, 260), 2, BF
   LINE (60, 60)-(60, 260), 0
   LINE (120, 60)-(120, 260), 0
   CIRCLE (90, 320), 80, 6
   PAINT (90, 250), 6
   CIRCLE (90, 320), 80, 0
   LINE (0, 280)-(180, 320), 6, BF
   CIRCLE (155, 40), 15, 2
   PAINT (155, 40), 2
   CIRCLE (155, 40), 15, 0
   LINE (140, 40)-(170, 90), 2, BF
   LINE (170, 90)-(120, 140), 2
   LINE (120, 140)-(120, 100), 2
   LINE (120, 100)-(140, 80), 2
   PAINT (130, 110), 2
   LINE (170, 90)-(120, 140), 0
   LINE (120, 140)-(120, 100), 0
   LINE (120, 100)-(140, 80), 0
   LINE (140, 40)-(140, 80), 0
   LINE (170, 90)-(170, 40), 0
   CIRCLE (25, 60), 15, 2
   PAINT (25, 60), 2
   CIRCLE (25, 60), 15, 0
   LINE (10, 110)-(40, 60), 2, BF
   LINE (10, 110)-(60, 160), 2
   LINE (60, 160)-(60, 120), 2
   LINE (60, 120)-(40, 100), 2
   PAINT (40, 120), 2
   LINE (10, 110)-(10, 60), 0
   LINE (40, 100)-(40, 60), 0
   LINE (10, 110)-(60, 160), 0
   LINE (60, 160)-(60, 120), 0
   LINE (60, 120)-(40, 100), 0
REM This is the police car:
   LINE (640, 200)-(480, 200), 15
   LINE (480, 200)-(480, 160), 15
   LINE (480, 160)-(540, 160), 15
   LINE (540, 160)-(580, 120), 15
   LINE (580, 120)-(640, 120), 15
   LINE (640, 120)-(640, 200), 15
   PAINT (500, 180), 15
   REM This is the blue line across the car:
      LINE (481, 165)-(640, 180), 1, BF
   REM This is the head light on the car:
      LINE (480, 170)-(500, 190), 14, BF
      LINE (480, 170)-(500, 190), 0, B
   LINE (640, 200)-(480, 200), 0
   LINE (480, 200)-(480, 160), 0
   LINE (480, 160)-(540, 160), 0
   LINE (540, 160)-(580, 120), 0
   LINE (580, 120)-(640, 120), 0
   LINE (640, 120)-(640, 200), 0
   LINE (560, 160)-(585, 125), 7
   LINE (585, 125)-(615, 125), 7
   LINE (615, 125)-(615, 160), 7
   LINE (615, 160)-(560, 160), 7
   LINE (620, 120)-(620, 200), 7
   LINE (625, 125)-(640, 125), 7
   LINE (640, 125)-(640, 160), 7
   LINE (640, 160)-(625, 160), 7
   LINE (625, 160)-(625, 125), 7
   PAINT (600, 140), 7
   PAINT (630, 140), 7
   LINE (560, 160)-(585, 125), 0
   LINE (585, 125)-(615, 125), 0
   LINE (615, 125)-(615, 160), 0
   LINE (615, 160)-(560, 160), 0
   LINE (620, 120)-(620, 200), 0
   LINE (625, 125)-(640, 125), 0
   LINE (640, 125)-(640, 160), 0
   LINE (640, 160)-(625, 160), 0
   LINE (625, 160)-(625, 125), 0
   LINE (600, 140)-(585, 150), 15
   LINE (610, 135)-(595, 150), 15
   REM These are the tires:
      REM This is the left tire:
         CIRCLE (540, 200), 20, 0
         PAINT (540, 199), 0
         PAINT (540, 201), 0
         CIRCLE (540, 200), 10, 8
         PAINT (540, 200), 8
      REM This is the right tire:
         CIRCLE (640, 200), 20, 0
         PAINT (639, 199), 0
         PAINT (639, 201), 0
         CIRCLE (640, 200), 10, 8
         PAINT (639, 200), 8
   REM These are the words on the side of the police car:
         LOCATE 12, 65: COLOR 15: PRINT "COVE CITY POLICE"
   REM Extra for 3Dness:
      LINE (480, 160)-(490, 155), 15
      LINE (490, 155)-(545, 155), 15
      PAINT (520, 156), 15
      LINE (480, 160)-(490, 155), 0
      LINE (490, 155)-(545, 155), 0
      LINE (480, 160)-(540, 160), 0
      LINE (540, 160)-(545, 155), 0
REM This is the pool of blood:
   CIRCLE (260, 220), 20, 4
   PAINT (260, 220), 4
REM This is DAVID HALL:
   LINE (220, 220)-(260, 260), 0
   LINE (250, 230)-(220, 260), 0
   LINE (220, 260)-(220, 300), 0
   LINE (220, 260)-(180, 280), 0
   CIRCLE (258, 222), 10, 14
   PAINT (258, 222), 14
   CIRCLE (258, 222), 10, 0
   CIRCLE (220, 220), 2, 14
   PAINT (220, 220), 14
   CIRCLE (220, 220), 2, 0
   CIRCLE (260, 260), 2, 14
   PAINT (260, 260), 14
   CIRCLE (260, 260), 2, 0
   LINE (180, 280)-(180, 270), 0
   LINE (220, 300)-(230, 300), 0
   CIRCLE (254, 225), 3, 0
   PAINT (254, 225), 0
   LINE (256, 216)-(258, 220), 0
   LINE (260, 222)-(264, 223), 0
   CIRCLE (262, 217), 2, 4
   PAINT (262, 217), 4
   CIRCLE (262, 217), 2, 0
REM This is ALISON LARSON's notepad:
   LINE (270, 200)-(290, 210), 15
   LINE (290, 210)-(290, 200), 15
   LINE (290, 200)-(280, 190), 15
   LINE (280, 190)-(270, 200), 15
   PAINT (280, 195), 15
   LINE (270, 200)-(290, 210), 0
   LINE (290, 210)-(290, 200), 0
   LINE (290, 200)-(280, 190), 0
   LINE (280, 190)-(270, 200), 0
REM This is ALISON LARSON:
   LINE (320, 170)-(320, 220), 0
   LINE (320, 220)-(340, 260), 0
   LINE (320, 220)-(300, 260), 0
   LINE (320, 180)-(300, 200), 0
   LINE (300, 200)-(290, 180), 0
   LINE (320, 180)-(330, 200), 0
   LINE (330, 200)-(290, 210), 0
   CIRCLE (290, 210), 2, 14
   PAINT (290, 210), 14
   CIRCLE (290, 210), 2, 0
   CIRCLE (290, 180), 2, 14
   PAINT (290, 180), 14
   CIRCLE (290, 180), 2, 0
   CIRCLE (320, 160), 10, 14
   PAINT (320, 160), 14
   CIRCLE (320, 160), 10, 0
   LINE (340, 260)-(350, 260), 0
   LINE (300, 260)-(290, 260), 0
REM This is ALISON LARSON's pen:
   LINE (290, 170)-(285, 205), 0
REM This is MIKE HOOVER:
   LINE (380, 240)-(380, 320), 0
   LINE (380, 260)-(340, 320), 0
   CIRCLE (380, 200), 40, 14
   PAINT (380, 200), 14
   CIRCLE (380, 200), 40, 0

REM This is MIKE HOOVER's right arm holding up the murder weapon in a plastic bag:
   LINE (380, 260)-(440, 250), 0
   LINE (440, 250)-(440, 260), 0
   LINE (420, 260)-(480, 310), 11, BF
   LINE (420, 260)-(480, 265), 15, BF
   LINE (420, 260)-(480, 260), 0
   LINE (480, 260)-(480, 310), 0
   LINE (480, 310)-(420, 310), 0
   LINE (420, 310)-(420, 260), 0
   LINE (420, 265)-(480, 265), 0
REM This is the gun:
   LINE (430, 280)-(440, 300), 0, BF
   LINE (440, 300)-(465, 290), 0, BF
   LINE (450, 290)-(450, 285), 0
   LINE (450, 285)-(440, 285), 0
REM This is the dialog at the bottom of the screen along with the border:
   LINE (0, 322)-(639, 479), 9, B
   LOCATE 22, 2: COLOR 10: PRINT "MIKE HOOVER:"
   LOCATE 23, 2: COLOR 15: PRINT "This is the murder weapon that was found not to far from the body.  We have it"
   LOCATE 24, 2: PRINT "in a plastic bag for evidence.  We did check the gun for fingerprints and"
   LOCATE 25, 2: PRINT "none showed up.  The killer must have been wearing gloves."
   LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
REM This makes the police siren blink.
   DO
      LINE (605, 100)-(640, 120), 9, BF
      LINE (615, 115)-(630, 120), 1, BF
      LINE (605, 100)-(640, 120), 0, B
      SLEEP 1
      LINE (605, 100)-(640, 120), 12, BF
      LINE (615, 115)-(630, 120), 4, BF
      LINE (605, 100)-(640, 120), 0, B
      SLEEP 1
   LOOP UNTIL INKEY$ <> ""

REM This is the next dialog box:
   LINE (1, 323)-(638, 478), 0, BF
   LINE (0, 322)-(639, 479), 9, B
   LOCATE 22, 2: COLOR 10: PRINT "YOU:"
   LOCATE 23, 2: COLOR 15: PRINT "Anything else?"
   LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
REM This makes the police siren blink.
   DO
      LINE (605, 100)-(640, 120), 9, BF
      LINE (615, 115)-(630, 120), 1, BF
      LINE (605, 100)-(640, 120), 0, B
      SLEEP 1
      LINE (605, 100)-(640, 120), 12, BF
      LINE (615, 115)-(630, 120), 4, BF
      LINE (605, 100)-(640, 120), 0, B
      SLEEP 1
   LOOP UNTIL INKEY$ <> ""

REM This is the next dialog box:
   LINE (1, 323)-(638, 478), 0, BF
   LINE (0, 322)-(639, 479), 9, B
   LOCATE 22, 2: COLOR 10: PRINT "MIKE HOOVER:"
   LOCATE 23, 2: COLOR 15: PRINT "Nope.  I'm sure there's more to discover though.  That's your job now.  If you"
   LOCATE 24, 2: COLOR 15: PRINT "need any basic information on people around town you can come over to the"
   LOCATE 25, 2: COLOR 4: PRINT "Police Station ";
   COLOR 15: PRINT "and ";
   COLOR 10: PRINT "Alison ";
   COLOR 15: PRINT "will be able to show you their files.  Other"
   LOCATE 26, 2: PRINT "than that go investigate this area of the town and the victim's house. "
   LOCATE 27, 2: PRINT "Remember you can visit the same place multiple times after discovering more"
   LOCATE 28, 2: PRINT "information.  Good Luck!"; ""
   LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
REM This makes the police siren blink.
   DO
      LINE (605, 100)-(640, 120), 9, BF
      LINE (615, 115)-(630, 120), 1, BF
      LINE (605, 100)-(640, 120), 0, B
      SLEEP 1
      LINE (605, 100)-(640, 120), 12, BF
      LINE (615, 115)-(630, 120), 4, BF
      LINE (605, 100)-(640, 120), 0, B
      SLEEP 1
   LOOP UNTIL INKEY$ <> ""

REM This is the next dialog box:
   LINE (1, 323)-(638, 478), 0, BF
   LINE (0, 322)-(639, 479), 9, B
   LOCATE 22, 2: COLOR 10: PRINT "YOU:"
   LOCATE 23, 2: COLOR 15: PRINT "Thanks."
   LOCATE 28, 35: COLOR 8: PRINT "Please hit any key to go to the mini map..."
REM This makes the police siren blink.
   DO
      LINE (605, 100)-(640, 120), 9, BF
      LINE (615, 115)-(630, 120), 1, BF
      LINE (605, 100)-(640, 120), 0, B
      SLEEP 1
      LINE (605, 100)-(640, 120), 12, BF
      LINE (615, 115)-(630, 120), 4, BF
      LINE (605, 100)-(640, 120), 0, B
      SLEEP 1
   LOOP UNTIL INKEY$ <> ""

MAP1
END SUB

SUB MUSEUM1
REM This is the inside of the museum:
CLS
SCREEN 12
REM This is the back wall:
   LINE (0, 0)-(640, 320), 6, BF
REM This is the counter:
   LINE (0, 260)-(640, 320), 7, BF
   LINE (0, 260)-(640, 260), 0
REM This the bell:
   CIRCLE (360, 300), 20, 8
   PAINT (360, 300), 8
   CIRCLE (360, 300), 20, 0
   LINE (360, 280)-(360, 275), 8
   LINE (340, 300)-(380, 320), 7, BF
REM This is the "ring bell" sign:
   LOCATE 19, 32: COLOR 15: PRINT "RING BELL"
REM This is BRYAN SMITH:
   LINE (140, 180)-(140, 260), 0
   LINE (140, 200)-(100, 260), 0
   LINE (140, 200)-(180, 260), 0
   CIRCLE (140, 120), 60, 14
   PAINT (140, 120), 14
   CIRCLE (140, 120), 60, 0
REM This is LINDSEY LINCOLN:
   LINE (440, 180)-(440, 260), 0
   LINE (440, 200)-(400, 260), 0
   LINE (440, 200)-(480, 260), 0
   CIRCLE (440, 120), 60, 14
   PAINT (440, 120), 14
   CIRCLE (440, 120), 60, 0
IF C(7) = 0 THEN
REM These are the dialog boxes:
   REM This is the border:
      LINE (0, 322)-(639, 479), 9, B
   REM This is the 1st box:
      LOCATE 22, 2: COLOR 10: PRINT "BRYAN SMITH:"
      LOCATE 23, 2: COLOR 15: PRINT "Hello!  Welcome to the Cove City Museum!  Would you like to buy a ticket"
      LOCATE 24, 2: PRINT "to enter?"
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 2nd box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "No thank you.  I'm the detective working on David Hall's murder.  I'm"
      LOCATE 24, 2: PRINT "looking for the scientists that found the body this morning."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 3rd box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "LINDSEY LINCOLN:"
      LOCATE 23, 2: COLOR 15: PRINT "Well, you're looking at them.  I'm Lindsey Lincoln and this is my"
      LOCATE 24, 2: PRINT "associate Bryan Smith.  I suppose you'll want information."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 4th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "Yes, anything would be helpful."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 5th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "BRYAN SMITH:"
      LOCATE 23, 2: COLOR 15: PRINT "Well, for the past couple of months we have been working at the Native"
      LOCATE 24, 2: PRINT "American digsite in the desert area across from Jon's Lab of Time Travel."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 6th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "LINDSEY LINCOLN:"
      LOCATE 23, 2: COLOR 15: PRINT "David got involved with the dig almost from the beginning.  Native"
      LOCATE 24, 2: PRINT "American artifacts and history really interested him."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 7th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "Did he ever get paid for his work?"
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 8th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "BRYAN SMITH:"
      LOCATE 23, 2: COLOR 15: PRINT "No, he was strictly voluntary with his work.  We all became very"
      LOCATE 24, 2: PRINT "close friends, sharing all our ideas and thoughts.  We don't know much"
      LOCATE 25, 2: PRINT "to do with the murder however."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 9th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "That's enough for now.  I'll be back later."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
      C(7) = C(7) + 1
      MAP1
END IF
IF C(7) = 1 AND C(3) <> 2 OR C(7) = 3 OR C(7) = 2 AND C(1) = 0 THEN
REM These are the dialog boxes:
   REM This is the border:
      LINE (0, 322)-(639, 479), 9, B
   REM This is the 1st box:
      LOCATE 22, 2: COLOR 10: PRINT "BRYAN SMITH:"
      LOCATE 23, 2: COLOR 15: PRINT "We have no additional information to give you at this time."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
     MAP1
END IF
IF C(7) = 1 AND C(3) = 2 THEN
REM These are the dialog boxes:
   REM This is the border:
      LINE (0, 322)-(639, 479), 9, B
   REM This is the 1st box:
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "I just finished talking to Matt Kistler, the pet store owener.  He told me"
      LOCATE 24, 2: PRINT "that David Hall came into his store not too long ago and spent a large sum"
      LOCATE 25, 2: PRINT "of money that he said David claimed he recieved as a bonus at the dig."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 2nd box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "BRYAN SMITH:"
      LOCATE 23, 2: COLOR 15: PRINT "Well... yes... we... uh... we gave him a payment then for all of his work"
      LOCATE 24, 2: PRINT "that he had done with us.  He was so nice."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 3rd box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "But earlier you told me he was never paid for his work."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 4th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "LINDSEY LINCOLN:"
      LOCATE 23, 2: COLOR 15: PRINT "Well... we simply forgot to mention it."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 5th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "Yes.  Of course.  I'm sure I'll see you again."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
      C(7) = C(7) + 1
      MAP1
END IF
IF C(7) = 2 AND C(1) = 1 THEN
REM These are the dialog boxes:
   REM This is the border:
      LINE (0, 322)-(639, 479), 9, B
   REM This is the 1st box:
      LOCATE 22, 2: COLOR 10: PRINT "LINDSEY LINCOLN:"
      LOCATE 23, 2: COLOR 15: PRINT "Hello detective... how are you?"
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 2nd box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "I just got back from Jon's Lab.  I've spoken with Jon Stone and William"
      LOCATE 24, 2: PRINT "Baker.  Both worked with David there before his death."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 3rd box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "BRYAN SMITH:"
      LOCATE 23, 2: COLOR 15: PRINT "Yes..."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 4th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "I found an e-mail that David wrote to both of you yesterday.  It said that he"
      LOCATE 24, 2: PRINT "would talk more about the time machine tomorrow."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 5th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "LINDSEY LINCOLN:"
      LOCATE 23, 2: COLOR 15: PRINT "...uh..."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 6th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "Jon Stone also expressed that he thought David might have been relaying"
      LOCATE 24, 2: PRINT "information to you two about their work.  Is this true?"
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 7th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "BRYAN SMITH:"
      LOCATE 23, 2: COLOR 15: PRINT "Well... we..."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 8th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "LINDSEY LINCOLN:"
      LOCATE 23, 2: COLOR 15: PRINT "Stop Bryan.  The truth is we were paying David for the blue prints and"
      LOCATE 24, 2: PRINT "information on their time machine.  A lot more than Jon Stone was paying him."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 9th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "So you were going to steal this new breakthrough in science?"
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 10th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "BRYAN SMITH:"
      LOCATE 23, 2: COLOR 15: PRINT "No, they haven't finished getting all of the bugs out of their plans.  We"
      LOCATE 24, 2: PRINT "almost have.  Meaning it would be our invention."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 11th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "LINDSEY LINCOLN:"
      LOCATE 23, 2: COLOR 15: PRINT "So really nothing illegal has taken place."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 12th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "Yes, but this would have angered William Baker and Jon Stone a lot. "
      LOCATE 24, 2: PRINT "...especially Jon."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 13th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "BRYAN SMITH:"
      LOCATE 23, 2: COLOR 15: PRINT "Yes, well that is not our problem."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 14th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "Thank you for finally giving me the truth - this could prove to be very"
      LOCATE 24, 2: PRINT "important."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
      C(7) = C(7) + 1
      MAP1
END IF
END SUB

SUB ONE
CLS
SCREEN 12
REM This is the screen for Katie and Jacob Killer:
REM This is the background:
   LINE (0, 0)-(640, 320), 15, BF
REM This is the ASHLEY KILLER:
   CIRCLE (60, 180), 60, 14
   PAINT (60, 180), 14
   CIRCLE (60, 180), 60, 0
   LINE (60, 240)-(60, 320), 0
   LINE (60, 260)-(100, 320), 0
   LINE (60, 260)-(20, 320), 0
REM This is the JACOB KILLER:
   CIRCLE (200, 180), 60, 14
   PAINT (200, 180), 14
   CIRCLE (200, 180), 60, 0
   LINE (200, 240)-(200, 320), 0
   LINE (200, 260)-(240, 320), 0
   LINE (200, 260)-(160, 320), 0
REM These are the dialog boxes:
   REM This is the border:
      LINE (0, 322)-(639, 479), 9, B
   REM This is the 1st box:
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "Excuse me.  I'm the detective working on David Hall's murder.  This is where"
      LOCATE 24, 2: PRINT "he lived correct?"
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 2nd box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "ASHLEY KILLER:"
      LOCATE 23, 2: COLOR 15: PRINT "Yes.  We're the Hall's neighbors.  I'm Ashley Killer and this my husband"
      LOCATE 24, 2: PRINT "Jacob. "
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 3rd box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "Did you know the Hall's well?"
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 4th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "JACOB KILLER:"
      LOCATE 23, 2: COLOR 15: PRINT "Know them!  ...that wife of his is terrible.  I wouldn't doubt if she's the"
      LOCATE 24, 2: PRINT "one who killed him."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 5th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "So... you did know them."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 6th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "ASHLEY KILLER:"
      LOCATE 23, 2: COLOR 15: PRINT "We tried to stay away from them.  All they did, night after night after he"
      LOCATE 24, 2: PRINT "came home, was fight.  Things being thrown.  Tons of racket."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 7th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "JACOB KILLER:"
      LOCATE 23, 2: COLOR 15: PRINT "We've seen his wife running around town with another guy a lot too.  Now"
      LOCATE 24, 2: PRINT "that David's gone they are both living in the house together and Kelly is"
      LOCATE 25, 2: PRINT "getting rid of all of David's things."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 8th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "It sounds like Kelly really wanted David gone."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 9th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "JACOB KILLER:"
      LOCATE 23, 2: COLOR 15: PRINT "That's why I said that it was probably her who killed him.  I saw someone"
      LOCATE 24, 2: PRINT "over where the murder took place last night too."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 10th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "Really?!"
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 11th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "JACOB KILLER:"
      LOCATE 23, 2: COLOR 15: PRINT "Yes, someone tall, with green hair.  Just like that Kelly Hall.  Of course"
      LOCATE 24, 2: PRINT "it was dark out so I can't be sure that it was her."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 12th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "ASHLEY KILLER:"
      LOCATE 23, 2: COLOR 15: PRINT "If you ask me, I'm glad he's gone though.  Maybe now it will be a little"
      LOCATE 24, 2: PRINT "more quiet around here."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 13th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "um... thank you."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
      V = 1
MAP1
END SUB

SUB PETS0
CLS
SCREEN 12
REM This is the first look at the inside of the pet store:

REM This is the back wall:
   LINE (0, 0)-(640, 180), 9, BF
REM This is the floor:
   LINE (640, 180)-(0, 320), 7, BF
   LINE (0, 180)-(640, 180), 0
REM This is the cat:
   LINE (430, 250)-(440, 260), 0
   LINE (440, 260)-(430, 280), 0
   LINE (440, 260)-(450, 280), 0
   LINE (440, 260)-(480, 260), 0
   LINE (480, 260)-(490, 280), 0
   LINE (480, 260)-(470, 280), 0
   LINE (480, 260)-(500, 240), 0
   LINE (420, 240)-(440, 250), 0, BF
   CIRCLE (430, 250), 10, 14
   PAINT (430, 250), 14
   CIRCLE (430, 250), 10, 0
REM This is the counter:
   LINE (160, 160)-(400, 240), 3, BF
   LINE (160, 160)-(400, 240), 0, B
REM This is the word PETS on the front of the counter:
   REM This is the P:
      LINE (200, 180)-(220, 200), 0, B
      LINE (200, 200)-(200, 220), 0
   REM This is the E:
      LINE (240, 180)-(260, 220), 0, B
      LINE (240, 200)-(260, 200), 0
      LINE (260, 180)-(260, 220), 3
   REM This is the T:
      LINE (280, 180)-(300, 180), 0
      LINE (290, 180)-(290, 220), 0
   REM This is the S:
      LINE (320, 180)-(340, 220), 0, B
      LINE (320, 200)-(340, 200), 0
      LINE (320, 201)-(320, 219), 3
      LINE (340, 181)-(340, 199), 3
REM This is the cage off to the left to sale:
   LINE (20, 160)-(100, 240), 8, BF
   LINE (20, 160)-(100, 240), 0, B
FOR I = 0 TO 40 STEP 5
   LINE (20 + I, 160)-(100 - I, 240), 0, B
NEXT I
   LINE (20, 160)-(100, 240), 8, B
   LINE (20, 160)-(40, 140), 8
   LINE (40, 140)-(120, 140), 8
   LINE (120, 140)-(120, 220), 8
   LINE (120, 220)-(100, 240), 8
   PAINT (80, 150), 8
   LINE (20, 160)-(40, 140), 0
   LINE (40, 140)-(120, 140), 0
   LINE (120, 140)-(120, 220), 0
   LINE (120, 220)-(100, 240), 0
   LINE (100, 160)-(120, 140), 0
   LINE (20, 160)-(100, 240), 0, B
REM This is the fish tank with the fish:
   LINE (20, 40)-(140, 120), 11, BF
   LINE (20, 40)-(140, 120), 0, B
   LINE (50, 70)-(60, 60), 5
   LINE (50, 70)-(60, 80), 5
   LINE (60, 80)-(60, 60), 5
   PAINT (55, 70), 5
   CIRCLE (50, 70), 10, 5
   PAINT (48, 70), 5
   LINE (80, 100)-(90, 80), 0
   LINE (90, 80)-(90, 120), 0
   LINE (90, 120)-(80, 100), 0
   PAINT (85, 100), 0
   CIRCLE (80, 100), 10, 0
   PAINT (78, 100), 0
REM These are the bubbles in the tank:
   CIRCLE (120, 110), 3, 15
   PAINT (120, 110), 15
   CIRCLE (120, 110), 3, 0
   CIRCLE (110, 100), 3, 15
   PAINT (110, 100), 15
   CIRCLE (110, 100), 3, 0
   CIRCLE (120, 90), 3, 15
   PAINT (120, 90), 15
   CIRCLE (120, 90), 3, 0
   CIRCLE (120, 70), 3, 15
   PAINT (120, 70), 15
   CIRCLE (120, 70), 3, 0
   CIRCLE (130, 60), 3, 15
   PAINT (130, 60), 15
   CIRCLE (130, 60), 3, 0
   CIRCLE (120, 50), 3, 15
   PAINT (120, 50), 15
   CIRCLE (120, 50), 3, 0
REM This is bird cage #1
   LINE (180, 60)-(240, 120), 15, BF
   FOR I = 0 TO 30 STEP 5
      LINE (180 + I, 60)-(240 - I, 120), 0, B
   NEXT I
REM This is bird cage #2
   LINE (340, 60)-(400, 120), 15, BF
   FOR I = 0 TO 30 STEP 5
      LINE (340 + I, 60)-(400 - I, 120), 0, B
   NEXT I
REM Thse are the four reptile cages:
   LINE (420, 60)-(500, 100), 2, BF
   LINE (420, 60)-(500, 100), 0, B
   LINE (420, 120)-(500, 160), 2, BF
   LINE (420, 120)-(500, 160), 0, B
   LINE (520, 60)-(600, 100), 2, BF
   LINE (520, 60)-(600, 100), 0, B
   LINE (520, 120)-(600, 160), 2, BF
   LINE (520, 120)-(600, 160), 0, B
REM This is Matt Kistler:
   LINE (280, 120)-(280, 160), 0
   LINE (280, 130)-(260, 160), 0
   LINE (280, 130)-(300, 160), 0
   CIRCLE (280, 100), 20, 14
   PAINT (280, 100), 14
   CIRCLE (280, 100), 20, 0
REM These are the signs above the cages:
   LOCATE 2, 10: COLOR 15: PRINT "FISH"
   LOCATE 2, 35: PRINT "BIRDS"
   LOCATE 2, 62: PRINT "REPTILES"
REM This is the box asking the question if you would like to go forward:
   REM This is the border:
      LINE (0, 322)-(639, 479), 9, B
   REM This is the text:
      LOCATE 22, 2: COLOR 15: PRINT "Would you like to go to the counter? (yes or no)"
      LOCATE 23, 2: COLOR 10: INPUT J$
      IF J$ = "Yes" OR J$ = "YES" OR J$ = "yes" THEN PETS1
      IF J$ = "NO" OR J$ = "no" OR J$ = "No" THEN MAP1
WHILE INKEY$ = ""
WEND
END SUB

SUB PETS1
CLS
SCREEN 12

REM This is the first screen for the pet store:

REM This is the back wall:
   LINE (0, 0)-(640, 320), 9, BF
REM This is the counter:
   LINE (0, 280)-(640, 320), 3, BF
   LINE (0, 280)-(640, 280), 0
REM This is bird cage #1:
   LINE (20, 60)-(160, 200), 15, BF
   FOR I = 0 TO 70 STEP 5
      LINE (20 + I, 60)-(160 - I, 200), 0, B
   NEXT I
REM This is bird cage #2:
   LINE (420, 60)-(560, 200), 15, BF
   FOR I = 0 TO 70 STEP 5
      LINE (420 + I, 60)-(560 - I, 200), 0, B
   NEXT I
REM This is MATT KISTLER:
   LINE (300, 220)-(300, 280), 0
   LINE (300, 240)-(240, 300), 0
   LINE (240, 300)-(220, 260), 0
   LINE (300, 240)-(360, 300), 0
   LINE (360, 300)-(380, 260), 0
   CIRCLE (300, 160), 60, 14
   PAINT (300, 160), 14
   CIRCLE (300, 160), 60, 0
   CIRCLE (220, 260), 10, 14
   PAINT (220, 260), 14
   CIRCLE (220, 260), 10, 0
   CIRCLE (380, 260), 10, 14
   PAINT (380, 260), 14
   CIRCLE (380, 260), 10, 0
IF C(3) = 0 THEN
REM These are the dialog boxes:
   REM This is the border:
      LINE (0, 322)-(639, 479), 9, B
   REM This is the 1st box:
      LOCATE 22, 2: COLOR 10: PRINT "MATT KISTLER:"
      LOCATE 23, 2: COLOR 15: PRINT "Hi!  Welcome to Matt's Pet's!  I'm the owner, Matt Kistler, can I help you?"
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the second box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 15: PRINT "Enter 1 if you would like to ask Matt about the murder or 2 if you would"
      LOCATE 23, 2: PRINT "like to leave."
      LOCATE 25, 2: COLOR 10: INPUT P
      IF P = 2 THEN MAP1
   REM This is the third box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "Hi, I'm Detective ";
      COLOR 10: PRINT W$; " "; E$;
      COLOR 15: PRINT " from the Cove City Police.  A murder happened"
      LOCATE 24, 2: PRINT "last night in this area and I was wondering if you knew any information that"
      LOCATE 25, 2: PRINT "could help me to find the murderer.  The victim's name was David Hall."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the fourth box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "MATT KISTLER:"
      LOCATE 23, 2: COLOR 15: PRINT "Oh yes!  Of course I knew David!  I can't believe he's dead!  David Hall was"
      LOCATE 24, 2: PRINT "one of my best customers, he loved collecting exotic animals of all sorts. "
      LOCATE 25, 2: PRINT "It was kind of like his hobby.  He used to come in here all the time.  I"
      LOCATE 26, 2: PRINT "didn't know much about him other than that though.  When he came in I would"
      LOCATE 27, 2: PRINT "just talk to him about animals and things of that nature."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the fifth box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "Understood.  Do you have any other information?  Anything specific to the"
      LOCATE 24, 2: PRINT "murder?"
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the sixth box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "MATT KISTLER:"
      LOCATE 23, 2: COLOR 15: PRINT "No, I'm sorry.  I didn't even know of his death until just now. "
      LOCATE 24, 2: PRINT "...terrible...just terrible..."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the seventh box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "Thank you for your help Mr. Kistler."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
      C(3) = C(3) + 1
      MAP1
END IF
IF C(3) = 1 AND N = 1 THEN
REM These are the dialog boxes:
   REM This is the border:
      LINE (0, 322)-(639, 479), 9, B
   REM This is the 1st box:
      LOCATE 22, 2: COLOR 10: PRINT "MATT KISTLER:"
      LOCATE 23, 2: COLOR 15: PRINT "Why hello again!  So how's the case going Dectective...uh..."
      LOCATE 24, 2: COLOR 10: PRINT E$;
      COLOR 15: PRINT ", right?"
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the second box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "That's correct, Mr. Kistler.  Anyways, why I'm here is that I did some"
      LOCATE 24, 2: COLOR 15: PRINT "investigating over at Mr. Hall's old residence.  It seems he really did"
      LOCATE 25, 2: COLOR 15: PRINT "like collecting exotic animals as you said.  While I was there I saw a"
      LOCATE 26, 2: COLOR 15: PRINT "Mr. Sam Brunner.  Apparently he took care of Mr. Hall's extensive"
      LOCATE 27, 2: COLOR 15: PRINT "collection."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the third box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "He told me that recently, before his death, Mr. Hall had purchased a large"
      LOCATE 24, 2: COLOR 15: PRINT "amount of animals from your store, but he couldn't remember how recent. "
      LOCATE 25, 2: COLOR 15: PRINT "Is this true to your knowledge?  What information can you give me on this?"
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the fourth box:
      CLS
REM This adds the border:
   LINE (0, 0)-(639, 479), 9, B
      LOCATE 2, 2: COLOR 10: PRINT "MATT KISTLER:"
      LOCATE 3, 2: COLOR 15: PRINT "Well, actually...I didn't want to tell you before...I suppose I should now."
      LOCATE 4, 2: COLOR 15: PRINT "Three days ago Mr. Hall came into my shop.  He told me that he had just"
      LOCATE 5, 2: COLOR 15: PRINT "recieved a large 'bonus' from working at the digsite with the museum"
      LOCATE 6, 2: COLOR 15: PRINT "scientists.  I asked him why he had gotten it, but he acted strange and"
      LOCATE 7, 2: COLOR 15: PRINT "avoided it.  He then proceeded to purchase almost every animal in the store."
      LOCATE 8, 2: COLOR 15: PRINT "He was so happy he was finally building is collection so much.  He had many"
      LOCATE 9, 2: COLOR 15: PRINT "large bills with him that day that he used to purchase the animals.  The"
      LOCATE 10, 2: COLOR 15: PRINT "reason why I really didn't want to tell you about it all earlier was that"
      LOCATE 11, 2: COLOR 15: PRINT "there are laws involving how many exotic animals you can sell a person. "
      LOCATE 12, 2: COLOR 15: PRINT "I'm...I'm afraid I exceeded that amount with him that day.  You see, I was"
      LOCATE 13, 2: COLOR 15: PRINT "making such a large profit, I couldn't refuse.  I hope all those animals"
      LOCATE 14, 2: COLOR 15: PRINT "are alright now after his death.  As you can see his purchases that day"
      LOCATE 15, 2: COLOR 15: PRINT "left my store almost empty."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
REM This is the back wall:
   LINE (0, 0)-(640, 320), 9, BF
REM This is the counter:
   LINE (0, 280)-(640, 320), 3, BF
   LINE (0, 280)-(640, 280), 0
REM This is bird cage #1:
   LINE (20, 60)-(160, 200), 15, BF
   FOR I = 0 TO 70 STEP 5
      LINE (20 + I, 60)-(160 - I, 200), 0, B
   NEXT I
REM This is bird cage #2:
   LINE (420, 60)-(560, 200), 15, BF
   FOR I = 0 TO 70 STEP 5
      LINE (420 + I, 60)-(560 - I, 200), 0, B
   NEXT I
REM This is MATT KISTLER:
   LINE (300, 220)-(300, 280), 0
   LINE (300, 240)-(240, 300), 0
   LINE (240, 300)-(220, 260), 0
   LINE (300, 240)-(360, 300), 0
   LINE (360, 300)-(380, 260), 0
   CIRCLE (300, 160), 60, 14
   PAINT (300, 160), 14
   CIRCLE (300, 160), 60, 0
   CIRCLE (220, 260), 10, 14
   PAINT (220, 260), 14
   CIRCLE (220, 260), 10, 0
   CIRCLE (380, 260), 10, 14
   PAINT (380, 260), 14
   CIRCLE (380, 260), 10, 0
REM This is the dialog border:
LINE (0, 322)-(639, 479), 9, B
   REM This is the 5th box:
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "I could see that when I first walked in.  Well thank you for the help.  I'll"
      LOCATE 24, 2: PRINT "just ignore your little thing with exceeding the sale of animals.  This"
      LOCATE 25, 2: PRINT "information will help GREATLY."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   C(3) = C(3) + 1
   MAP1
END IF
IF C(3) = 1 AND N <> 1 OR C(3) = 2 THEN
REM These are the dialog boxes:
   REM This is the border:
      LINE (0, 322)-(639, 479), 9, B
   REM This is the 1st box:
      LOCATE 22, 2: COLOR 10: PRINT "MATT KISTLER:"
      LOCATE 23, 2: COLOR 15: PRINT "Hello there Detective!  Come to buy a pet for yourself? "
      LOCATE 24, 2: PRINT "How about a hound dog to track down the scent of the murderer?"
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 2nd box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "No, Mr. Kistler, sorry to dissapoint you.  Would you happen to"
      LOCATE 24, 2: PRINT "have anymore information on the murder?"
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 3rd box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "MATT KISTLER:"
      LOCATE 23, 2: COLOR 15: PRINT "Unfortunatly I don't at the time."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
      MAP1
END IF
END SUB

SUB POLICE1
CLS
SCREEN 12
REM This is the inside of the police station:

REM This is the back wall:
   LINE (0, 0)-(640, 320), 7, BF
REM This is the floor:
   LINE (0, 200)-(640, 320), 15, BF
   LINE (0, 200)-(640, 200), 0
REM This is the top:
   LINE (0, 0)-(640, 100), 0, BF
   LINE (40, 20)-(120, 80), 1, BF
   LINE (540, 20)-(620, 80), 12, BF
REM This is the word police:
   REM This is the P:
      LINE (160, 20)-(200, 20), 15
      LINE (200, 20)-(200, 50), 15
      LINE (200, 50)-(160, 50), 15
      LINE (160, 20)-(160, 80), 15
   REM This is the O:
      LINE (220, 20)-(260, 80), 15, B
   REM This is the L:
      LINE (280, 20)-(280, 80), 15
      LINE (280, 80)-(320, 80), 15
   REM This is the I:
      LINE (360, 20)-(360, 80), 15
      LINE (340, 20)-(380, 20), 15
      LINE (340, 80)-(380, 80), 15
   REM This is the C:
      LINE (400, 20)-(440, 80), 15, B
      LINE (440, 21)-(440, 79), 0
   REM This is the E:
      LINE (460, 20)-(500, 80), 15, B
      LINE (500, 21)-(500, 79), 0
      LINE (460, 50)-(480, 50), 15
REM This is the left desk:
   LINE (0, 180)-(200, 180), 6
   LINE (200, 180)-(200, 260), 6
   LINE (200, 260)-(160, 280), 6
   LINE (0, 200)-(160, 280), 6, BF
   PAINT (60, 190), 6
   LINE (0, 180)-(200, 180), 0
   LINE (200, 180)-(200, 260), 0
   LINE (200, 260)-(160, 280), 0
   LINE (0, 200)-(160, 280), 0, B
   LINE (160, 200)-(200, 180), 0
REM This is the right desk:
   LINE (640, 180)-(440, 180), 6
   LINE (440, 180)-(400, 200), 6
   LINE (400, 200)-(640, 280), 6, BF
   PAINT (480, 190), 6
   LINE (640, 180)-(440, 180), 0
   LINE (440, 180)-(400, 200), 0
   LINE (400, 200)-(640, 280), 0, B
REM This is the computer:
   LINE (560, 120)-(620, 170), 8, BF
   LINE (560, 120)-(620, 170), 0, B
   LINE (570, 130)-(610, 160), 15, BF
   LINE (570, 130)-(610, 160), 0, B
   LINE (580, 170)-(600, 182), 0, BF
   LINE (560, 198)-(570, 182), 7
   LINE (570, 182)-(630, 182), 7
   LINE (630, 182)-(620, 198), 7
   LINE (620, 198)-(560, 198), 7
   PAINT (600, 190), 7
   LINE (560, 198)-(570, 182), 0
   LINE (570, 182)-(630, 182), 0
   LINE (630, 182)-(620, 198), 0
   LINE (620, 198)-(560, 198), 0
REM This is Mike Hoover:
   LINE (80, 160)-(80, 240), 0
   LINE (80, 240)-(100, 300), 0
   LINE (100, 300)-(120, 300), 0
   LINE (80, 240)-(60, 300), 0
   LINE (60, 300)-(40, 300), 0
   LINE (80, 170)-(100, 240), 0
   LINE (80, 170)-(60, 240), 0
   CIRCLE (80, 140), 20, 14
   PAINT (80, 140), 14
   CIRCLE (80, 140), 20, 0
   CIRCLE (60, 240), 3, 14
   PAINT (60, 240), 14
   CIRCLE (60, 240), 3, 0
   CIRCLE (100, 240), 3, 14
   PAINT (100, 240), 14
   CIRCLE (100, 240), 3, 0
REM This is Alison Larson:
   LINE (500, 160)-(500, 240), 0
   LINE (500, 240)-(520, 300), 0
   LINE (520, 300)-(540, 300), 0
   LINE (500, 240)-(480, 300), 0
   LINE (480, 300)-(460, 300), 0
   LINE (500, 170)-(480, 240), 0
   CIRCLE (480, 240), 3, 14
   PAINT (480, 240), 14
   CIRCLE (480, 240), 3, 0
   LINE (500, 180)-(520, 240), 0
   CIRCLE (520, 240), 3, 14
   PAINT (520, 240), 14
   CIRCLE (520, 240), 3, 0
   CIRCLE (500, 140), 20, 14
   PAINT (500, 140), 14
   CIRCLE (500, 140), 20, 0
REM These are the dialog boxes:
   REM This is the border:
      LINE (0, 322)-(639, 479), 9, B
   REM This is the 1st box:
      LOCATE 22, 2: COLOR 10: PRINT "MIKE HOOVER:"
      LOCATE 23, 2: COLOR 15: PRINT "Hello detective!"
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 2nd box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "ALISON LARSON:"
      LOCATE 23, 2: COLOR 15: PRINT "Sorry, but the police files aren't accessable right now."
      WHILE INKEY$ = ""
      WEND
MAP1
END SUB

SUB SHOP1
CLS
SCREEN 12
REM This is the inside of the shop:
   REM This is the back wall:
      LINE (0, 0)-(640, 240), 11, BF
   REM This is the counter:
      LINE (0, 240)-(640, 320), 7, BF
      LINE (0, 240)-(640, 240), 0
   REM This is the cash register:
      LINE (500, 200)-(580, 300), 8, BF
      LINE (500, 220)-(440, 260), 8
      LINE (440, 260)-(440, 300), 8
      LINE (440, 300)-(500, 300), 8
      PAINT (480, 260), 8
   REM These are the papers:
      LINE (220, 260)-(160, 320), 15
      LINE (160, 320)-(100, 300), 15
      LINE (100, 300)-(160, 240), 15
      LINE (160, 240)-(220, 260), 15
      PAINT (160, 280), 15
      LINE (220, 260)-(160, 320), 0
      LINE (160, 320)-(100, 300), 0
      LINE (100, 300)-(160, 240), 0
      LINE (160, 240)-(220, 260), 0
      LINE (160, 260)-(120, 320), 15
      LINE (120, 320)-(80, 300), 15
      LINE (80, 300)-(100, 240), 15
      LINE (100, 240)-(160, 260), 15
      PAINT (100, 280), 15
      LINE (160, 260)-(120, 320), 0
      LINE (120, 320)-(80, 300), 0
      LINE (80, 300)-(100, 240), 0
      LINE (100, 240)-(160, 260), 0
      LINE (120, 260)-(80, 320), 15
      LINE (80, 320)-(20, 300), 15
      LINE (20, 300)-(60, 240), 15
      LINE (60, 240)-(120, 260), 15
      PAINT (60, 280), 15
      LINE (120, 260)-(80, 320), 0
      LINE (80, 320)-(20, 300), 0
      LINE (20, 300)-(60, 240), 0
      LINE (60, 240)-(120, 260), 0
   REM This is SCOTT SIMON:
      LINE (120, 160)-(120, 240), 0
      LINE (120, 180)-(80, 240), 0
      LINE (120, 180)-(160, 240), 0
      CIRCLE (120, 100), 60, 14
      PAINT (120, 100), 14
      CIRCLE (120, 100), 60, 0
REM These are the dialog boxes:
   REM This is the border:
      LINE (0, 322)-(639, 479), 9, B
   REM This is the 1st box:
      LOCATE 22, 2: COLOR 10: PRINT "SCOTT SIMON:"
      LOCATE 23, 2: COLOR 15: PRINT "Hello!  Welcome to Scott's Shop.  Can I help you?"
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 2nd box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "Yes, I'm the detective working on the David Hall murder.  Do you have any"
      LOCATE 24, 2: PRINT "information that might help me?"
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 3rd box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "SCOTT SIMON:"
      LOCATE 23, 2: COLOR 15: PRINT "I don't believe so.  Never heard of anyone by that name before now."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 4th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "Do you sell gloves here?  I suspect the murderer was using them since there"
      LOCATE 24, 2: PRINT "were no fingerprints at the murder scene."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 5th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "SCOTT SIMON:"
      LOCATE 23, 2: COLOR 15: PRINT "Oh, yes we do.  If you wait one moment...  Yes, according to our inventory"
      LOCATE 24, 2: PRINT "here it seems a pair was sold yesterday."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 6th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "Do you remember anything about the customer who bought them?"
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 7th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "SCOTT SIMON:"
      LOCATE 23, 2: COLOR 15: PRINT "Actually it was one of my employees... let's see... Jessica Anderson.  She"
      LOCATE 24, 2: PRINT "sold them to a... Jon Stone."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 8th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "Interesting..."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 9th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "SCOTT SIMON:"
      LOCATE 23, 2: COLOR 15: PRINT "Jessica will be by later if you would like to talk to her."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
      C(4) = C(4) + 1
MAP1
END SUB

SUB SHOP2
CLS
SCREEN 12
REM This is the second look inside the shop:

   REM This is the back wall:
      LINE (0, 0)-(640, 240), 11, BF
   REM This is the counter:
      LINE (0, 240)-(640, 320), 7, BF
      LINE (0, 240)-(640, 240), 0
   REM This is the cash register:
      LINE (500, 200)-(580, 300), 8, BF
      LINE (500, 220)-(440, 260), 8
      LINE (440, 260)-(440, 300), 8
      LINE (440, 300)-(500, 300), 8
      PAINT (480, 260), 8
   REM These are the papers:
      LINE (220, 260)-(160, 320), 15
      LINE (160, 320)-(100, 300), 15
      LINE (100, 300)-(160, 240), 15
      LINE (160, 240)-(220, 260), 15
      PAINT (160, 280), 15
      LINE (220, 260)-(160, 320), 0
      LINE (160, 320)-(100, 300), 0
      LINE (100, 300)-(160, 240), 0
      LINE (160, 240)-(220, 260), 0
      LINE (160, 260)-(120, 320), 15
      LINE (120, 320)-(80, 300), 15
      LINE (80, 300)-(100, 240), 15
      LINE (100, 240)-(160, 260), 15
      PAINT (100, 280), 15
      LINE (160, 260)-(120, 320), 0
      LINE (120, 320)-(80, 300), 0
      LINE (80, 300)-(100, 240), 0
      LINE (100, 240)-(160, 260), 0
      LINE (120, 260)-(80, 320), 15
      LINE (80, 320)-(20, 300), 15
      LINE (20, 300)-(60, 240), 15
      LINE (60, 240)-(120, 260), 15
      PAINT (60, 280), 15
      LINE (120, 260)-(80, 320), 0
      LINE (80, 320)-(20, 300), 0
      LINE (20, 300)-(60, 240), 0
      LINE (60, 240)-(120, 260), 0
   REM This is SCOTT SIMON:
      LINE (120, 160)-(120, 240), 0
      LINE (120, 180)-(80, 240), 0
      LINE (120, 180)-(160, 240), 0
      CIRCLE (120, 100), 60, 14
      PAINT (120, 100), 14
      CIRCLE (120, 100), 60, 0
   REM This is Jessica Anderson:
      LINE (360, 160)-(360, 240), 0
      LINE (360, 180)-(320, 240), 0
      LINE (360, 180)-(400, 240), 0
      CIRCLE (360, 100), 60, 14
      PAINT (360, 100), 14
      CIRCLE (360, 100), 60, 0
REM These are the dialog boxes:
   REM This is the border:
      LINE (0, 322)-(639, 479), 9, B
   REM This is the 1st box:
      LOCATE 22, 2: COLOR 10: PRINT "SCOTT SIMON:"
      LOCATE 23, 2: COLOR 15: PRINT "Hello again detective.  This is my employee Jessica."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 2nd box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "Nice to meet you.  I presume that Mr. Simon has told you about myself."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 3rd box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "JESSICA ANDERSON:"
      LOCATE 23, 2: COLOR 15: PRINT "Yes, he has.  The man who bought the gloves, Jon Stone, didn't talk much."
      LOCATE 24, 2: PRINT "He did say that he was buying them for an experiment at the lab.  I also"
      LOCATE 25, 2: PRINT "noticed that he had a vanilla ice cream smear on his shirt.  I gave him"
      LOCATE 26, 2: PRINT "some napkins to clean it off."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 4th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "That will be helpful.  Anything else?"
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 5th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "JESSICA ANDERSON:"
      LOCATE 23, 2: COLOR 15: PRINT "No, I don't think so."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
      C(4) = C(4) + 1
MAP1
END SUB

SUB SHOP3
CLS
SCREEN 12
REM This is the final look inside the shop:

   REM This is the back wall:
      LINE (0, 0)-(640, 240), 11, BF
   REM This is the counter:
      LINE (0, 240)-(640, 320), 7, BF
      LINE (0, 240)-(640, 240), 0
   REM This is the cash register:
      LINE (500, 200)-(580, 300), 8, BF
      LINE (500, 220)-(440, 260), 8
      LINE (440, 260)-(440, 300), 8
      LINE (440, 300)-(500, 300), 8
      PAINT (480, 260), 8
   REM These are the papers:
      LINE (220, 260)-(160, 320), 15
      LINE (160, 320)-(100, 300), 15
      LINE (100, 300)-(160, 240), 15
      LINE (160, 240)-(220, 260), 15
      PAINT (160, 280), 15
      LINE (220, 260)-(160, 320), 0
      LINE (160, 320)-(100, 300), 0
      LINE (100, 300)-(160, 240), 0
      LINE (160, 240)-(220, 260), 0
      LINE (160, 260)-(120, 320), 15
      LINE (120, 320)-(80, 300), 15
      LINE (80, 300)-(100, 240), 15
      LINE (100, 240)-(160, 260), 15
      PAINT (100, 280), 15
      LINE (160, 260)-(120, 320), 0
      LINE (120, 320)-(80, 300), 0
      LINE (80, 300)-(100, 240), 0
      LINE (100, 240)-(160, 260), 0
      LINE (120, 260)-(80, 320), 15
      LINE (80, 320)-(20, 300), 15
      LINE (20, 300)-(60, 240), 15
      LINE (60, 240)-(120, 260), 15
      PAINT (60, 280), 15
      LINE (120, 260)-(80, 320), 0
      LINE (80, 320)-(20, 300), 0
      LINE (20, 300)-(60, 240), 0
      LINE (60, 240)-(120, 260), 0
   REM This is SCOTT SIMON:
      LINE (120, 160)-(120, 240), 0
      LINE (120, 180)-(80, 240), 0
      LINE (120, 180)-(160, 240), 0
      CIRCLE (120, 100), 60, 14
      PAINT (120, 100), 14
      CIRCLE (120, 100), 60, 0
   REM This is Jessica Anderson:
      LINE (360, 160)-(360, 240), 0
      LINE (360, 180)-(320, 240), 0
      LINE (360, 180)-(400, 240), 0
      CIRCLE (360, 100), 60, 14
      PAINT (360, 100), 14
      CIRCLE (360, 100), 60, 0
REM These are the dialog boxes:
   REM This is the border:
      LINE (0, 322)-(639, 479), 9, B
   REM This is the 1st box:
      LOCATE 22, 2: COLOR 10: PRINT "SCOTT SIMON:"
      LOCATE 23, 2: COLOR 15: PRINT "I'm sorry, I don't have any more information for you detective."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
MAP1
END SUB

SUB THANKS
CLS
SCREEN 12
LOCATE 10, 30: COLOR 15: PRINT "THANKS FOR PLAYING!"
LOCATE 12, 30: COLOR 4: PRINT "Murder Mystery"
LOCATE 15, 30: COLOR 15: PRINT "Created By:"
LOCATE 16, 34: COLOR 10: PRINT "Austin Smith - May 2004"
WHILE INKEY$ = ""
WEND
END
END SUB

SUB THREE
CLS
SCREEN 12
REM This is the screen for Sam Brunner:

REM This is the background:
   LINE (0, 0)-(640, 320), 15, BF
REM This is Sam Brunner:
   CIRCLE (340, 180), 60, 14
   PAINT (340, 180), 14
   CIRCLE (340, 180), 60, 0
   LINE (340, 240)-(340, 320), 0
   LINE (340, 260)-(300, 320), 0
   LINE (340, 260)-(380, 320), 0
REM These are the dialog boxes:
   REM This is the border:
      LINE (0, 322)-(639, 479), 9, B
   REM This is the 1st box:
      LOCATE 22, 2: COLOR 10: PRINT "YOU"
      LOCATE 23, 2: COLOR 15: PRINT "Excuse me, do you live around here?"
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 2nd box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "Sam Brunner:"
      LOCATE 23, 2: COLOR 15: PRINT "Me?  I'm Sam Brunner Mr. and Mrs. Hall's animal care taker."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 3rd box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "Oh, so you knew David Hall.  I'm the detective working on his murder case."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 4th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "Sam Brunner:"
      LOCATE 23, 2: COLOR 15: PRINT "Hmm...  Well, if your looking for information I don't have much to give you."
      LOCATE 24, 2: PRINT "I take care of all of Mr. Hall's exotic animal collection.  He collected"
      LOCATE 25, 2: PRINT "them as a hobby.  He usually bought most of them at the local pet store in"
      LOCATE 26, 2: PRINT "town."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 5th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "I suspect he had a pretty large collection then."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 6th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "Sam Brunner:"
      LOCATE 23, 2: COLOR 15: PRINT "Yes he did.  He bought a large amount of animals just a few days ago."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 7th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "Thank you Mr. Brunner.  I won't keep you any longer."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
      N = 1
MAP1
END SUB

SUB TWO
CLS
SCREEN 12
REM This is the screen for Kelly Hall:

REM This is the background:
   LINE (0, 0)-(640, 320), 15, BF
REM This is KELLY HALL:
   CIRCLE (480, 180), 60, 14
   PAINT (480, 180), 14
   CIRCLE (480, 180), 60, 2
   LINE (480, 240)-(480, 320), 0
   LINE (480, 260)-(440, 320), 0
   LINE (480, 260)-(520, 320), 0
REM This is the girl's hair:
   LINE (420, 180)-(440, 240), 2, BF
   LINE (540, 180)-(520, 240), 2, BF
   LINE (440, 180)-(480, 140), 2
   LINE (480, 140)-(520, 180), 2
   PAINT (480, 130), 2
   CIRCLE (480, 180), 60, 0
   LINE (420, 180)-(440, 240), 2, BF
   LINE (540, 180)-(520, 240), 2, BF
REM These are the dialog boxes:
   REM This is the border:
      LINE (0, 322)-(639, 479), 9, B
   REM This is the 1st box:
      LOCATE 22, 2: COLOR 10: PRINT "KELLY HALL:"
      LOCATE 23, 2: COLOR 15: PRINT "Who are you?!  This is private property!  What do you want?!"
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 2nd box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "You are Kelly Hall, correct?"
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 3rd box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "KELLY HALL:"
      LOCATE 23, 2: COLOR 15: PRINT "Yeah.  How'd you know that?  I don't know you."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 4th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "I'm the detective working on your husband's murder.  I thought you might be"
      LOCATE 24, 2: PRINT "able to help me with a few things.  You don't seem very sad about his death."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 5th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "KELLY HALL:"
      LOCATE 23, 2: COLOR 15: PRINT "Of course I'm not sad.  I hated him!  I'm living with my boyfriend Tom Benson"
      LOCATE 24, 2: PRINT "now.  As for any help, you can help yourself.  I'd be happy if the murderer"
      LOCATE 25, 2: PRINT "got away."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
   REM This is the 6th box:
      LINE (1, 323)-(638, 478), 0, BF
      LOCATE 22, 2: COLOR 10: PRINT "YOU:"
      LOCATE 23, 2: COLOR 15: PRINT "(quietly to self sarcastically) ...what a nice person..."
      LOCATE 28, 45: COLOR 8: PRINT "Please hit any key to continue..."
      WHILE INKEY$ = ""
      WEND
      B = 1
MAP1
END SUB

