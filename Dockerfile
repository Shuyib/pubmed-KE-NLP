# Use latest Python runtime as a parent image
FROM python:3.6.3-slim

# Meta-data
LABEL maintainer="Shuyib" \
      description="Docker Data Science workflow: NLP pipeline for topic modelling via wordclouds & latent Dirichlet allocation"
      
# Set the working directory to /app
WORKDIR /app

# ensures that the python output is sent to the terminal without buffering
ENV PYTHONUNBUFFERED=TRUE

# Copy the current directory contents into the container at /app
COPY ["Pipfile", "Pipfile.lock", "*.csv, *.ipynb", "./"]

# Install the required libraries
RUN pip --no-cache-dir install pipenv

# Install the required libraries
RUN pipenv install --deploy --system && \
    rm -rf /root/.cache

# Make port 8888 available to the world outside this container
EXPOSE 8888

# Create mountpoint
VOLUME /app

# Run jupyter when container launches
CMD ["jupyter", "notebook", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]

