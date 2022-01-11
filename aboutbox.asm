AboutProc		PROTO		:DWORD,:DWORD,:DWORD,:DWORD
sub_4018D3		PROTO		:DWORD,:DWORD
sub_4019E1		PROTO		:DWORD
sub_401A10		PROTO		:DWORD

.data
 AboutFont    LOGFONT <12,7,0,0,FW_DONTCARE,0,0,0,DEFAULT_CHARSET,OUT_DEFAULT_PRECIS,CLIP_DEFAULT_PRECIS,DEFAULT_QUALITY, 0,"terminal">

 xTextPos    dd 0AAh                 
 dword_4070A3    dd 0C8h                 
 StartPos    dd 0C8h                
 xLetterPos	 equ 7
 LineHeight	 equ 12
 
 AboutText          db '   the PERYFERiAH team PrEsEnT',0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh
 				 db 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh
 				 db 'Target: Aurora 3D Animation Maker',0Dh
 				 db 'Version: 20.01.30',0Dh
 				 db 'Cracker: GRUiA^neinfricatul',0Dh
 				 db 'Date: 1o.o1.2o22',0Dh
 				 db 'Protection: MD5 + Online check',0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh
 				 db	 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh
 				 db 'Greetz to:',0Dh,0Dh
 				 db ' Al0hA...................[PRF]',0Dh
 				 db ' aMaLiaVerSace...........[PRF]',0Dh
 				 db ' B@TRyNU.................[PRF]',0Dh
 				 db ' bDM10...................[PRF]',0Dh
                 db ' DAViiiiDDDDDDD..........[PRF]',0Dh
                 db ' r0ger...................[PRF]',0Dh
                 db ' NoNNy...................[PRF]',0Dh
                 db ' oViSpider...............[PRF]',0Dh
                 db ' PuMMy...................[PRF]',0Dh
                 db ' pHane...................[PRF]',0Dh
                 db ' QueenAntonia............[PRF]',0Dh
                 db ' MaryNello...............[PRF]',0Dh
                 db ' sabYn...................[PRF]',0Dh
                 db ' s0r3l...................[PRF]',0Dh
                 db ' ShoGunu`................[PRF]',0Dh
                 db ' ShTEFY..................[PRF]',0Dh
                 db ' ViCE....................[PRF]',0Dh
                 db ' WeeGee..................[PRF]',0Dh
                 db ' yMRAN...................[PRF]',0Dh
                 db ' zzLaTaNN................[PRF]',0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh
 				 db 'also:',0Dh,0Dh
 				 db ' GioTiN..................[UST]',0Dh
 				 db ' Xylitol.................[RED]',0Dh
 				 db ' Cachito................[tSRh]',0Dh
 				 db ' Roentgen...............[tSRh]',0Dh
                 db ' Razorblade1979.........[URET]',0Dh
                 db ' Arttomov...............[URET]',0Dh
                 db ' kao..........................',0Dh
                 db ' TeddyRogers.............[SnD]',0Dh
                 db ' Go2Crck................[URET]',0Dh
                 db ' Talers.................[tSRh]',0Dh
                 db ' Vinnu..................[tSRh]',0Dh
                 db ' Sangavi................[tSRh]',0Dh
                 db ' rooster1...............[tSRh]',0Dh
                 db ' Krinal..................[UST]',0Dh
                 db ' Bl4ckCyb3rEngim4........[UST]',0Dh
                 db ' vk1989.......................',0Dh
                 db ' Tux528.......................',0Dh
                 db ' SKG-1010.....................',0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh
                 db 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh
                 db 'r0ger for CooL Logo',0Dh
                 db 'Dafunk for CooL Music',0Dh
                 db 'x0man for CooL About Template',0Dh
                 db 'profdracula for Kolor GUI',0Dh
                 db 'Magic_h2001 4 MagicV2mEngine',0Dh,0Dh,0Dh,0Dh,0Dh
                 db 0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh,0Dh
                 db 'mail    : peryferiah@hush.com',0Dh
                 db 'insta   : @r0gerica',0Dh
                 db '          @bobo.crt',0Dh
                 db 'discord : r0gerica#2649',0Dh
                 db 'github  : r0gerica',0Dh,0
                 
