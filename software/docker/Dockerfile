########################################################################
# Urban Informatics course Dockerfile
#
# Build an image from the dockerfile:
# >>> docker build -t gboeing/ppd534 .
#
# Run bash in this container and export the conda environment to a yml file:
# >>> docker run --rm -it -u 0 -v "%cd%":/home/jovyan/work gboeing/ppd534 /bin/bash
# >>> conda env export -n base > /home/jovyan/work/environment.yml
#
# Push the built image to hub so others can pull/run it:
# >>> docker login
# >>> docker tag gboeing/ppd534 gboeing/ppd534:latest
# >>> docker push gboeing/ppd534
#
# Run jupyter lab in this container:
# >>> docker run --rm -it -p 8888:8888 -v "%cd%":/home/jovyan/work gboeing/ppd534
#
# Stop/delete all local docker containers/images:
# >>> docker stop $(docker ps -aq)
# >>> docker rm $(docker ps -aq)
# >>> docker rmi $(docker images -q) --force
########################################################################

FROM continuumio/miniconda3
LABEL maintainer="Geoff Boeing <boeing@usc.edu>"
LABEL url="https://github.com/gboeing/ppd534"

COPY requirements.txt /tmp/

# configure conda and install packages in one RUN to keep image tidy
RUN conda config --set show_channel_urls true && \
	conda config --set channel_priority strict && \
    conda config --prepend channels conda-forge && \
    conda update --yes -n base conda && \
    conda install --update-all --force-reinstall --yes --file /tmp/requirements.txt && \
    conda clean --all --yes && \
    conda info --all && \
    conda list

# launch jupyter in the local working directory that we mount
WORKDIR /home/jovyan/work

RUN python -m ipykernel install --name ppd534 --display-name "Python (ppd534)"

# set default command to launch when container is run
CMD ["jupyter", "lab", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''", "--NotebookApp.password=''"]

# to test, import OSMnx and print its version
RUN ipython -c "import osmnx; print(osmnx.__version__)"
