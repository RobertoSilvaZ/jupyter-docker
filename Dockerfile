FROM python:3.9

# Install any necessary packages
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    build-essential \
    git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy the requirements file and install the dependencies
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Copy the notebooks to the container
COPY . /app

# Install Jupyter Notebook extensions
RUN jupyter contrib nbextension install --user
RUN jupyter nbextension enable execute_time/ExecuteTime 
RUN jupyter nbextension enable notify/notify
RUN jupyter nbextension enable scroll_down/main
RUN jupyter nbextension enable toc2/main
RUN jupyter nbextension enable freeze/main
RUN jupyter nbextension enable highlighter/highlighter
RUN jupyter nbextension enable zenmode/main
RUN jupyter nbextension enable code_prettify/autopep8
RUN jupyter nbextension enable spellchecker/main
RUN jupyter nbextension enable toggle_all_line_numbers/main
RUN jupyter nbextension enable collapsible_headings/main
RUN jupyter nbextension enable hide_input_all/main
RUN jupyter nbextension enable tree-filter/index
RUN jupyter nbextension enable export_embedded/main
RUN jupyter nbextension enable nbextensions_configurator/tree_tab/main
RUN jupyter nbextension enable nbextensions_configurator/config_menu/main

# Set the default command to run Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]