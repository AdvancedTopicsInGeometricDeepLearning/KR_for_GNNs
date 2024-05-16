# KR for GNNs
This repository contains the code to reproduce the experiments from the paper: 
<div align="center">
    <h2>
        <b>
            Graph Representation Learning via Aggregation Enhancement
        </b>
    </h2>
</div>

where:
- `./synthetic_data` directory contains synthetic tests of KR loss estimation.
- `./graph_supervised_learning` directory contains the code, where KR loss term is optimized along with supervised loss,
to obtain better node representations. For more details refer to [graph_supervised_learning/README.md](graph_supervised_learning/README.md).
- `./graph_self_supervised_learning` directory contains the code of **GIRL** (**G**raph **I**nformation **R**epresentation **L**earning) algorith
for self-supervised graph representation learning. The main idea behind algorithm depicted in the image. For more details refer to [graph_self_supervised_learning/README.md](graph_self_supervised_learning/README.md).
![](images/GIRL.png?raw=true)


# Notes By Aida and Andrew

We are students in a course taught by Haim, a part of the course 
is for us to do a mini research project. As part of our project we
chose to expand on the previous paper 
(*"Graph Representation Learning via Aggregation Enhancement"*).

As part of our research we would like to take a closer look at 
GIRL and add some things to it. These are a few notes we 
managed to gather about the repo that were not clear to us at
the start:

## Prerequisites

To install prerequisites please run:

```commandline
pip install hydra-core
pip install lightning
pip install torch_geometric
pip install wandb
pip install ogb
pip install seaborn
conda install -c pytorch -c nvidia faiss-gpu
```

## File structure

This repo looks like it was previously 3 repos that
were combined under one repo, that is why you might get errors
if you don't run each one from its own path.

`./synthetic_data` contains something called rho and a test for it.

`./images` contains an image for this readme.

`./graph_supervised_learning` we assume it once contained the code
and the tests for the results for supervised learning in the paper.
However it looks as if `./graph_self_supervised_learning` 
contains everything now and this is just an old folder.

`./graph_self_supervised_learning` contains the code and the tests
for all the results in the paper.

## GIRL

Since we are only interested in GIRL, we only focused on the code
that is under `./graph_self_supervised_learning`, refer to the 
readme in that folder for more information.
