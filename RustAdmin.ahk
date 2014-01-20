#MaxThreadsPerHotkey 2
CoordMode,ToolTip,Screen
CoordMode,Pixel,Screen
CoordMode,Mouse,Screen

MsgBox,,Rust Admin Script,Follow the instructions below to run the program. Enjoy.`n`n1.) Open RUST in Windowed Mode.`n2.) Connect to your server.`n3.) Press F2 to open the Admin Script Menu`n4.) Click Login and Input Server Password`n5.) Enjoy. :)`n`n`n-- Press F12 to close the script at any time. --`n`n`nF2 - Admin Menu`nF3 - Quit Script`nF4 - Borderless Windowed (Must be in windowed mode),100

AHKFiles = %A_WorkingDir%

TeleportPlayer = Krevan
TeleportX := 909
TeleportY := 359
TeleportZ := 735
Banid = STEAM_0:1:12345678
Username = Hacker Name
Reason = Hacking and Spamming
Say = Server will be restarting within a few minutes
Time = 16

XCenter := A_ScreenWidth/2
YCenter := A_ScreenHeight/2

Delay = 5000
Stop = Yes

#IfWinActive, PlayRust

F2::
	ShowConfig()
return

F3::
    ToolTip,Exiting,XCenter,YCenter
    Sleep 1000
    ExitApp
return

F4::
	WinSet, Style, -0xC00000 ; hide title bar
	WinSet, Style, -0x800000 ; hide thin-line border
	WinSet, Style, -0x400000 ; hide dialog frame
	WinSet, Style, -0x40000 ; hide thickframe/sizebox
	WinMove, , , 0, 0, 1920, 1080
return

ShowConfig() {
        global ConfigChoice
        Gui,2: +AlwaysOnTop +ToolWindow +Owner ; +Owner avoids a taskbar button.
		Gui,2: Add, Radio, x6 y7 w100 h20 vConfigChoice, Admin Login
		Gui,2: Add, Radio, x106 y7 w100 h20 , Admin Loadout
		Gui,2: Add, Radio, x206 y7 w100 h20 , God Mode
		Gui,2: Add, Radio, x6 y27 w100 h20 , Server Notice
		Gui,2: Add, Radio, x106 y27 w100 h20 , Server Status
		Gui,2: Add, Radio, x206 y27 w100 h20 , Spawn Items
		Gui,2: Add, Radio, x6 y47 w100 h20 , Supply Drop
		Gui,2: Add, Radio, x106 y47 w100 h20 , Teleporting
		Gui,2: Add, Radio, x206 y47 w100 h20 , Time Cycle
		Gui,2: Add, Radio, x6 y67 w100 h20 , Player Kick
		Gui,2: Add, Radio, x106 y67 w100 h20 , Player Ban
		Gui,2: Add, Radio, x206 y67 w100 h20 , SteamID Ban
		Gui,2: Add, Button, x6 y97 w300 h40 , OK
        Gui,2: Show, NoActivate, Rust Admin Script Menu
}

2ButtonOK:
	Gui,2:Submit
	Gui,2:Destroy
	if (ConfigChoice = 1) {
		ShowLogin()
	}
	else if (ConfigChoice = 2) {
		Send {F1}
		sleep 100
		Send inv.give "Invisible Helmet" "1"
		sleep 100
		Send {Enter}
		Send inv.give "Invisible Vest" "1"
		sleep 100
		Send {Enter}
		Send inv.give "Invisible Pants" "1"
		sleep 100
		Send {Enter}
		Send inv.give "Invisible Boots" "1"
		sleep 100
		Send {Enter}
		Send inv.give "Uber Hatchet" "1"
		sleep 100
		Send {Enter}
		sleep 100
		Send {F1}
	}
	else if (ConfigChoice = 3) {
		ShowGodMode()
	}
	else if (ConfigChoice = 4) {
		ShowSendNotice()
	}
	else if (ConfigChoice = 5) {
		Send {F1}
		Sleep 100
		Send status
		sleep 100
		Send {Enter}
	}
	else if (ConfigChoice = 6) {
		ShowCreateItems()
	}
	else if (ConfigChoice = 7) {
		Send {F1}
		Sleep 100
		Send airdrop.drop
		sleep 100
		send {Enter}
		sleep 100
		send {F1}
	}
	else if (ConfigChoice = 8) {
		ShowTeleport()
	}
	else if (ConfigChoice = 9) {
		ShowTime()
	}
	else if (ConfigChoice = 10) {
		ShowKick()
	}
	else if (ConfigChoice = 11) {
		ShowBan()
	}
	else if (ConfigChoice = 12) {
		ShowBanid()
	}
