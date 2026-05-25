#!/usr/bin/env bash
set -euo pipefail

ENV_NAME="${ENV_NAME:-personal-website-ruby}"
RUBY_VERSION="${RUBY_VERSION:-3.3}"
SITE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cd "$SITE_DIR"

if ! command -v conda >/dev/null 2>&1; then
  cat <<'EOF'
Conda was not found in this shell.

Install Miniforge first, then open a new terminal and rerun this script:

  curl -L -o Miniforge3-MacOSX-arm64.sh https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-MacOSX-arm64.sh
  bash Miniforge3-MacOSX-arm64.sh
  conda init zsh

For an Intel Mac, use Miniforge3-MacOSX-x86_64.sh instead of the arm64 installer.
EOF
  exit 1
fi

if conda env list | awk '{print $1}' | grep -qx "$ENV_NAME"; then
  echo "Updating existing conda environment '$ENV_NAME'..."
  conda install -y -n "$ENV_NAME" -c conda-forge \
    "ruby=$RUBY_VERSION" \
    c-compiler \
    cxx-compiler \
    make \
    pkg-config
else
  echo "Creating conda environment '$ENV_NAME'..."
  conda create -y -n "$ENV_NAME" -c conda-forge \
    "ruby=$RUBY_VERSION" \
    c-compiler \
    cxx-compiler \
    make \
    pkg-config
fi

ENV_PREFIX="$(conda env list | awk -v env="$ENV_NAME" '$1 == env {print $NF}')"

if [ -z "$ENV_PREFIX" ]; then
  echo "Could not find conda environment prefix for '$ENV_NAME' after installation."
  exit 1
fi

echo "Configuring Bundler for this website..."
conda run -n "$ENV_NAME" bundle config set --local path 'vendor/bundle'
conda run -n "$ENV_NAME" bundle config set --local build.eventmachine "--with-openssl-dir=$ENV_PREFIX"

echo "Installing Ruby gems..."
conda run -n "$ENV_NAME" bundle install

cat <<EOF

Done.

Use these commands to preview the site:

  cd "$SITE_DIR"
  ./.preview

The conda environment is named '$ENV_NAME'.
EOF
