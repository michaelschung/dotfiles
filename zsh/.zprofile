
# Homebrew
if [[ -f /opt/homebrew/bin/brew ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Local binaries (pipx, etc.)
export PATH="$HOME/.local/bin:$PATH"

# Python 3.13 (installed via python.org)
if [[ -d /Library/Frameworks/Python.framework/Versions/3.13/bin ]]; then
    export PATH="/Library/Frameworks/Python.framework/Versions/3.13/bin:$PATH"
fi
