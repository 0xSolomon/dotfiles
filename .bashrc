export PATH=/opt/homebrew/bin:$PATH
export PATH="/usr/bin/openssl:$PATH"
. "$HOME/.cargo/env"

# We do this before the following so that all the paths work.
for file in ~/.{aliases,dockerfunc}; do
	if [[ -r "$file" ]] && [[ -f "$file" ]]; then
		# shellcheck source=/dev/null
		source "$file"
	fi
done
unset file

exec nu
