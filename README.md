> 📢 **ParlDebateScanner** was a personal project by Johannes Hool designed to make the protocols of Swiss parliamentary debates on [Curia Vista](https://www.parlament.ch/de/search-affairs-advanced) searchable using open-source machine learning models. Although the website is no longer live, this repository contains key components and core mechanics that powered the project. If you have any questions about the website or the code, feel free to reach out to me.

![Alt Text](data/assets/pds_1.png)

# ParlDebateScanner in a Nutshell

This repository contains some of the logic of [parldebatescanner.org](https://parldebatescanner.org/). Please keep in mind that for simplicity the provided code does not make use of advanced design patterns and hardware optimization. For a transition to production (as done for example on parldebatescanner.org) appropriate adjustments need to be made. The ParlDebateScenner uses the core ideas from the Notebooks 00 and 03, together with some bells and whistles and a Flask backend to host the search.

## Installation Instructions
- If you want to try out text embeddings and vector search using Huggingface models without the use of a database, just install the libraries specified in the Pipfile using [pipenv](https://pypi.org/project/pipenv/) and run the notebooks 00 and 01 in order.
- If you want to try out topic analysis using BERTopic, also use the libraries in the Pipfile and run the notebooks 00 and 02.
- If you want to try out vector search using Huggingface models and Postgresql (pgvector), install the libraries in the Pipfile and [Docker](https://docs.docker.com/engine/install/) then spin up a local Posgresql db using `docker compose up` and run the notebooks 00 and 03.

## Usage
- **00_generate_embeddings.ipynb**: This notebook demonstrates how to extract text from PDF files and generate embeddings using the paraphrase-multilingual-MiniLM-L12-v2 model from Sentence Transformers.
- **01_search_using_pandas.ipynb**: This notebook provides an implementation of semantic search using Pandas and the cosine similarity metric. It utilizes embeddings previously generated in '00_generate_embeddings.ipynb' to perform searches based on semantic similarity of the text data.
- **02_analysis.ipynb**: This notebook demonstrates how to perform topic analysis using the BERTopic model. It begins with the embeddings generated by '00_generate_embeddings.ipynb' and applies topic modeling techniques to discover and visualize topics within text data.
- **03_search_using_postgresql.ipynb**: This notebook demonstrates how to set up a PostgreSQL database with the pgvector extension for performing efficient semantic searches. It uses embeddings from '00_generate_embeddings.ipynb' and shows how to configure the database, load data, and execute vector-based searches.

## Contact
If you have questions about the code, the theory or how to adopt some of the improvements mentioned in the comments, don't hesitate to get in touch through github or hooljohannes[at]gmail.com.
