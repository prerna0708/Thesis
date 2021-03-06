# Master Thesis: Uncover Spiders in the network

Visualizing the financial holdings as a graph and finding the web of interconnected financial bodies which have the potential of cascading risk in the financial system in case of the collapse of one or more companies. The thesis aims to represent the U.S. financial market as a network and apply graph algorithms to the constructed networks.

13F filings data is extracted from the U.S. Securities and Exchange Commission (SEC) website for the last quarter of 2021 and is used for making the graphs. Form 13F discloses the equity holdings and can provide insights into what the money is doing in the market.


# Instructions for cloning the environment
Run the following command in anaconda prompt to make a virtual environment with the required dependencies:

```sh
conda env create -f environment.yml
```


# Instructions for replicating the database

1. Please download the DBMS dump from the folder Master_Thesis/DBMS_dump
2. Open neo4j and click add and select the dump File. 
3. Open the menu of the added dump file and choose option "Create new DBMS from dump".


# Instructions for replicating the NeoDash Dashboard

1. Please download the NeoDash from the graph app gallery. NeoDash will automatically connect to your active database when launched. 
2. Open NeoDash, and click open existing dashboard and select the dashboard. 


# Instructions for replicating the whole process from collecting data from sec-api to graph creation and analysis

1. Replicate the environment using the environment.yml file. Get API key from [sec-api](https://sec-api.io/) to collect 13F fillings data 
2. Follow the python notebook series with prefix "Step" in the folder "Master_Thesis" and follow the order of step numbers till Step 2.2. 
3. The file "Matched.csv" needs to cleaned manually in MS Excel. After cleaning the file follow the steps till step 3.1.
4. Open Neo4j and add a Local DBMS named GraphDBMS(version=4.2.15) and add the plugin Graph data science library. Add the following statement into the settings file of your DBMS if it is not present.
```sh 
dbms.security.procedures.unrestricted=jwt.security.*,gds.*,apoc.* 
```

5. Click on the menu dots of your database and go to the option "Open Folder" and choose "Import". This will open the file location of the import folder of your database.
6. Place the Nodes_options, Nodes_wo_options, Relationships_options and Relationships_wo_options files in the import folder.
7. Run the queries mentioned in Step 3.2 and Step 3.3 in 2 separate databases in neo4j.  
8. Run the steps from 3.4 till the end. 

## Note:
The size of csv files were greater than 50 MB, so to upload it to gtihub they have been converted to extension "pkl".

The python notebook in folder Master/Thesis with prefix "Step 0" can be used to convert "pkl" files to "csv" files.

The python notebook in folder Master/Thesis with prefix "Step 6" can be used to convert "csv" files to "pkl" files.
