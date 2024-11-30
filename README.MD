# Python Quickstart Setup

A batch script to set up a Python project environment quickly and efficiently. This script creates a virtual environment, initializes necessary project files, and generates utility scripts for easy project management.

## Features
- Automatically creates a Python virtual environment (`venv`).
- Initializes `requirements.txt` for dependency management.
- Generates utility scripts for:
  - Installing dependencies (`update_venv.bat`).
  - Running the main Python script (`run.bat`).
- Sets up a basic `Main.py` file.
- Includes a `README.txt` describing the generated files.

## Usage

1. Clone this repository or download the `setup.bat` file:
   ```bash
   git clone https://github.com/The-Legit-Revan/python-quickstart-setup.git
   cd python-quickstart-setup
   ```

2. Run the script:
   - Double-click `setup.bat` in your file explorer, **or**
   - Run it from the command line:
     ```cmd
     setup.bat
     ```

3. Follow the instructions in the generated `README.txt` to manage your project.

## Example Output
After running `setup.bat`, your project directory will look like this:
```
your-project/
├── venv/                   # Virtual environment directory
├── requirements.txt        # List of required Python dependencies
├── update_venv.bat         # Script to update dependencies
├── run.bat                 # Script to run the main Python script inside the venv
├── Main.py                 # Main script file
└── README.txt              # Description of generated files
```

## Requirements
- **Python 3.7+** must be installed and added to your system's PATH.

## Contributing
Feel free to open issues or submit pull requests to improve this script!

## License
This repository is licensed under the MIT License