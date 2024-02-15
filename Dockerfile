FROM jupyter/minimal-notebook:latest
# Add Live slideshows with RISE
RUN conda config --env --add channels conda-forge && \
    conda install --quiet --yes webcolors && \
    conda install --quiet --yes uri-template && \
    conda install --quiet --yes jsonpointer && \
    conda install --quiet --yes isoduration && \
    conda install --quiet --yes fqdn && \
    conda install --quiet --yes jupyterlab_rise && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER
