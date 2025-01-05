rmdir /s /q .eni 
python -m venv .eni
call .eni\Scripts\activate.bat
pip install -r requirements.txt