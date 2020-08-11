def profile_object:
    to_entries | def parse_entry: {"key": .key, "value": .value | type}; map(parse_entry) | sort_by(.key) | from_entries;
