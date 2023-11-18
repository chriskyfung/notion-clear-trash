# Use an official Python image from Docker Hub as a parent image
FROM python:3.12.0

# Set the default command to be the Bash shell
ENTRYPOINT [ "/bin/bash" ]

# Set the working directory to /usr/src/app/notion-clear-trash
WORKDIR /usr/src/app/notion-clear-trash

COPY ../ ./

# Installing a Python package called `notion-py` from a GitHub repository using the `pip` package manager
RUN pip install git+https://github.com/tanoinc/notion-py.git@3f1b67fac472a39c3ac07e490769ab7a3deb7564
