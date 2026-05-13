# Search .prefab files with ripgrep, formatted with colors and grouping
rgp() {
	rg --glob '*.prefab' "$@" | awk '
		BEGIN { current_file = "" }
		{
			# Extract filename from the line (everything before first colon)
			match($0, /^[^:]*/)
			filepath = substr($0, RSTART, RLENGTH)
			
			# Get basename without .prefab
			split(filepath, parts, "/")
			filename = parts[length(parts)]
			sub(/\.prefab$/, "", filename)
			
			# Print filename header only once per file
			if (filename != current_file) {
				if (current_file != "") print ""
				printf "\033[1;36m%s\033[0m\n", filename
				current_file = filename
			}
			
			# Get matched content (everything after first colon)
			match($0, /^[^:]*:/)
			content = substr($0, RLENGTH + 1)
			printf "  %s\n", content
		}
	'
}
