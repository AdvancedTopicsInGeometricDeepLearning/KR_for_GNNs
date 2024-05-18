## Self-Supervised Graph Representation Learning
### Overview
This directory holds the code used to reproduce the results we share in our paper under the node classification self supervision.  
You can add datasets and layers using the config folders, we encourage you to try different configuration and extend our work.

For more details on the training configuration check out our paper.
### Requirements
* `python==3.8.*`
* `requirements.txt`
* Weights and biases account is optional
* If you do not want to make use of faiss-gpu (not supported under some configurations), you can comment out the relevant code lines). The only outcome is that you want get mid training accuracy estimations. 
### Usage
* Each training session has a hard stop time limit, this is the time limit we used in our paper. You can modify the time limit in order to improve results.
  * Check out the trainer initialization code in `run_exp.py` and `run_exp_reg.py`.
#### Self-supervised
Just run the code in: `run_many_exp.py`, run the datasets and configurations you want.
#### Supervised
Just run the code in: `run_many_exp_reg.py`, run the datasets and configurations you want.
#### Fetch result
If you use weights and biases, you can fetch the results to a table using `fetch_results.py`, for more info call: `fetch_results.py --help`

# Notes By Aida and Andrew

As explained in the previous README, this project contains 
all the results for the paper.

## File structure

* `./configs` contains configurations for running the tests.
* `./dataset.py` contains functions for loading all the datasets that were used in the paper.
* `./fetch_results.py` contains a script for making a CSV file.
* `./gaussian_kernel.py` contains the logic for computing kernel regression.
* `./knn.py` contains ?
* `./model.py` contains the code for the model that is used in self supervised settings.
* `./model_reg.py` contains the code for the model that is used in supervised settings.
* `./requirements.txt` contains the requirements used for the project, though this list may be incomplete.
* `./run_exp.py` contains the code for running a specific model on a specific dataset, it is used by `./run_many_exp.py`.
* `./run_exp_reg.py` contains the code for running a specific model on a specific dataset, it is used by `./run_many_exp_reg.py`.
* `./run_many_exp.py` runs all the model on all the datasets.
* `./run_many_exp_reg.py` runs all the model on all the datasets.


## Getting dependencies

To get all dependencies, or just move on to the next step and install dependencies as they arise.
First, make a new miniconda environment that we called `GDL`:
```commandline
conda create --name GDL python=3.11
```
Then activate the environment:
```commandline
conda activate GDL
```
Then install some dependencies using conda:
```commandline
conda install -c pytorch -c nvidia -c pyg pytorch-sparse faiss-gpu lightning seaborn tensorboard
```
Then install the rest of the dependencies using pip:
```commandline
pip install torch-geometric wandb hydra-core ogb
```

## Running the code

1. Your current directory should be `graph_self_supervised_learning`. 
To do that you should run the command:
```commandline
cd ~/path_to_dir/graph_self_supervised_learning
```

3. Run one single experiment to make sure that everything works. 
Provided is a command that runs one self supervised experiment
using the `pubmed` dataset with 1 GCN layer:
```commandline
python run_exp.py -cn reconstruction_agg layer=gcn dataset=pubmed model.depth=1 training.use_self_in_loss=true training.add_regularization=false
```

