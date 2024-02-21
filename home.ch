# HOME
use tk
Title: Color Picker - Tk
Width: 400
Size: 200
AppIcon: icon.png
BackGround: bg.png

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
2.link: @ask

Button2: copy
Button2.id: 5
5.x: 210
5.y: 30
5.link: @copyRgb

Button3: copy
Button3.id: 6
6.x: 210
6.y: 65
6.link: @copyHex

Onload: @init
OnDisplay: @show

[@init]
SetVar *rgb (255, 255, 255)
SetVar *hex evaluate('#FFFFFF')
end
[/@init]

[@show]
evaluate Canvas(self.page.sheet, width="50", height="30", bg="black") =>*colorCanvas
evaluate {*colorCanvas}.place(x=150,y=10)
ConfigButton 2 bg="#90240F", fg="white"
ConfigButton 5 bg="#AA420A", fg="white"
ConfigButton 6 bg="#A820A8", fg="white"
[/@show]

[@copyRgb]
evaluate self.clipboard_clear()
evaluate self.clipboard_append( str({*rgb}) )
evaluate self.update()
MessageBox Done Color Copied!
end
[/@copyRgb]

[@copyHex]
evaluate self.clipboard_clear()
evaluate self.clipboard_append( {*hex} )
evaluate self.update()
MessageBox Done Color Copied!
end
[/@copyHex]

[@ask]
AskColor
SetVar *color LASTRESULT
GetTableElement 0 of *color
evaluate ( int({LASTRESULT}[0]), int({LASTRESULT}[1]), int({LASTRESULT}[2]) )
SetVar *rgb LASTRESULT
CreateText 3 LASTRESULT
GetTableElement 1 of *color
SetVar *hex LASTRESULT
CreateText 4 LASTRESULT
evaluate {*colorCanvas}.configure(bg={*hex})
end
[/@ask]

# END