return

2GuiClose:
	Gui,2:Destroy
return

ShowLogin() {
	global Login
	Gui,3: +AlwaysOnTop +ToolWindow +Owner  ; +Owner avoids a taskbar button.
	Gui,3: Add, Text,, Admin Password: 
	Gui,3: Add, Edit, vLogin ym,%Login%
	Gui,3: Add, Button, default xm, OK
	Gui,3: Show, NoActivate, RustAdmin RCON Login
}

3ButtonOK:
	Gui,3:Submit
	Gui,3:Destroy
	SendExecute = rcon.login "%Login%"
	ExecuteCommand(SendExecute)
return

3GuiClose:
	Gui,3:Destroy
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
	global Items101_1,Items102_1,Items103_1,Items104_1,Items105_1,Items106_1,Items107_1,Items108_1,Items109_1,Items110_1
	global Items101_2,Items102_2,Items103_2,Items104_2,Items105_2,Items106_2,Items107_2,Items108_2,Items109_2,Items110_2
	global Items111_1,Items112_1,Items113_1,Items114_1,Items115_1,Items116_1,Items117_1,Items118_1,Items119_1,Items120_1
	global Items111_2,Items112_2,Items113_2,Items114_2,Items115_2,Items116_2,Items117_2,Items118_2,Items119_2,Items120_2
	global Items121_1,Items122_1,Items123_1,Items124_1,Items125_1,Items126_1,Items127_1,Items128_1,Items129_1,Items130_1
	global Items121_2,Items122_2,Items123_2,Items124_2,Items125_2,Items126_2,Items127_2,Items128_2,Items129_2,Items130_2
	global Items131_1,Items132_1,Items133_1,Items134_1,Items135_1,Items136_1,Items137_1,Items138_1,Items139_1,Items140_1
	global Items131_2,Items132_2,Items133_2,Items134_2,Items135_2,Items136_2,Items137_2,Items138_2,Items139_2,Items140_2
	global Items141_1,Items142_1,Items143_1,Items144_1,Items145_1,Items146_1,Items147_1,Items148_1,Items149_1,Items150_1
	global Items141_2,Items142_2,Items143_2,Items144_2,Items145_2,Items146_2,Items147_2,Items148_2,Items149_2,Items150_2
	global Items151_1,Items152_1,Items153_1,Items154_1,Items155_1,Items156_1,Items157_1,Items158_1,Items159_1,Items160_1
	global Items151_2,Items152_2,Items153_2,Items154_2,Items155_2,Items156_2,Items157_2,Items158_2,Items159_2,Items160_2
	global Items161_1,Items162_1,Items163_1,Items164_1,Items165_1,Items166_1,Items167_1,Items168_1,Items169_1,Items170_1
	global Items161_2,Items162_2,Items163_2,Items164_2,Items165_2,Items166_2,Items167_2,Items168_2,Items169_2,Items170_2
	global Items171_1,Items172_1,Items173_1,Items174_1,Items175_1,Items176_1,Items177_1,Items178_1,Items179_1,Items180_1
	global Items171_2,Items172_2,Items173_2,Items174_2,Items175_2,Items176_2,Items177_2,Items178_2,Items179_2,Items180_2
	global Items181_1,Items182_1,Items183_1,Items184_1,Items185_1,Items186_1,Items187_1,Items188_1,Items189_1,Items190_1
	global Items181_2,Items182_2,Items183_2,Items184_2,Items185_2,Items186_2,Items187_2,Items188_2,Items189_2,Items190_2
	global Items191_1,Items192_1,Items193_1,Items194_1,Items195_1,Items196_1,Items197_1,Items198_1,Items199_1,Items200_1
	global Items191_2,Items192_2,Items193_2,Items194_2,Items195_2,Items196_2,Items197_2,Items198_2,Items199_2,Items200_2
	global Items201_1,Items202_1,Items203_1,Items204_1,Items205_1,Items206_1,Items207_1,Items208_1,Items209_1,Items210_1
	global Items201_2,Items202_2,Items203_2,Items204_2,Items205_2,Items206_2,Items207_2,Items208_2,Items209_2,Items210_2
	global Items211_1,Items212_1,Items213_1,Items214_1,Items215_1,Items216_1,Items217_1,Items218_1,Items219_1,Items220_1
	global Items211_2,Items212_2,Items213_2,Items214_2,Items215_2,Items216_2,Items217_2,Items218_2,Items219_2,Items220_2
	global Items221_1,Items222_1,Items223_1,Items224_1,Items225_1,Items226_1,Items227_1,Items228_1,Items229_1,Items230_1
	global Items221_2,Items222_2,Items223_2,Items224_2,Items225_2,Items226_2,Items227_2,Items228_2,Items229_2,Items230_2
	global Items231_1,Items232_1,Items233_1,Items234_1,Items235_1,Items236_1,Items237_1,Items238_1,Items239_1,Items240_1
	global Items231_2,Items232_2,Items233_2,Items234_2,Items235_2,Items236_2,Items237_2,Items238_2,Items239_2,Items240_2
	global Items241_1,Items242_1,Items243_1,Items244_1,Items245_1,Items246_1,Items247_1,Items248_1,Items249_1,Items250_1
	global Items241_2,Items242_2,Items243_2,Items244_2,Items245_2,Items246_2,Items247_2,Items248_2,Items249_2,Items250_2
	global Items251_1,Items252_1,Items253_1,Items254_1,Items255_1,Items256_1,Items257_1,Items258_1,Items259_1,Items260_1
	global Items251_2,Items252_2,Items253_2,Items254_2,Items255_2,Items256_2,Items257_2,Items258_2,Items259_2,Items260_2
	global Items261_1,Items262_1,Items263_1,Items264_1,Items265_1,Items266_1,Items267_1,Items268_1,Items269_1,Items270_1
	global Items261_2,Items262_2,Items263_2,Items264_2,Items265_2,Items266_2,Items267_2,Items268_2,Items269_2,Items270_2
	global Items271_1,Items272_1,Items273_1,Items274_1,Items275_1,Items276_1,Items277_1,Items278_1,Items279_1,Items280_1
	global Items271_2,Items272_2,Items273_2,Items274_2,Items275_2,Items276_2,Items277_2,Items278_2,Items279_2,Items280_2
	global Items281_1,Items282_1,Items283_1,Items284_1,Items285_1,Items286_1,Items287_1,Items288_1,Items289_1,Items290_1
	global Items281_2,Items282_2,Items283_2,Items284_2,Items285_2,Items286_2,Items287_2,Items288_2,Items289_2,Items290_2
	global Items291_1,Items292_1,Items293_1,Items294_1,Items295_1,Items296_1,Items297_1,Items298_1,Items299_1,Items300_1
	global Items291_2,Items292_2,Items293_2,Items294_2,Items295_2,Items296_2,Items297_2,Items298_2,Items299_2,Items300_2

	global ItemPlayer
	
	Gui,4: +AlwaysOnTop +ToolWindow +Owner  ; +Owner avoids a taskbar button.
	Gui,4: Add, Text, x6 y7 w40 h20 , Player:
	Gui,4: Add, Edit, x46 y7 w120 h20 vItemPlayer, %ItemPlayer%
	Gui,4: Add, Radio, x176 y7 w80 h20 vPlayerChoice Checked, Individual
	Gui,4: Add, Radio, x266 y7 w80 h20 , All Players
	XPOSMOD := 0
	YPOSMOD := 1.5
	Loop, read, %AHKFiles%item_list.txt
	{
		StringSplit, param_array, A_LoopReadLine, %A_Tab%
		YPOS := (YPOSMOD * 25) + 10
		YPOSNUM := (YPOSMOD * 25) + 7
		XPOS := 10 + (XPOSMOD * 200)
		XPOSNUM := 175 + (XPOSMOD * 200)
		Gui,4: Add, Checkbox, vItems%A_Index%_1 X%XPOS% Y%YPOS%, %param_array1%
		Gui,4: Add, Edit, w27 h20 vItems%A_Index%_2 X%XPOSNUM% Y%YPOSNUM%, %param_array2%
		if (Mod(A_Index,31) = 0) {
			XPOSMOD := XPOSMOD + 1
			YPOSMOD := 1.5
		}
		else {
			YPOSMOD := YPOSMOD + 1
		}
	}
	Gui,4: Add, Button, x356 y7 w430 h20 , OK
	Gui,4: Show, NoActivate, RustAdmin Create Items
}

