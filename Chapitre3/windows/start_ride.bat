rmdir /s /q .eni 
python -m venv .eni
call .eni\Scripts\activate.bat
pip install -r requirements.txt
where ride.py > rbfpath.txt
set /p RBFPATH=<rbfpath.txt
DEL rbfpath.tx

python %RBFPATH%