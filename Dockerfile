# Use an official Python image from Docker Hub as a parent image
FROM python:3.12.3

# Set the default command to be the Bash shell
ENTRYPOINT [ "/bin/bash" ]

# Set the working directory to /usr/src/app/notion-clear-trash
WORKDIR /usr/src/app/notion-clear-trash

COPY ../ ./

# Installing a Python package called `notion-py` from a GitHub repository using the `pip` package manager
RUN pip install git+https://github.com/jamalex/notion-py.git@1158cf47a02e477941f08b39a580f7aab4944b90
