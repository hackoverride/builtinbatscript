@echo off
cd c:\Users\Public\csharp\
echo ------------------
dir
set /P choice="write=w | compile=run | execute=ex :"
IF %choice% equ w goto write
IF %choice% equ run goto run
IF %choice% equ ex goto execute

pause
:exit
cls
echo                    `.........`                   
echo                `..-..-----------.                
echo              `.-----:://///:::::::.              
echo             `----://:-....-://////+:`            
echo            .::-::/-``      ``-/++++o:`           
echo           `:::::/-`          `.+oooos:`          
echo          `-:::///`            `-osyyys.          
echo          `://////`             .+yyyyy/`         
echo          `:////+/`             `/yyyhho`         
echo          `-/+++++.             .oyyyhhy.         
echo           `/++++++.           `/yyhhhhh.         
echo           `./++ooo+-`      `.:oyhhhhhhh.         
echo             `:osssso+/::::/+oyhyshhhddy.         
echo              `.:+syyyyyyyyyhhs/-ohddddo`         
echo                ``.:/+ooooo+/-``.sddddd:`         
echo                    ````````   `:hdddds.          
echo                               .sddddh-`          
echo                              `ohdddd/`           
echo                            `-ohdddh/`            
echo             .+/-..``   ``.:+yhdddy-`             
echo            `-yysssoooooosyhhdddy/.`              
echo            `-syhhhhhdddddddhy+-.`                
echo             ``.--://+++//:-.``                   
echo                     ```                          
ping 127.0.0.1 -n 3 > nul
exit

:write
notepad program.cs
goto exit

:run
c:\Windows\Microsoft.NET\Framework\v4.0.30319\csc.exe program.cs
pause
goto exit

:execute
c:\Users\Public\csharp\program.exe
goto exit
