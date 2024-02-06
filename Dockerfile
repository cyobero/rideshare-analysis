# Use the Jupyter Data Science Notebook as a base image
FROM jupyter/datascience-notebook

# (Optional) Install additional Python packages
RUN pip install streamlit

# Expose the port Jupyter Notebook runs on
EXPOSE 8888

# Copy local files to the container (Optional)
# COPY your-notebook.ipynb /home/jovyan/work/

# Set the working directory
WORKDIR /home/jovyan/work

# Start the Jupyter Notebook server
CMD ["start-notebook.sh", "--NotebookApp.token=''", "--NotebookApp.password=''"]
