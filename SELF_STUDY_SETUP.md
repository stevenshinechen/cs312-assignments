# Self-study setup

We need to create our own cs312-shared-data and upload the dataset to its volume.

```bash
bash scripts/setup_self_study.sh
```

If the data download hits a certificate error, run:

```bash
SSL_CERT_FILE="$(uv run python -c 'import certifi; print(certifi.where())')" \
  bash scripts/setup_self_study.sh
```

The W&B entity is the slug in your project URL, which may differ
from your username. 
