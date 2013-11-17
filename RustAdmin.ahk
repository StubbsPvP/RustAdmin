#MaxThreadsPerHotkey 2
CoordMode,ToolTip,Screen
CoordMode,Pixel,Screen
CoordMode,Mouse,Screen


MsgBox,0,Rust Admin Instructions,1) You need to play in windowed mode`n2) You need to manually login to admin mode`n3) Close the console window`n4) Press F2 to open admin window`n`n -Press F3 at any time to quit-,100

AHKFiles = %A_WorkingDir%

TeleportPlayer = [ABSO] BuckeyeMonkey
TeleportX := 6275.024
TeleportY := 455.483
TeleportZ := -3855

XCenter := A_ScreenWidth/2
YCenter := A_ScreenHeight/2

Delay = 5000
Stop = Yes

#IfWinActive,PlayRust

F2::

ShowConfig()

return


F3::
	ToolTip,Exiting,XCenter,YCenter
	Sleep 1000
	ExitApp
return


ShowConfig() {
	global ConfigChoice
	Gui,2: +AlwaysOnTop +ToolWindow +Owner  ; +Owner avoids a taskbar button.
	Gui,2: Add, Text,, Select Setup:
	Gui,2: Add, Radio, vConfigChoice, Send Notice 
	Gui,2: Add, Radio, , Send Standard Notice 
	Gui,2: Add, Radio, , Create Items 
	Gui,2: Add, Radio, , Teleport 
	Gui,2: Add, Radio, , God Mode
	Gui,2: Add, Radio, , Air Drop
	Gui,2: Add, Button, default xm, OK
	Gui,2: Show, NoActivate, RustAdmin
}

2ButtonOK:
	Gui,2:Submit
	Gui,2:Destroy
	if (ConfigChoice = 1) {
		ShowSendNotice()
	}
	else if (ConfigChoice = 2) {
		ShowSendStandardNotice()
	}
	else if (ConfigChoice = 3) {
		ShowCreateItems()
	}
	else if (ConfigChoice = 4) {
		ShowTeleport()
	}
	else if (ConfigChoice = 5) {
		ShowGodMode()
	}
	else if (ConfigChoice = 6) {
		GiveCommand = airdrop.drop
		ExecuteCommand(GiveCommand)
	}
return

2GuiClose:
	Gui,2:Destroy
return

ShowSendNotice() {
	global CustomNotice
	Gui,3: +AlwaysOnTop +ToolWindow +Owner  ; +Owner avoids a taskbar button.
	Gui,3: Add, Text,, Notice:
	Gui,3: Add, Edit, vCustomNotice ym,%CustomNotice%
	Gui,3: Add, Button, default xm, OK
	Gui,3: Show, NoActivate, RustAdmin Custom Notice
}

3ButtonOK:
	Gui,3:Submit
	Gui,3:Destroy
	SendExecute = say %CustomNotice%
	ExecuteCommand(SendExecute)
return

3GuiClose:
	Gui,3:Destroy
return

ShowSendStandardNotice() {
	global StandardNoticeChoice
	Gui,4: +AlwaysOnTop +ToolWindow +Owner  ; +Owner avoids a taskbar button.
	Gui,4: Add, Text,, Notice:
	Loop,%AHKFiles%*_notice.txt {
		if (A_Index = 1) {
			Gui,4: Add, Radio, vStandardNoticeChoice, %A_LoopFileName% 
		}
		else {
			Gui,4: Add, Radio, , %A_LoopFileName% 
		}
	}
	Gui,4: Add, Button, default xm, OK
	Gui,4: Show, NoActivate, RustAdmin Standard Notice
}

4ButtonOK:
	Gui,4:Submit
	Gui,4:Destroy
	StandardNotice = StandardNoticeChoice
	Loop,%AHKFiles%*_notice.txt
	{
		if (A_Index = StandardNoticeChoice) {
			Send {F1}
			Sleep 100
			Loop, read, %AHKFiles%%A_LoopFileName%
			{
				;ToolTip,%A_LoopReadLine%
				Send say %A_LoopReadLine%
				sleep 100
				Send {Enter}
				sleep 100
			}
			Send {F1}
			Sleep 100
		}
	}
return

4GuiClose:
	Gui,4:Destroy
return

ShowCreateItems() {
	global Items1_1,Items2_1,Items3_1,Items4_1,Items5_1,Items6_1,Items7_1,Items8_1,Items9_1,Items10_1
	global Items1_2,Items2_2,Items3_2,Items4_2,Items5_2,Items6_2,Items7_2,Items8_2,Items9_2,Items10_2
	global Items11_1,Items12_1,Items13_1,Items14_1,Items15_1,Items16_1,Items17_1,Items18_1,Items19_1,Items20_1
	global Items11_2,Items12_2,Items13_2,Items14_2,Items15_2,Items16_2,Items17_2,Items18_2,Items19_2,Items20_2
	global Items21_1,Items22_1,Items23_1,Items24_1,Items25_1,Items26_1,Items27_1,Items28_1,Items29_1,Items30_1
	global Items21_2,Items22_2,Items23_2,Items24_2,Items25_2,Items26_2,Items27_2,Items28_2,Items29_2,Items30_2
	global Items31_1,Items32_1,Items33_1,Items34_1,Items35_1,Items36_1,Items37_1,Items38_1,Items39_1,Items40_1
	global Items31_2,Items32_2,Items33_2,Items34_2,Items35_2,Items36_2,Items37_2,Items38_2,Items39_2,Items40_2
	global Items41_1,Items42_1,Items43_1,Items44_1,Items45_1,Items46_1,Items47_1,Items48_1,Items49_1,Items50_1
	global Items41_2,Items42_2,Items43_2,Items44_2,Items45_2,Items46_2,Items47_2,Items48_2,Items49_2,Items50_2
	global Items51_1,Items52_1,Items53_1,Items54_1,Items55_1,Items56_1,Items57_1,Items58_1,Items59_1,Items60_1
	global Items51_2,Items52_2,Items53_2,Items54_2,Items55_2,Items56_2,Items57_2,Items58_2,Items59_2,Items60_2
	global Items61_1,Items62_1,Items63_1,Items64_1,Items65_1,Items66_1,Items67_1,Items68_1,Items69_1,Items70_1
	global Items61_2,Items62_2,Items63_2,Items64_2,Items65_2,Items66_2,Items67_2,Items68_2,Items69_2,Items70_2
	global Items71_1,Items72_1,Items73_1,Items74_1,Items75_1,Items76_1,Items77_1,Items78_1,Items79_1,Items80_1
	global Items71_2,Items72_2,Items73_2,Items74_2,Items75_2,Items76_2,Items77_2,Items78_2,Items79_2,Items80_2
	global Items81_1,Items82_1,Items83_1,Items84_1,Items85_1,Items86_1,Items87_1,Items88_1,Items89_1,Items90_1
	global Items81_2,Items82_2,Items83_2,Items84_2,Items85_2,Items86_2,Items87_2,Items88_2,Items89_2,Items90_2
	global Items91_1,Items92_1,Items93_1,Items94_1,Items95_1,Items96_1,Items97_1,Items98_1,Items99_1,Items100_1
	global Items91_2,Items92_2,Items93_2,Items94_2,Items95_2,Items96_2,Items97_2,Items98_2,Items99_2,Items100_2
	
	global ItemPlayer
	
	Gui,5: +AlwaysOnTop +ToolWindow +Owner  ; +Owner avoids a taskbar button.
	Gui,5: Add, Text,, Player:
	Gui,5: Add, Edit, vItemPlayer ym,%ItemPlayer%
	XPOSMOD := 0
	YPOSMOD := 1
	Loop, read, %AHKFiles%item_list.txt
	{
		StringSplit, param_array, A_LoopReadLine, %A_Tab%
		YPOS := (YPOSMOD * 25) + 10
		YPOSNUM := (YPOSMOD * 25) + 7
		XPOS := 10 + (XPOSMOD * 225)
		XPOSNUM := 200 + (XPOSMOD * 225)
		Gui,5: Add, Checkbox, vItems%A_Index%_1 X%XPOS% Y%YPOS%, %param_array1%
		Gui,5: Add, Edit, vItems%A_Index%_2 X%XPOSNUM% Y%YPOSNUM%, %param_array2%
		if (Mod(A_Index,20) = 0) {
			XPOSMOD := XPOSMOD + 1
			YPOSMOD := 1
		}
		else {
			YPOSMOD := YPOSMOD + 1
		}
	}
	Gui,5: Add, Button, default xm, OK
	Gui,5: Show, NoActivate, RustAdmin Create Items
}

5ButtonOK:
	global Items1_1,Items2_1,Items3_1,Items4_1,Items5_1,Items6_1,Items7_1,Items8_1,Items9_1,Items10_1
	global Items1_2,Items2_2,Items3_2,Items4_2,Items5_2,Items6_2,Items7_2,Items8_2,Items9_2,Items10_2
	global Items11_1,Items12_1,Items13_1,Items14_1,Items15_1,Items16_1,Items17_1,Items18_1,Items19_1,Items20_1
	global Items11_2,Items12_2,Items13_2,Items14_2,Items15_2,Items16_2,Items17_2,Items18_2,Items19_2,Items20_2
	global Items21_1,Items22_1,Items23_1,Items24_1,Items25_1,Items26_1,Items27_1,Items28_1,Items29_1,Items30_1
	global Items21_2,Items22_2,Items23_2,Items24_2,Items25_2,Items26_2,Items27_2,Items28_2,Items29_2,Items30_2
	global Items31_1,Items32_1,Items33_1,Items34_1,Items35_1,Items36_1,Items37_1,Items38_1,Items39_1,Items40_1
	global Items31_2,Items32_2,Items33_2,Items34_2,Items35_2,Items36_2,Items37_2,Items38_2,Items39_2,Items40_2
	global Items41_1,Items42_1,Items43_1,Items44_1,Items45_1,Items46_1,Items47_1,Items48_1,Items49_1,Items50_1
	global Items41_2,Items42_2,Items43_2,Items44_2,Items45_2,Items46_2,Items47_2,Items48_2,Items49_2,Items50_2
	global Items51_1,Items52_1,Items53_1,Items54_1,Items55_1,Items56_1,Items57_1,Items58_1,Items59_1,Items60_1
	global Items51_2,Items52_2,Items53_2,Items54_2,Items55_2,Items56_2,Items57_2,Items58_2,Items59_2,Items60_2
	global Items61_1,Items62_1,Items63_1,Items64_1,Items65_1,Items66_1,Items67_1,Items68_1,Items69_1,Items70_1
	global Items61_2,Items62_2,Items63_2,Items64_2,Items65_2,Items66_2,Items67_2,Items68_2,Items69_2,Items70_2
	global Items71_1,Items72_1,Items73_1,Items74_1,Items75_1,Items76_1,Items77_1,Items78_1,Items79_1,Items80_1
	global Items71_2,Items72_2,Items73_2,Items74_2,Items75_2,Items76_2,Items77_2,Items78_2,Items79_2,Items80_2
	global Items81_1,Items82_1,Items83_1,Items84_1,Items85_1,Items86_1,Items87_1,Items88_1,Items89_1,Items90_1
	global Items81_2,Items82_2,Items83_2,Items84_2,Items85_2,Items86_2,Items87_2,Items88_2,Items89_2,Items90_2
	global Items91_1,Items92_1,Items93_1,Items94_1,Items95_1,Items96_1,Items97_1,Items98_1,Items99_1,Items100_1
	global Items91_2,Items92_2,Items93_2,Items94_2,Items95_2,Items96_2,Items97_2,Items98_2,Items99_2,Items100_2
	global ItemPlayer
	
	Gui,5:Submit
	Gui,5:Destroy
	Loop, read, %AHKFiles%item_list.txt
	{
		StringSplit, param_array, A_LoopReadLine, %A_Tab% 
		if (Items%A_Index%_1 = 1) {
			Amount = % Items%A_Index%_2
			GiveCommand = inv.giveplayer "%ItemPlayer%" "%param_array1%" %Amount%
			ExecuteCommand(GiveCommand)
		}
	}
return

5GuiClose:
	Gui,5:Destroy
return

ShowTeleport() {
	global TeleportChoice,TeleportPlayer,TeleportToPlayer,TeleportX,TeleportY,TeleportZ
	
	
	Gui,6: +AlwaysOnTop +ToolWindow +Owner  ; +Owner avoids a taskbar button.
	Gui,6: Add, Text,, Player:
	Gui,6: Add, Edit, vTeleportPlayer ym,%TeleportPlayer%
	Gui,6: Add, Radio, vTeleportChoice, To Player
	Gui,6: Add, Radio, , To Pos
	Gui,6: Add, Edit, vTeleportToPlayer X125 Y30,%TeleportToPlayer%
	Gui,6: Add, Text, X25 Y78, X:
	Gui,6: Add, Edit, vTeleportX X40 Y75,%TeleportX%
	Gui,6: Add, Text, X110 Y78, Y:
	Gui,6: Add, Edit, vTeleportY X125 Y75,%TeleportY%
	Gui,6: Add, Text, X195 Y78, Z:
	Gui,6: Add, Edit, vTeleportZ X210 Y75,%TeleportZ%
	Gui,6: Add, Button, default xm, OK
	Gui,6: Show, NoActivate, RustAdmin Teleport
}

6ButtonOK:
	global TeleportChoice,TeleportPlayer,TeleportToPlayer,TeleportX,TeleportY,TeleportZ
	Gui,6:Submit
	Gui,6:Destroy
	TPCommand = teleport.topos "%TeleportPlayer%" "%TeleportX%" "%TeleportY%" "%TeleportZ%"
	if (TeleportChoice = 1) {
		TPCommand = teleport.toplayer "%TeleportPlayer%" "%TeleportToPlayer%"
	}
	ExecuteCommand(TPCommand)
return

6GuiClose:
	Gui,6:Destroy
return

ShowGodMode() {
	global GodModeChoice
	Gui,7: +AlwaysOnTop +ToolWindow +Owner  ; +Owner avoids a taskbar button.
	Gui,7: Add, Text,, Turn Godmode:
	Gui,7: Add, Radio, vGodModeChoice Checked, On 
	Gui,7: Add, Radio, , Off 
	Gui,7: Add, Button, default xm, OK
	Gui,7: Show, NoActivate, Choose God Mode
}

7ButtonOK:
	Gui,7:Submit
	Gui,7:Destroy
	SendGodeMode = dmg.godmode true
	if (GodModeChoice == 2) {
		SendGodeMode = dmg.godmode false
	}
	ExecuteCommand(SendGodeMode)
return

7GuiClose:
	Gui,7:Destroy
return

ExecuteCommand(command) {

	Send {F1}
	Sleep 100
	Send %command%
	sleep 100
	Send {Enter}
	sleep 100
	Send {F1}
	Sleep 100
}





