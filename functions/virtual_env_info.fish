function virtual_env_info
    set -q VIRTUAL_ENV ;and echo -n -s ' (' (basename "$VIRTUAL_ENV") ')'
end
