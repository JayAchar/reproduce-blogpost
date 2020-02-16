#! /bin/sh

docker run --rm -it --name reproducible-container \
        -v $HOME/raw:/home/rstudio_user/raw \
        -v $HOME/output:/home/rstudio_user/output \
        -p 8787:8787 \
        reproducible-image
