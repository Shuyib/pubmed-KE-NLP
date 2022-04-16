# pubmed-KE-NLP
This is a text mining and text summarization project from 1980 - 2019. The purpose is to see the research topic direction by looking at several publications from Kenyan authors whose publications are in PubMed. Using Natural language processing techniques that is, finding out the most common words from several topics that emerge from titles of the publications using word clouds (Unigrams) and Latent Dirichlet allocation to explore if topic modelling would be help us reveal any insights.

We discovered:  

A lot of studies are centered around Malaria, HIV and diarrheal disease. These are the main causes of mortality in Kenya referencing the [CDC Kenya website](https://www.cdc.gov/globalhealth/countries/kenya/pdf/Kenya_Factsheet.pdf) at least from 2018. It was fascinating that whoever replicates this study can confirm this.  

In order to run the project using the same requirements, use these commands:  

Build docker image  
`docker build -t pubmed-ke-nlp .`

Run the Docker image  
`docker run -it -p 8888:8888 pubmed-ke-nlp:latest`

References:  
* Bibcitation: Free Automatic Citation Maker. MLA, APA + more. (n.d.). Bibcitation. Retrieved November 28, 2021, from https://www.bibcitation.com/.   
* Chicago Python Users Group. (2017). Data Science Workflows using Docker Containers [Video]. In YouTube. https://youtu.be/oO8n3y23b6M.  
* [Datacamp project reference](https://www.datacamp.com/projects/158).  
* Grigorev, A. (2021). Machine Learning Bookcamp: Build a portfolio of real-life projects (pp. 34–45). Simon and Schuster.  
* Müller, A. C., Guido, S. (2016). Introduction to machine learning with python: A guide for data scientists (pp. 355–362). “O’Reilly Media, Inc.”   