4ButtonOK:
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
	global Items101_1,Items102_1,Items103_1,Items104_1,Items105_1,Items106_1,Items107_1,Items108_1,Items109_1,Items110_1
	global Items101_2,Items102_2,Items103_2,Items104_2,Items105_2,Items106_2,Items107_2,Items108_2,Items109_2,Items110_2
	global Items111_1,Items112_1,Items113_1,Items114_1,Items115_1,Items116_1,Items117_1,Items118_1,Items119_1,Items120_1
	global Items111_2,Items112_2,Items113_2,Items114_2,Items115_2,Items116_2,Items117_2,Items118_2,Items119_2,Items120_2
	global Items121_1,Items122_1,Items123_1,Items124_1,Items125_1,Items126_1,Items127_1,Items128_1,Items129_1,Items130_1
	global Items121_2,Items122_2,Items123_2,Items124_2,Items125_2,Items126_2,Items127_2,Items128_2,Items129_2,Items130_2
	global Items131_1,Items132_1,Items133_1,Items134_1,Items135_1,Items136_1,Items137_1,Items138_1,Items139_1,Items140_1
	global Items131_2,Items132_2,Items133_2,Items134_2,Items135_2,Items136_2,Items137_2,Items138_2,Items139_2,Items140_2
	global Items141_1,Items142_1,Items143_1,Items144_1,Items145_1,Items146_1,Items147_1,Items148_1,Items149_1,Items150_1
	global Items141_2,Items142_2,Items143_2,Items144_2,Items145_2,Items146_2,Items147_2,Items148_2,Items149_2,Items150_2
	global Items151_1,Items152_1,Items153_1,Items154_1,Items155_1,Items156_1,Items157_1,Items158_1,Items159_1,Items160_1
	global Items151_2,Items152_2,Items153_2,Items154_2,Items155_2,Items156_2,Items157_2,Items158_2,Items159_2,Items160_2
	global Items161_1,Items162_1,Items163_1,Items164_1,Items165_1,Items166_1,Items167_1,Items168_1,Items169_1,Items170_1
	global Items161_2,Items162_2,Items163_2,Items164_2,Items165_2,Items166_2,Items167_2,Items168_2,Items169_2,Items170_2
	global Items171_1,Items172_1,Items173_1,Items174_1,Items175_1,Items176_1,Items177_1,Items178_1,Items179_1,Items180_1
	global Items171_2,Items172_2,Items173_2,Items174_2,Items175_2,Items176_2,Items177_2,Items178_2,Items179_2,Items180_2
	global Items181_1,Items182_1,Items183_1,Items184_1,Items185_1,Items186_1,Items187_1,Items188_1,Items189_1,Items190_1
	global Items181_2,Items182_2,Items183_2,Items184_2,Items185_2,Items186_2,Items187_2,Items188_2,Items189_2,Items190_2
	global Items191_1,Items192_1,Items193_1,Items194_1,Items195_1,Items196_1,Items197_1,Items198_1,Items199_1,Items100_1
	global Items191_2,Items192_2,Items193_2,Items194_2,Items195_2,Items196_2,Items197_2,Items198_2,Items199_2,Items200_2
	global Items201_1,Items202_1,Items203_1,Items204_1,Items205_1,Items206_1,Items207_1,Items208_1,Items209_1,Items210_1
	global Items201_2,Items202_2,Items203_2,Items204_2,Items205_2,Items206_2,Items207_2,Items208_2,Items209_2,Items210_2
	global Items211_1,Items212_1,Items213_1,Items214_1,Items215_1,Items216_1,Items217_1,Items218_1,Items219_1,Items220_1
	global Items211_2,Items212_2,Items213_2,Items214_2,Items215_2,Items216_2,Items217_2,Items218_2,Items219_2,Items220_2
	global Items221_1,Items222_1,Items223_1,Items224_1,Items225_1,Items226_1,Items227_1,Items228_1,Items229_1,Items230_1
	global Items221_2,Items222_2,Items223_2,Items224_2,Items225_2,Items226_2,Items227_2,Items228_2,Items229_2,Items230_2
	global Items231_1,Items232_1,Items233_1,Items234_1,Items235_1,Items236_1,Items237_1,Items238_1,Items239_1,Items240_1
	global Items231_2,Items232_2,Items233_2,Items234_2,Items235_2,Items236_2,Items237_2,Items238_2,Items239_2,Items240_2
	global Items241_1,Items242_1,Items243_1,Items244_1,Items245_1,Items246_1,Items247_1,Items248_1,Items249_1,Items250_1
	global Items241_2,Items242_2,Items243_2,Items244_2,Items245_2,Items246_2,Items247_2,Items248_2,Items249_2,Items250_2
	global Items251_1,Items252_1,Items253_1,Items254_1,Items255_1,Items256_1,Items257_1,Items258_1,Items259_1,Items260_1
	global Items251_2,Items252_2,Items253_2,Items254_2,Items255_2,Items256_2,Items257_2,Items258_2,Items259_2,Items260_2
	global Items261_1,Items262_1,Items263_1,Items264_1,Items265_1,Items266_1,Items267_1,Items268_1,Items269_1,Items270_1
	global Items261_2,Items262_2,Items263_2,Items264_2,Items265_2,Items266_2,Items267_2,Items268_2,Items269_2,Items270_2
	global Items271_1,Items272_1,Items273_1,Items274_1,Items275_1,Items276_1,Items277_1,Items278_1,Items279_1,Items280_1
	global Items271_2,Items272_2,Items273_2,Items274_2,Items275_2,Items276_2,Items277_2,Items278_2,Items279_2,Items280_2
	global Items281_1,Items282_1,Items283_1,Items284_1,Items285_1,Items286_1,Items287_1,Items288_1,Items289_1,Items290_1
	global Items281_2,Items282_2,Items283_2,Items284_2,Items285_2,Items286_2,Items287_2,Items288_2,Items289_2,Items290_2
	global Items291_1,Items292_1,Items293_1,Items294_1,Items295_1,Items296_1,Items297_1,Items298_1,Items299_1,Items300_1
	global Items291_2,Items292_2,Items293_2,Items294_2,Items295_2,Items296_2,Items297_2,Items298_2,Items299_2,Items300_2
	global ItemPlayer
	
	Gui,4:Submit
	Gui,4:Destroy
	
	Loop, read, %AHKFiles%\item_list.txt
	{
		StringSplit, param_array, A_LoopReadLine, %A_Tab% 
		if (Items%A_Index%_1 = 1) {
			Amount = % Items%A_Index%_2
			GiveCommand = inv.giveplayer "%ItemPlayer%" "%param_array1%" %Amount%
			if (PlayerChoice == 2) {
				GiveCommand = inv.giveall "%param_array1%" %Amount%
			}
			ExecuteCommand(GiveCommand)
		}
	}