byte_4073D5     db 1                    
dword_4073D6    dd 2
                 
.data?

 dword_4070AB    dd ?                   
 dword_4070AF    dd ?                    
 dword_4070B3    dd ?                    
 dword_4070B7    dd ? 
 dword_407CE8    dd ?                                                                              
 dword_407CF0    dd ?                              
 cy              dd ?                              
 dword_407CF8    dd ?                         
 dword_407CFC    dd ?                          
 hMem            dd ?                          
 dword_407D04    dd ?                                     
 hBrushh         dd ?                                
 dword_407D0C    dd ?                                              
 Aboutrekt              RECT <?>                                             
 yWnd            dd ?                             
 dword_407D24    dd ?                                                          
 h               dd ?                                                    
 hdcSrc          dd ?                                                          
 dword_407D30    dd ?                                   
 dword_407D34    dd ?                        
 dword_407D38    dd ?                            
 dword_407D3C    dd ?                                 
 dword_407D40    dd ?                                                          


 
.code                                          

sub_4018D3      proc arg_777:DWORD,arg_888:DWORD             ; CODE XREF: sub_401B49+100?p                                   
LOCAL y:DWORD
LOCAL x:DWORD
                                                       
                pushad                                                                                                                                                  
                mov     edi, offset AboutText ; "the Power Of Reversing team\r\r\r\r\r\r"...   
                push    xTextPos                                                        
                pop     x                                                             
                push    arg_888                                                        
                pop     y                                                            
                xor     eax, eax                                                            
                                                                                            
loc_4018F0:                             ; CODE XREF: sub_4018D3+53?j                        
                cmp     byte ptr [eax+edi], 0Dh                                             
                jnz     short loc_401905                                                    
                push    xTextPos                                                        
                pop     x                                                             
                add     y, LineHeight                                                        
                jmp     short loc_40191F                                                    
; ---------------------------------------------------------------------------               
                                                                                            
loc_401905:                             ; CODE XREF: sub_4018D3+21^j                        
                add     x, xLetterPos                                                          
                push    eax                                                                 
                push    1               ; c                                                 
                lea     eax, [eax+edi]                                                      
                push    eax             ; lpString                                          
                push    y         ; y                                                 
                push    x         ; x                                                 
                push    [arg_777]       ; hdc                                               
                call    TextOutA                                                            
                pop     eax                                                                 
                                                                                            
loc_40191F:                             ; CODE XREF: sub_4018D3+30^j                        
                inc     eax                                                                 
                cmp     eax, dword_4070AB                                                   
                jb      short loc_4018F0                                                    
                popad
                ret                                                                 
sub_4018D3      endp

sub_40192D      proc near               ; CODE XREF: sub_401A5F+15?p                                                                                                                              
pushad
                mov     edi, offset AboutText ; "the Power Of Reversing team\r\r\r\r\r\r"...                        
                xor     eax, eax                                                                                 
                xor     ecx, ecx                                                                                 
                                                                                                                 
loc_401937:                             ; CODE XREF: sub_40192D+18?j                                             
                cmp     byte ptr [ecx+edi], 0Dh                                                                  
                jnz     short loc_40193E                                                                         
                inc     eax                                                                                      
                                                                                                                 
loc_40193E:                             ; CODE XREF: sub_40192D+E^j                                              
                inc     ecx                                                                                      
                cmp     ecx, dword_4070AB                                                                        
                jb      short loc_401937                                                                         
                mov     dword_4070B3, eax                                                                        
popad
                ret                                                                                            
sub_40192D      endp 

sub_40194E      proc near               ; CODE XREF: sub_402193+B3¡p  
                
                dec     dword_4070A3                                  
                mov     eax, dword_4070AF                             
                cmp     eax, dword_4070A3                             
                jnz     short locret_40196D                           
                push    StartPos                                  
                pop     dword_4070A3                                  
                                                                      
locret_40196D:                          ; CODE XREF: sub_40194E+11^j  
                ret
                                                                  
sub_40194E      endp                                                  

