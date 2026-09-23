uv run modal setup
uv run modal environment create cs312
uv run modal environment create cs312-shared-data
uv run modal volume create --env cs312-shared-data --version 2 hard-dl-dclm-v1

uv run python -m download_data
uv run modal volume put --env cs312-shared-data hard-dl-dclm-v1 \
  "$HOME/dl_alchemy/data/dclm_9p6m_ctx1024" datasets/
