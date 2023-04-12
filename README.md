# Jupyter in Docker

## This project allows you to run Jupyter in a Docker container.

The idea of this project is to have a simple way to run Jupyter in a Docker container. This is useful if you want to run Jupyter on a server or if you want to run Jupyter in a container.

# Features

- This project is based on **Python 3.9** and **Jupyter 6.5**.
- Once you run the container, automatically will install the libraries located in the **requirements.txt** file.
- If you want to install other libraries, you can add them to the requirements.txt file and rebuild the container.
- Once you run the container, you can access to Jupyter in the **port 8888**.
- There is no password for the Jupyter notebook.
- You can add your own notebooks or files to the **/notebooks** folder and they will be available in Jupyter.
- You can handle your environment variables in the **.env** file.

## Requirements

- Docker

## Usage

1. Clone this repository
2. Run `docker-compose up`
3. Open `http://localhost:8888` in your browser
4. Enjoy!

Don't forget to give a star if you like this project! 😸