return

4GuiClose:
	Gui,4:Destroy
return

ShowTeleport() {
	global TeleportChoice,TeleportPlayer,TeleportToPlayer,TeleportX,TeleportY,TeleportZ
	Gui,5: +AlwaysOnTop +ToolWindow +Owner  ; +Owner avoids a taskbar button.
	Gui,5: Add, Text, x6 y7 w40 h20 , Player:
	Gui,5: Add, Edit, x46 y7 w110 h20 vTeleportPlayer, %TeleportPlayer%
	Gui,5: Add, Radio, x166 y7 w70 h20 vTeleportChoice, To Player
	Gui,5: Add, Radio, x246 y7 w60 h20 , To XYZ
	Gui,5: Add, Radio, x6 y67 w140 h20 +Center, Foot of Everrust
	Gui,5: Add, Radio, x6 y87 w140 h20 +Center, Rad Town (North)
	Gui,5: Add, Radio, x6 y107 w140 h20 +Center, Rad Town (South)
	Gui,5: Add, Radio, x6 y127 w140 h20 +Center, Rad Town (East)
	Gui,5: Add, Radio, x6 y147 w140 h20 +Center, Rad Town (West)
	Gui,5: Add, Radio, x166 y67 w140 h20 +Center, Checkpoints
	Gui,5: Add, Radio, x166 y87 w140 h20 +Center, Sheds
	Gui,5: Add, Radio, x166 y107 w140 h20 +Center, Hangar
	Gui,5: Add, Radio, x166 y127 w140 h20 +Center, Bunkers
	Gui,5: Add, Radio, x166 y147 w140 h20 +Center, Resource Valley
	Gui,5: Add, Text, x6 y37 w40 h20 , Target:
	Gui,5: Add, Edit, x46 y37 w110 h20 vTeleportToPlayer, %TeleportToPlayer%
	Gui,5: Add, Text, x166 y37 w10 h20 , X:
	Gui,5: Add, Edit, x176 y37 w30 h20 vTeleportX, %TeleportX%
	Gui,5: Add, Text, x216 y37 w10 h20 , Y:
	Gui,5: Add, Edit, x226 y37 w30 h20 vTeleportY, %TeleportY%
	Gui,5: Add, Text, x266 y37 w10 h20 , Z:
	Gui,5: Add, Edit, x276 y37 w30 h20 vTeleportZ, %TeleportZ%
	Gui,5: Add, Text, x6 y220 +center, Map Coords Grabbed from: http://tinyurl.com/RustCoordMap
	Gui,5: Add, Button, x6 y177 w300 h30 , OK
	Gui,5: Show, NoActivate, RustAdmin Teleport
}

