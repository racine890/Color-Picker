# HOME
use tk
Title: Color Picker - Tk
Width: 400
Size: 200
AppIcon: app/res/icon.png
BackGround: app/res/bg.png

Text.nb: 4
Text1: RGB Color
Text1.id: 0
0.x: 50
0.y: 25

Text2: Hex Color
Text2.id: 1
1.x: 50
1.y: 60

Text3: -
Text3.id: 3
3.x: 150
3.y: 25

Text4: -
Text4.id: 4
4.x: 150
4.y: 60

Buttons.nb: 3
Button1: Pick a color
Button1.id: 2
2.x: 135
2.y: 110
2.link: app/scripts/ask.gcs

Button2: copy
Button2.id: 5
5.x: 210
5.y: 30
5.link: app/scripts/copyRgb.gcs

Button3: copy
Button3.id: 6
6.x: 210
6.y: 65
6.link: app/scripts/copyHex.gcs

Onload: app/scripts/init.gcs
OnDisplay: app/scripts/show.gcs

# END