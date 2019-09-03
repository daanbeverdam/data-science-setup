FROM python:3.7

# Install & setup nginx
RUN apt-get update && apt-get install nginx -y
COPY ./notebook-nginx /etc/nginx/sites-enabled/default

# Jupyterlab (extension) dependencies:
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get update && apt-get install pandoc texlive-xetex nodejs npm -y

# Install Jupyterlab and python 3 dependencies:
ADD requirements.txt /pip/requirements.txt
WORKDIR /pip
RUN pip3 install -U pip
RUN pip3 install -r requirements.txt
RUN jupyter lab build

# Install R kernel:
RUN apt-get install r-base-core -y
WORKDIR /
COPY ./install.r /tmp/install.r
RUN Rscript /tmp/install.r

# Copy configs to container:
COPY jupyter_notebook_config.py /root/.jupyter/
COPY keras.json /root/.keras/keras.json

# Create workspace folder:
WORKDIR /workspace

# Kick off entrypoint script:
COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
