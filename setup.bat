@echo off
REM Step 1: Delete the .git folder if it exists
if exist .git (
    echo Deleting .git folder...
    rmdir /s /q .git
    if errorlevel 1 (
        echo Failed to delete .git folder. Ensure you have the necessary permissions.
        exit /b
    )
    echo .git folder deleted.
)

REM Step 2: Create a venv in the current directory
if exist venv (
    echo Virtual environment already exists. Exiting script.
    exit /b
)
python -m venv venv
if errorlevel 1 (
    echo Failed to create virtual environment. Ensure Python is installed and added to PATH.
    exit /b
)
echo Virtual environment created.

REM Step 3: Create a requirements.txt file
echo # Add your dependencies here > requirements.txt
echo requirements.txt created.

REM Step 4: Create a batch file to uninstall and reinstall dependencies
(
echo @echo off
echo call venv\Scripts\activate
echo venv\Scripts\pip freeze ^> uninstall_list.txt
echo for /f "tokens=* delims=" %%%%i in (uninstall_list.txt^) do venv\Scripts\pip uninstall -y %%%%i
echo del uninstall_list.txt
echo venv\Scripts\pip install -r requirements.txt
) > update_venv.bat
echo update_venv.bat created.

REM Step 5: Create an empty Main.py file
echo. > Main.py
echo Main.py created.

REM Step 6: Create a run.bat file
(
echo @echo off
echo call venv\Scripts\activate
echo python Main.py
echo pause
) > run.bat
echo run.bat created.

REM Step 7: Create a README.txt file
(
echo This project contains the following files:
echo.
echo 1. venv\ - The virtual environment directory created for Python dependencies.
echo 2. requirements.txt - A placeholder for listing Python dependencies. Add them here for installation.
echo 3. update_venv.bat - A script to uninstall all packages in the venv and reinstall them based on requirements.txt.
echo 4. Main.py - The main Python script file. Currently empty.
echo 5. run.bat - Activates the virtual environment and runs Main.py.
) > README.txt
echo README.txt created.

REM Step 8: Delete the current batch file
del "%~f0"
