# Data science setup

Docker-based Jupyterlab container with Nginx reverse proxy. Included kernels:

- Python 3.7
- R

## Installation instructions

It's simple; just run `docker-compose up`. By default an instance is available at [localhost:1337](localhost:1337)
Docker-compose will map the `workspace` directory to the container, so all notebooks you create will be stored there.
The default password for the notebook is `v3rys3cr3t_t0k3n!` but can be changed by setting the `JUPYTER_TOKEN` environment variable. 
It's important to change this when running it in a live environment (i.e. not on your local machine).
