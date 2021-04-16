FROM continuumio/miniconda3:4.9.2

WORKDIR /build

# Copy definition file for an environment called "env"
COPY environment.yml .

RUN  conda env create --file environment.yml 

# Make RUN commands use the new environment:
SHELL ["conda", "run", "-n", "myenv", "/bin/bash", "-c"]


# Install and activate "env"
#RUN conda install -c conda -y conda-env \
#  && conda env create --file /build/environment.yml \
#  && conda activate env 
