export PATH=/opt/homebrew/bin:$PATH
export PATH="$PATH:/Users/solomon/.foundry/bin"
export PATH="/usr/bin/openssl:$PATH"

# We do this before the following so that all the paths work.
for file in ~/.{aliases,dockerfunc}; do
	if [[ -r "$file" ]] && [[ -f "$file" ]]; then
		# shellcheck source=/dev/null
		source "$file"
	fi
done
unset file


export PATH="/Users/solomon/.local/share/solana/install/active_release/bin:$PATH"
. "$HOME/.cargo/env"

export PATH="$HOME/.poetry/bin:$PATH"
