@echo off

rem Step 1: Execute "docker-compose up -d" command
echo Step 1: Starting Docker containers...
docker-compose up -d

rem Step 2: Create a new Miniconda environment from environment.yml file
echo Step 2: Creating Conda environment...
conda env create -f environment.yml

rem Step 3: Activate the Conda environment
echo Step 3: Activating Conda environment...
conda activate bigdata_finalproj

rem Step 4: Execute db_conn.py script
echo Step 4: Executing db_conn.py script...
python db_conn.py

echo All steps completed.
