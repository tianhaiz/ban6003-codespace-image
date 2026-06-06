FROM mcr.microsoft.com/devcontainers/miniconda:3

COPY requirements.txt /tmp/ban6003-requirements.txt

RUN conda install -y -n base python=3.12 pip && \
    /opt/conda/bin/python -m pip install --upgrade pip && \
    /opt/conda/bin/python -m pip install -r /tmp/ban6003-requirements.txt && \
    /opt/conda/bin/python -m ipykernel install --sys-prefix --name ban6003 --display-name "base(BAN6003)" && \
    conda clean -afy && \
    rm -rf /tmp/ban6003-requirements.txt /root/.cache/pip

USER vscode

RUN /opt/conda/bin/python -m ipykernel install --user --name ban6003 --display-name "base(BAN6003)"

USER root
