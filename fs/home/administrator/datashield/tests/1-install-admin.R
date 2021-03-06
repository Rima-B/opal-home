#!/usr/bin/env Rscript

#
# Install packages from github using devtools
#

# Make sure devtools is installed
if (!require('devtools', character.only=TRUE)) {
	install.packages('devtools', repos=c('http://cran.rstudio.com'), dependencies=TRUE)
}
# Install opal package from github
if (!require('RCurl', character.only=TRUE)) {
	install.packages('RCurl', repos=c('http://cran.rstudio.com'), dependencies=TRUE)
}
if (!require('rjson', character.only=TRUE)) {
	install.packages('rjson', repos=c('http://cran.rstudio.com'), dependencies=TRUE)
}
devtools::install_github('opal', username='datashield', ref='master')
# Install opaladmin package from github
devtools::install_github('opaladmin', username='datashield', ref='master')