sub_4019E1      proc arg_555:DWORD                                         
                                                                                                                 
                mov     eax, dword_407D0C                                  
                mov     ecx, 17h                                           
                mul     ecx                                                
                add     eax, 7                                             
                and     eax, 0FFFFFFFFh                                    
                ror     eax, 1                                             
                xor     eax, dword_407D0C                                  
                mov     dword_407D0C, eax                                  
                mov     ecx, arg_555                                   
                xor     edx, edx                                           
                div     ecx                                                
                mov     eax, edx                                           
                ret                                                 
sub_4019E1      endp                                                       



sub_401A10      proc uses ebx arg_999:DWORD                                       
                mov     ebx, arg_999                             
                push    dword_407CF0                                 
                call    sub_4019E1                                   
                sub     eax, dword_407CF8                            
                mov     [ebx], eax                                   
                push    cy                                           
                call    sub_4019E1                                   
                sub     eax, dword_407CFC                            
                mov     [ebx+4], eax                                 
                mov     dword ptr [ebx+8], 100h                      
                push    dword_407CF8                                 
                pop     dword ptr [ebx+0Ch]                          
                push    dword_407CFC                                 
                pop     dword ptr [ebx+10h]                          
                mov     eax, [arg_999]                             
                ret
sub_401A10      endp           


                                      
sub_401A5F      proc near               ; CODE XREF: sub_402193+18?p                                 
                                                                                                     
LOCAL rekt2:RECT                                                      
                                                                                                                                                
                invoke lstrlenA,offset AboutText                                                           
                mov     dword_4070AB, eax                                                    
                call    sub_40192D                                                           
                push    StartPos                                                         
                pop     dword_4070A3                                                         
                mov     eax, dword_4070B3                                                    
                imul    eax, 14h                                                             
                imul    eax, -1                                                              
                mov     dword_4070AF, eax                                                    
                lea     eax, [rekt2]                                                      
                invoke GetWindowRect,yWnd,eax                                                        
                mov     eax, [rekt2.right]                                                
                mov     ecx, [rekt2.bottom]                                               
                sub     eax, [rekt2.left]                                                 
                sub     ecx, [rekt2.top]                                                  
                mov     dword_407CF0, eax                                                    
                mov     cy, ecx                                                              
                shr     eax, 1                                                               
                shr     ecx, 1                                                               
                mov     dword_407CF8, eax                                                    
                mov     dword_407CFC, ecx                                                    
                invoke GetStockObject,4                                                     
                mov     hBrushh, eax                                                             
                mov     Aboutrekt.left, 0                                                           
                mov     Aboutrekt.top, 0                                                            
                push    dword_407CF0                                                         
                pop     Aboutrekt.right                                                             
                push    cy                                                                   
                pop     Aboutrekt.bottom                                                            
            	invoke GlobalAlloc,42h,4C90h                                                    
                mov     hMem, eax                                                            
                invoke GlobalLock,hMem                                                     
                mov     dword_407D04, eax                                                    
                ret
                                                                                        
sub_401A5F      endp                                                                         
                                                                                             
FreeBox      proc near                ; CODE XREF: sub_402193+142?p                        

               	invoke GlobalUnlock,dword_407D04
               	invoke GlobalFree,hMem
               	invoke EndDialog,yWnd,0  
               	                                                   
                ret                                                                        
FreeBox      endp    

Draw      proc           ; CODE XREF: sub_402193+9C?p
LOCAL ho:DWORD
LOCAL pv[18h]:BYTE
LOCAL var_68:DWORD
LOCAL var_50:DWORD
LOCAL Paint:PAINTSTRUCT
LOCAL hNewDC:DWORD
LOCAL hdc:DWORD                                       
                                                                                                            
              	invoke InvalidateRect,yWnd,0,0                                 
                lea     eax, Paint                                        
                invoke BeginPaint,yWnd,eax                         
                mov     hdc, eax                                      
             	invoke CreateCompatibleDC,hdc                             
                mov     hNewDC, eax                                     
                invoke CreateCompatibleBitmap,hdc,dword_407CF0,cy                             
                mov     h, eax                                       
                invoke SelectObject,hNewDC,h                                     
                invoke FillRect,hNewDC,offset Aboutrekt,hBrushh                                       
                jmp     short loc_401BBE                                   
                                                                           
