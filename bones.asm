.686
.model	flat, stdcall
option	casemap :none

include	resID.inc
include fadebmp.asm
include	textscr_mod.asm
include	algo.asm
include	aboutbox.asm
include kolor.asm

AllowSingleInstance MACRO lpTitle
        invoke FindWindow,NULL,lpTitle
        cmp eax, 0
        je @F
          push eax
          invoke ShowWindow,eax,SW_RESTORE
          pop eax
          invoke SetForegroundWindow,eax
          mov eax, 0
          ret
        @@:
      ENDM
      
.code
start:
	invoke	GetModuleHandle, NULL
	mov	hInstance, eax
	invoke	InitCommonControls
	AllowSingleInstance addr WindowTitle
	invoke	DialogBoxParam, hInstance, IDD_MAIN, 0, offset DlgProc, 0
	invoke	ExitProcess, eax

DlgProc proc hWnd:DWORD,uMsg:DWORD,wParam:DWORD,lParam:DWORD
LOCAL ps:PAINTSTRUCT
LOCAL Fadeps:PAINTSTRUCT
LOCAL rect:RECT
LOCAL hdc:HDC	
	
	mov	eax,uMsg
	
	.if	eax == WM_INITDIALOG
		push hWnd
		pop xWnd
		
		pushad
		push    xWnd
		call    FadeBmp 
		popad
		
		invoke	LoadIcon,hInstance,200
		invoke	SendMessage, xWnd, WM_SETICON, 1, eax
		invoke	InitProc,col
		invoke  SetWindowText,xWnd,addr WindowTitle
		invoke  SetDlgItemText, xWnd, IDC_NAME, addr DefaultName
		invoke 	SendDlgItemMessage, xWnd, IDC_NAME, EM_SETLIMITTEXT, 31, 0
		
		invoke CreateFontIndirect,addr TxtFont
		mov hFont,eax
		invoke GetDlgItem,xWnd,IDC_NAMETXT
		mov hNametxt,eax
		invoke SendMessage,eax,WM_SETFONT,hFont,1
		invoke GetDlgItem,xWnd,IDC_NAME
		mov hName,eax
		invoke SendMessage,eax,WM_SETFONT,hFont,1
		invoke GetDlgItem,xWnd,IDC_SERIALTXT
		mov hSrltxt,eax
		invoke SendMessage,eax,WM_SETFONT,hFont,1
		invoke GetDlgItem,xWnd,IDC_SERIAL
		mov hSrl,eax
		invoke SendMessage,eax,WM_SETFONT,hFont,1
		invoke GetDlgItem,xWnd,IDB_COPY
		mov hCopy,eax
		invoke SendMessage,eax,WM_SETFONT,hFont,1
		invoke GetDlgItem,xWnd,IDB_ABOUT
		mov hAbout,eax
		invoke SendMessage,eax,WM_SETFONT,hFont,1
		invoke GetDlgItem,xWnd,IDB_EXIT
		mov hExit,eax
		invoke SendMessage,eax,WM_SETFONT,hFont,1
		invoke  ScrollerInit,xWnd
		
		invoke  MAGICV2MENGINE_DllMain,hInstance,DLL_PROCESS_ATTACH,0
		invoke 	V2mPlayStream, addr v2m_Data,TRUE
		invoke  V2mSetAutoRepeat,1
		
		invoke  GenKey,xWnd
	.elseif eax==WM_LBUTTONDOWN
		invoke SendMessage,xWnd,WM_NCLBUTTONDOWN,HTCAPTION,0
	.elseif eax==WM_DRAWITEM
		.if wParam == IDB_COPY || wParam == IDB_ABOUT || wParam == IDB_EXIT
    		invoke DrawProc,xWnd,lParam,0
    	.else
    		invoke DrawProc,xWnd,lParam,1
    	.endif
	.elseif eax==WM_CTLCOLORSTATIC
		invoke GetDlgCtrlID,lParam
		.if eax == IDC_NAMETXT || eax == IDC_SERIALTXT
			invoke	StaticProc, xWnd, wParam, 1
		.elseif eax == IDC_SERIAL
			invoke	StaticProc, xWnd, wParam, 2
		.endif
		ret
	.elseif eax==WM_CTLCOLOREDIT
		invoke	EditProc, wParam
    	ret
	.elseif eax==WM_PAINT
		invoke	PaintProc,xWnd,1
		
		lea eax,Fadeps
		invoke BeginPaint,xWnd,eax
		mov 	esi,eax
		xor 	ebx,ebx                 
		invoke 	GetDC,xWnd
		mov 	edi,eax
		push    0CC0020h        
		push    ebx             
		push    ebx             
		mov     edi, eax
		push    hDC             
		push    LogoHeight    
		push    LogoWidth
		push    yImgPos             
		push    xImgPos         
		push    edi            
		call    BitBlt
		invoke 	DeleteDC,esi
		invoke 	ReleaseDC,[xWnd],edi

	.elseif eax == WM_COMMAND
		mov	eax,wParam
		mov edx,eax
		shr edx,16
		and eax,0ffffh
		.if edx==EN_CHANGE
			.if eax==IDC_NAME
				invoke GenKey,xWnd
			.endif
		.elseif eax == IDB_COPY
			invoke SendDlgItemMessage,xWnd,IDC_SERIAL,EM_SETSEL,0,-1
			invoke SendDlgItemMessage,xWnd,IDC_SERIAL,WM_COPY,0,0
			invoke PlaySound,500,hInstance,SND_RESOURCE or SND_ASYNC
			invoke MessageBox,xWnd,addr MsgTxt,addr MsgCap,MB_OK
		.elseif eax == IDB_ABOUT
			invoke PlaySound,500,hInstance,SND_RESOURCE or SND_ASYNC
			invoke ShowWindow,xWnd,0
			invoke DialogBoxParam,0,IDD_ABOUT,xWnd,addr AboutProc,0
		.elseif	eax == IDB_EXIT	
			;invoke AnimateWindow,xWnd,300,AW_BLEND+AW_HIDE
			invoke PlaySound,500,hInstance,SND_RESOURCE or SND_ASYNC
			invoke	SendMessage, xWnd, WM_CLOSE, 0, 0
		.endif
	.elseif	eax == WM_CLOSE
		invoke  V2mStop
  		invoke  MAGICV2MENGINE_DllMain,hInstance,DLL_PROCESS_DETACH,0
  		invoke	OutitProc
		invoke	EndDialog, xWnd, 0
	.endif

	xor	eax,eax
	ret
DlgProc endp

end start
