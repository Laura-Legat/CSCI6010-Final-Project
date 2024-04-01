docker-compose up -d

conda env create -f environment.yml

conda activate bigdata_finalproj

python db_conn.py