5ButtonOK:
	global TeleportChoice,TeleportPlayer,TeleportToPlayer,TeleportX,TeleportY,TeleportZ
	Gui,5:Submit
	Gui,5:Destroy
	if (TeleportChoice = 1) {
		TPCommand = teleport.toplayer "%TeleportPlayer%" "%TeleportToPlayer%"
	}
	else if (TeleportChoice = 2) {
		TPCommand = teleport.topos "%TeleportPlayer%" "%TeleportX%" "%TeleportY%" "%TeleportZ%"
	}
	else if (TeleportChoice = 3) {
		TPCommand = teleport.topos "%TeleportPlayer%" "4500" "485" "-4400"
	}
	else if (TeleportChoice = 4) {
		TPCommand = teleport.topos "%TeleportPlayer%" "5250" "370" "-4850"
	}
	else if (TeleportChoice = 5) {
		TPCommand = teleport.topos "%TeleportPlayer%" "6690" "355" "-3880"
	}
	else if (TeleportChoice = 6) {
		TPCommand = teleport.topos "%TeleportPlayer%" "6050" "380" "-3620"
	}
	else if (TeleportChoice = 7) {
		TPCommand = teleport.topos "%TeleportPlayer%" "6300" "360" "-4650"
	}
	else if (TeleportChoice = 8) {
		TPCommand = teleport.topos "%TeleportPlayer%" "5700" "410" "-4280"
	}
	else if (TeleportChoice = 9) {
		TPCommand = teleport.topos "%TeleportPlayer%" "6050" "390" "-4400"
	}
	else if (TeleportChoice = 10) {
		TPCommand = teleport.topos "%TeleportPlayer%" "6600" "355" "-4400"
	}
	else if (TeleportChoice = 11) {
		TPCommand = teleport.topos "%TeleportPlayer%" "6410" "385" "-3880"
	}
	else if (TeleportChoice = 12) {
		TPCommand = teleport.topos "%TeleportPlayer%" "5000" "460" "-3000"
	}
	ExecuteCommand(TPCommand)
