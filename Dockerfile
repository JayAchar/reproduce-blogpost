# versioned R distribution with tidyverse and Rstudio installed
FROM rocker/tidyverse:3.6.1

# Add run time ARG to include raw data
ARG raw_data 

# define additional packages to install
ADD ./packages.R /tmp/packages.R

# set working directory
WORKDIR /home/rstudio_user

# add analysis scripts
ADD ./R ./R

# add output folder
RUN mkdir ./output \
   && mkdir ./raw \
   && Rscript /tmp/packages.R

CMD ["Rscript", "R/analysis.R"]
