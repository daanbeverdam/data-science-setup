update.packages(ask = F, checkBuilt = T, repos = "http://cran.us.r-project.org")
install.packages(c('repr', 'IRdisplay', 'crayon', 'pbdZMQ', 'devtools'), repos = "http://cran.us.r-project.org")
devtools::install_github('IRkernel/IRkernel')
IRkernel::installspec()
