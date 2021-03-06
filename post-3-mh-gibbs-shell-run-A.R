## Load the necessary code from this and previous posts
source("http://edustatistics.org/mcmcinirt/setup/post-3.R")

## Set the seed to keep results reproducible 
set.seed(314159)
 
## Run the sampler at the true, simulated values
## for 1000 iterations
run.A <- run.chain.2pl(
    ## No burnin, keep 1000 iterations, do not thin
    M.burnin = 0, M.keep  = 1000, M.thin = 1,
    ## Use the fake data simulated in Post #2
    U.data  = U,
    ## Pass in the hyperpriors from Post #1
    hyperpars = hyperpars,
    ## Use the true values from Post #2 for the initial values
    th.init = theta.abl,
    a.init  = a.disc,
    b.init  = b.diff,
    s2.init = sig2.theta,
    ## These parameters are not yet defined. Pass in NULL.
    MH.th=NULL, MH.a=NULL, MH.b=NULL)
