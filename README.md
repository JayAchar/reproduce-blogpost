# reproduce-blogpost

![Dockerfile build CI](https://github.com/JayAchar/reproduce-blogpost/workflows/Docker%20Image%20CI/badge.svg)

This repo contains sample code to support the
['Docker for Reproducibility'](https://jay.rbind.io/post/docker-for-reproducibility/)
personal blog post.

A simple Dockerfile pulls a rocker/tidyverse image then adds an Rscript
which is executed when a container is started.

A `start.sh` bash script for initiating containers is included for convenience. File
paths and the image name should be adjusted here.

Get in touch if you have any comments, questions or suggestions.
