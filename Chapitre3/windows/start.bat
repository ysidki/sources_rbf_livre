rmdir /s /q .eni 
python -m venv .eni
call .eni\Scripts\activate.bat
pip install -r requirements.txt
REM get ride path
@REM where ride.py > rbfpath.txt
@REM set /p RBFPATH=<rbfpath.txt
@REM DEL rbfpath.tx

@REM python %RBFPATH%

robot ..\test.robot