# Deep Reinforcement Learning

This repo contains all code from a thorough walk-through and work-through of the book [Deep Reinforcement Learning Hands-On](https://learning.oreilly.com/library/view/deep-reinforcement-learning/9781835882702/) by Maxim Lapan (third edition, published in November 2024)

The book is accompanied by an extensive [Github repo](https://github.com/PacktPublishing/Deep-Reinforcement-Learning-Hands-On-Third-Edition), so some of the code in this repo may be duplicated or adopted to include my own improvements.

I skipped some of the chapters and focused mostly on those that provided the most insight and connection to modern LLM training (RLHF, trust region methods like PPO, TRPO, SAC), RL with applications towards robotics (A2C, A3C), while also covering the basics (DQN).

The repository aims to centralize common functionality into a library while combining these components into Jupyter notebooks with extended commentary (in a way combining Maxim's Github repo and his books into a unified story for each chapter).

# Setup

## 🧠 RL Conda Environment Setup

### Quick Setup (Recommended)

Use the provided conda environment file and setup script (courtesy of [ChatGPT](https://chatgpt.com/share/687c7c2f-2384-800f-8850-5d3ace1f78ad)):

```bash
# Create and activate environment using the provided files
bash setup.sh
```

Or manually:

```bash
conda env create -f conda_env.yaml
conda activate deep_rl_env
```

### Environment Details

The `conda_env.yaml` file creates a `deep_rl_env` environment with:

- **Python 3.11** (stable version with good library compatibility)
- **Core RL Libraries:**
  - `gymnasium[atari,classic-control,accept-rom-license]==0.29.1` - Modern OpenAI Gym replacement
  - `stable-baselines3==2.6.0` - High-level RL algorithms
  - `torchrl==0.6.0` - PyTorch-based RL library
- **Deep Learning:**
  - `torch==2.5.0` & `torchvision==0.20.0` - PyTorch ecosystem
  - `pytorch-ignite==0.5.1` - Training utilities
- **Utilities:**
  - `matplotlib` - Plotting and visualization
  - `moviepy==1.0.3` - Video recording of episodes
  - `opencv-python==4.10.0.84` - Computer vision
  - `tensorboard==2.18.0` - Experiment tracking
  - `ray[tune]==2.37.0` - Hyperparameter tuning
  - `numpy<2` - Numerical computing (pinned for compatibility)
  - `mypy==1.8.0` - Type checking
  - `pytest` - Testing framework
- **Jupyter notebook**
  - ipykernel
  - gym-notebook-wrapper

### Verify Installation

```bash
# Check that key packages are installed
conda list | grep -E "gymnasium|stable-baselines3|torch|torchrl"
```

### Notes

- **Stable Baselines3 v2.6.0**: Latest version with gymnasium support
- **Gymnasium**: Actively maintained successor to OpenAI Gym
- **Python 3.11**: Chosen for optimal compatibility with current RL libraries
- **Pinned Versions**: Specific versions ensure reproducible environment setup