return

5GuiClose:
	Gui,5:Destroy
return

ShowGodMode() {
	global GodModeChoice
	Gui,6: +AlwaysOnTop +ToolWindow +Owner  ; +Owner avoids a taskbar button.
	Gui,6: Add, Text,, Turn God Mode:
	Gui,6: Add, Radio, vGodModeChoice Checked, On 
	Gui,6: Add, Radio, , Off 
	Gui,6: Add, Button, default xm, OK
	Gui,6: Show, NoActivate, God Mode Toggle
}

6ButtonOK:
	Gui,6:Submit
	Gui,6:Destroy
	SendGodMode = dmg.godmode true
	if (GodModeChoice == 2) {
		SendGodMode = dmg.godmode false
	}
	ExecuteCommand(SendGodMode)
return

6GuiClose:
	Gui,6:Destroy
return

ShowKick() {
	global Kick
	Gui,7: +AlwaysOnTop +ToolWindow +Owner  ; +Owner avoids a taskbar button.
	Gui,7: Add, Text,, Kick:
	Gui,7: Add, Edit, vKick ym,%Kick%
	Gui,7: Add, Button, default xm, OK
	Gui,7: Show, NoActivate, Kick Menu
}

7ButtonOK:
	Gui,7:Submit
	Gui,7:Destroy
	KickCommand = kick "%Kick%"
	ExecuteCommand(KickCommand)
