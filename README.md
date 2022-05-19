# Master Thesis: Uncover Spiders in the network

Visualizing the financial holdings as a graph and finding the web of interconnected financial bodies which have the potential of cascading risk in the financial system in case of the collapse of one or more companies. The thesis aims to represent the U.S. financial market as a network and apply graph algorithms to the constructed networks.

13F filings data is extracted from the U.S. Securities and Exchange Commission(SEC) website for the last quarter of 2021 and is used for making the graphs. Form 13F discloses the equity holdings and can provide insights into what the money is doing in the market.


# Instructions for Cloning the environment
Run the following command in anaconda prompt to make a virtual environemt with the required dependencies:

conda env create -f environment.yml

# Instructions for replicating the database

1. Please download the DBMS dump from the folder Master_Thesis/DBMS_dump
2. Open neo4j and click add and select the dump File. 
3. Open the menu of the added dump file and choose option "Create new DBMS from dump".



# Instructions for replicating the neo4dash Dashboard

1. Please download the neo4dash from the graph app gallery. NeoDash will automatically connect to your active database when launched. 
2. Open neo4dash, and click open existing dashboard and select the dashboard. 
