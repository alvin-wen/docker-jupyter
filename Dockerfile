FROM python:3.9

# Set working directory
WORKDIR /workspace

# Install Python dependencies
COPY requirements.txt ./
RUN pip install -r requirements.txt

# Install JupyterLab
RUN pip install jupyterlab

# Expose JupyterLab port
EXPOSE 8888

# Set entrypoint to run JupyterLab
ENTRYPOINT ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]