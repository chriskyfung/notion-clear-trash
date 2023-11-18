# notion-clear-trash

Script to clear the trash of all the workspaces of your Notion account.

This repository is strongly inspired from the project [notion-clear-trash](https://github.com/axyyu/notion-clear-trash) of the user [axyyu](https://github.com/axyyu). However, some modification has been done in order to delete the trash of all the workspaces instead of only the current workspace.

⚠️**Use this script at your own risk, as it will <u>permanently</u> delete pages from your Notion account.**

## Installation

```sh
pip install git+https://github.com/thomashirtz/notion-clear-trash#egg=notion-clear-trash
```

## Utilization

```sh
notion-clear-trash "<YOUR-TOKEN>"
```

The token is the API token, the steps to get it are the following:

 1. Go to [www.notion.so](https://www.notion.so).
 2. Press* `F12` to get to display the `Browser Developer Tools`.
 3. Go to the `Storage` section, then the `Cookies` section, finally search for the value of `token_v2`.


## Running with Docker

You can also run the Python code using Docker with the following steps:

1. Clone the repo and build the Docker image with the following commands:

    ```shell
    git clone --depth=1 https://github.com/chriskyfung/notion-clear-trash.git
    cd notion-clear-trash/
    docker build -t notion-clear-trash .
    ```

2. Create and run a new container from the image by using:

    ```shell
    docker run --rm -it notion-clear-trash:latest
    ```

3. Run the Python script on the running container with the following command:

    ```shell
    python notion_clear_trash.py "<YOUR-TOKEN>"
    ```
