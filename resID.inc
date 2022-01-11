include		windows.inc 
include		kernel32.inc 
include		user32.inc 
include     gdi32.inc  
include 	shell32.inc
include		winmm.inc
include		masm32.inc
include		oleaut32.inc
include		ole32.inc
include		msvcrt.inc
include		comctl32.inc
include		comdlg32.inc
include     /masm32/macros/macros.asm

includelib	kernel32.lib
includelib	user32.lib 
includelib 	gdi32.lib
includelib 	shell32.lib
includelib	winmm.lib
includelib 	masm32.lib
includelib  oleaut32.lib
includelib  ole32.lib
includelib	msvcrt.lib
includelib	comctl32.lib
includelib	comdlg32.lib

include MagicV2mEngine.inc
includelib MagicV2mEngine.lib

DlgProc		PROTO	:DWORD,:DWORD,:DWORD,:DWORD

.const
IDD_MAIN	equ	1000
IDD_ABOUT	equ	2000
IDB_EXIT	equ	1001
IDC_LOGO	equ 1002
IDC_NAMETXT	equ	1003
IDC_NAME	equ	1004
IDC_SERIALTXT	equ	1005
IDC_SERIAL	equ	1006
IDB_ABOUT	equ	1007
IDB_COPY	equ	1008
BUTTON_COLOR	equ 	00000000h
BUTTON_TEXT_COLOR	equ 000080FFh
BUTTON_FRAME_COLOR	equ 00D7D7D7h;00EFEFEFh

.data
include supersonic.inc

TxtFont		LOGFONT <13,0,0,0,0,0,0,0,DEFAULT_CHARSET,OUT_DEFAULT_PRECIS,CLIP_DEFAULT_PRECIS,DEFAULT_QUALITY, 0,"Verdana">
WindowTitle	db	"Aurora 3D Animation Maker 20.01.30 Keygen",0
DefaultName	db  "GRUiA^PRF",0
MsgCap		db	"(y)",0
MsgTxt		db	"serial copied to clipboard !",0


.data?
hInstance	dd	?
hNametxt	dd	?
hName		dd	?
hSrltxt		dd	?
hSrl		dd	?
hCopy		dd	?
hAbout		dd	?
hExit		dd	?
hFont		dd	?
xWnd		dd	?