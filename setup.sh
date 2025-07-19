# Create and activate environment
conda env create -f conda_env.yaml
conda activate deep_rl_env

# Register the ipython kernel.
python -m ipykernel install --user --name=deep_rl_env --display-name "Python (deep_rl_env)"