loc_401BBE:                             ; CODE XREF: sub_401B49+67^j       
            	invoke GetModuleHandle,0                                
                invoke LoadBitmap,eax,222                                       
                push    eax                                                
                push    0               ; hdc                              
                call    CreateCompatibleDC                              
                mov     hdcSrc, eax                                  
                pop     var_50                                       
                invoke SelectObject,hdcSrc,var_50                                      
                lea     eax, pv                                     
                push    eax             ; pv                               
                push    18h             ; c                                
                push    var_50    ; h                                
                call    GetObjectA                                         
                invoke SetBkMode,hNewDC,1                                         
                invoke CreateFontIndirect,addr AboutFont                                      
                mov     ho, eax                                      
             	invoke SelectObject,hNewDC,ho                                     
                invoke SetTextColor,hNewDC,0FFFFFFh                                       
                push    dword_4070A3    ; int                              
                push    hNewDC       ; hdc                              
                call    sub_4018D3                                             
           		invoke BitBlt,hNewDC,0Ah,7,dword ptr [pv+4],dword ptr [pv+8],hdcSrc,0,0,0CC0020h                                       
                xor     ecx, ecx                                           
                jmp     loc_401D0D                                         
; -------------------------------------------------------------------------               --
                                                                           
loc_401C73:                             ; CODE XREF: sub_401B49+1CA?j      
                mov     eax, 1Ch                                           
                mul     ecx                                                
                add     eax, dword_407D04                                  
                mov     ebx, eax                                           
                mov     eax, dword_4073D6                                  
                cmp     [ebx+8], eax                                       
                ja      short loc_401C9B                                   
                push    ecx                                                
                push    ebx                                                
                call    sub_401A10                                         
                pop     ecx                                                
                mov     byte_4073D5, 1                                     
                                                                           
loc_401C9B:                             ; CODE XREF: sub_401B49+141^j      
                mov     eax, dword_4073D6                                  
                sub     [ebx+8], eax                                       
                mov     eax, [ebx]                                         
                shl     eax, 8                                             
                cdq                                                        
                idiv    dword ptr [ebx+8]                                  
                add     eax, dword_407CF8                                  
                mov     [ebx+0Ch], eax                                     
                mov     eax, [ebx+4]                                       
                shl     eax, 8                                             
                cdq                                                        
                idiv    dword ptr [ebx+8]                                  
                add     eax, dword_407CFC                                  
                mov     [ebx+10h], eax                                     
                mov     eax, dword_407CF0                                  
                mov     edx, cy                                            
                cmp     dword ptr [ebx+0Ch], 0                             
                jb      short loc_401CE9                                   
                cmp     [ebx+0Ch], eax                                     
                ja      short loc_401CE9                                   
                cmp     dword ptr [ebx+10h], 0                             
                jb      short loc_401CE9                                   
                cmp     [ebx+10h], edx                                     
                jbe     short loc_401CF0                                   
                                                                           
loc_401CE9:                             ; CODE XREF: sub_401B49+18E^j      
                                        ; sub_401B49+193^j ...             
                mov     dword ptr [ebx+8], 0                               
                                                                           
loc_401CF0:                             ; CODE XREF: sub_401B49+19E^j      
                push    ecx                                                
                xor     eax, eax                                           
                mov     ah, cl                                             
                mov     al, ah                                             
                shl     eax, 8                                             
                mov     al, ah                                             
                invoke SetPixel,hNewDC,dword ptr [ebx+0Ch],dword ptr [ebx+10h],eax                                       
                pop     ecx                                                
                inc     ecx                                                
                                                                           
loc_401D0D:                             ; CODE XREF: sub_401B49+125^j      
                cmp     ecx, 2BCh                                          
                jnz     loc_401C73                                         
                invoke BitBlt,hdc,0,0,dword_407CF0,cy,hNewDC,0,0,0CC0020h                                           
                invoke DeleteObject,h
                invoke DeleteObject,ho
                invoke DeleteObject,var_50
                invoke DeleteDC,hNewDC
                invoke DeleteDC,hdcSrc                                        
                lea     eax, [Paint]                                   
                invoke EndPaint,yWnd,eax                                       
                ret                                                      
