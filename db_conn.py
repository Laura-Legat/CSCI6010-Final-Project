import pandas as pd
from sqlalchemy import create_engine
from sqlalchemy import text

# Connect to the PostgreSQL database using SQLAlchemy
engine = create_engine('postgresql://bigdata:tImPgDBfBDc!32#@localhost/postgres')

try:
    # Execute schema.sql containing CREATE statements
    with open('./data/schema.sql', 'r') as file:
        create_queries = file.read()

    with engine.connect() as conn:
        conn.execute(text(create_queries))

    # Read data from a specific sheet in the .xlsx file
    taxa_df = pd.read_excel('./data/Densities_all_sites.xlsx', sheet_name="Taxa")
    intensities_df = pd.read_excel('./data/Densities_all_sites.xlsx', sheet_name="Intensities")
    stations_df = pd.read_excel('./data/Densities_all_sites.xlsx', sheet_name="Stations")
    bda_df = pd.read_excel('./data/Densities_all_sites.xlsx', sheet_name="bda")
    densities_df = pd.read_excel('./data/Densities_all_sites.xlsx', sheet_name="Densities")

    # Insert data into the PostgreSQL table
    taxa_df.to_sql('taxa', engine, if_exists='append', index=False)
    intensities_df.to_sql('intensities', engine, if_exists='append', index=False)
    stations_df.to_sql('stations', engine, if_exists='append', index=False)
    bda_df.to_sql('bda', engine, if_exists='append', index=False)
    densities_df.to_sql('densities', engine, if_exists='append', index=False)


except Exception as error:
    print(error)