return

7GuiClose:
	Gui,7:Destroy
return

ShowBan() {
	global Ban
	Gui,8: +AlwaysOnTop +ToolWindow +Owner  ; +Owner avoids a taskbar button.
	Gui,8: Add, Text,, Ban:
	Gui,8: Add, Edit, vBan ym,%Ban%
	Gui,8: Add, Button, default xm, OK
	Gui,8: Show, NoActivate, Ban Menu
}

8ButtonOK:
	Gui,8:Submit
	Gui,8:Destroy
	BanCommand = ban "%Ban%"
	KickCommand = kick "%Ban%"
	ExecuteCommand(BanCommand)
	ExecuteCommand(KickCommand)
return

8GuiClose:
	Gui,8:Destroy
return

ShowBanid() {
	global Banid
	global Username
	Gui,9: +AlwaysOnTop +ToolWindow +Owner  ; +Owner avoids a taskbar button.
	Gui,9: Add, Text,, Steam ID:
	Gui,9: Add, Edit, vBanid ym,%Banid%
	Gui,9: Add, Text, X10 Y35, Username:
	Gui,9: Add, Edit, vUsername X68 Y35,%Username%
	Gui,9: Add, Button, default xm, OK
	Gui,9: Show, NoActivate, Steam Ban
}

9ButtonOK:
	Gui,9:Submit
	Gui,9:Destroy
	BanidCommand = banid "%Banid%"
	KickCommand = kick "%Username%"
	ExecuteCommand(BanidCommand)
	ExecuteCommand(KickCommand)
return

9GuiClose:
	Gui,9:Destroy
return

ShowTime() {
	global Time
	Gui,10: +AlwaysOnTop +ToolWindow +Owner  ; +Owner avoids a taskbar button.
	Gui,10: Add, Text,, What Time Would You Like? (0-24)
	Gui,10: Add, Edit, vTime ym,%Time%
	Gui,10: Add, Button, default xm, OK
	Gui,10: Show, NoActivate, RustAdmin Time Options
}

10ButtonOK:
	Gui,10:Submit
	Gui,10:Destroy
	SendExecute = env.time "%Time%"
	ExecuteCommand(SendExecute)
return

10GuiClose:
	Gui,10:Destroy
return

ShowSendNotice() {
	global CustomNotice
	Gui,11: +AlwaysOnTop +ToolWindow +Owner  ; +Owner avoids a taskbar button.
	Gui,11: Add, Text, x6 y7 w440 h20 +Center, Server Announcement Popup. Some symbols break the command. [! and " are known]
	Gui,11: Add, Edit, x6 y27 w440 h20 vCustomNotice,%CustomNotice%
	Gui,11: Add, Button, x456 y7 w40 h40, OK
	Gui,11: Show, NoActivate, RustAdmin Custom Notice
}

11ButtonOK:
	Gui,11:Submit
	Gui,11:Destroy
	SendExecute = notice.popupall "%CustomNotice%"
	ExecuteCommand(SendExecute)
return

11GuiClose:
	Gui,11:Destroy
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