Draw      endp                                                       

AboutProc      proc hWnd:DWORD,uMsg:DWORD,wParam:DWORD,lParam:DWORD               ; DATA XREF: DialogFunc+2E8^o                       
LOCAL plbrush:LOGBRUSH
LOCAL rekt:RECT                                                                                                                                                                                   
                
                mov eax,uMsg                                                                                                      
                cmp     eax, 110h                                       
                jnz     short loc_40221D                                        
                push    hWnd                                              
                pop     yWnd                                                    
                call    sub_401A5F                                              
                invoke SetTimer,hWnd,401h,1,0                                        
                invoke SetTimer,hWnd,402h,19h,0                                                
                mov     dword_4070B7, eax                                                          
          	;	invoke CreateRoundRectRgn,0,0,19Fh,0A5h,14h,14h                  
             ;   invoke SetWindowRgn,hWnd,eax,1                         
            	invoke AnimateWindow,hWnd,200,AW_BLEND+AW_ACTIVATE                            
                jmp     loc_4022E5                                              
; ---------------------------------------------------------------------------   
                                                                                
loc_40221D:                             ; CODE XREF: sub_402193+D^j             
                cmp     eax, 113h                                       
                jnz     short loc_402250                                        
                cmp     wParam, 401h                                       
                jnz     short loc_402239                                        
                call    Draw                                              
                jmp     loc_4022E5                                              
; ---------------------------------------------------------------------------   
                                                                                
loc_402239:                             ; CODE XREF: sub_402193+9A^j            
                cmp     wParam, 402h                                       
                jnz     loc_4022E5                                              
                call    sub_40194E                                              
                jmp     loc_4022E5                                              
; ---------------------------------------------------------------------------   
                                                                                
loc_402250:                             ; CODE XREF: sub_402193+91^j            
                cmp     eax, 14h                                        
                jnz     short loc_40228B                                        
                mov     [plbrush.lbStyle], 0                                
                xor     eax, eax                                                
                mov     [plbrush.lbColor], eax                              
                lea     eax, [plbrush]                                         
             	invoke CreateBrushIndirect,eax                               
                mov     hBrushh, eax                                          
                lea     eax, [rekt]                                           
                invoke GetClientRect,[hWnd],eax                                    
                push    hBrushh       ; hbr                                   
                lea     eax, [rekt]                                         
                push    eax             ; lprc                                  
                push    wParam     ; hDC                                   
                call    FillRect                                                
                jmp     short loc_4022E5                                        
; ---------------------------------------------------------------------------   
                                                                                
loc_40228B:                             ; CODE XREF: sub_402193+C1^j            
                cmp     eax, 201h                                       
                jnz     short loc_4022A8                                        
                push    lParam    ; lParam                                
                push    2               ; wParam                                
                push    0A1h ; '?'      ; Msg                                   
                push    hWnd      ; hWnd                                  
                call    SendMessageA                                            
                jmp     short loc_4022E5                                        
; ---------------------------------------------------------------------------   
                                                                                
loc_4022A8:                             ; CODE XREF: sub_402193+FF^j            
                cmp     eax, 205h                                       
                jnz     short loc_4022CF                                        
            ; 	invoke AnimateWindow,hWnd,190h,AW_HIDE+AW_CENTER
            	invoke EndDialog,hWnd,0
            	invoke ShowWindow,xWnd,SW_SHOW                        
                jmp     short loc_4022E5                                        
; ---------------------------------------------------------------------------   
                                                                                
loc_4022CF:                             ; CODE XREF: sub_402193+11C^j           
                cmp     eax, 10h                                        
                jnz     short loc_4022DC                                        
                call    FreeBox                                              
                jmp     short loc_4022E5                                        
; ---------------------------------------------------------------------------   
                                                                                
loc_4022DC:                             ; CODE XREF: sub_402193+140^j           
                mov     eax, 0                                                  
                ret                                                     
; ---------------------------------------------------------------------------   
                                                                                
loc_4022E5:                             ; CODE XREF: sub_402193+85^j            
                                        ; sub_402193+A1^j ...                   
                xor     eax, eax                                                
                inc     eax                                                     
                ret                                                    
AboutProc      endp               