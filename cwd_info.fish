function cwd_info
    set -l cwd (string split -m 1 -r -- / (prompt_pwd))[-1]
    test -z "$cwd" ;and set cwd '/'
    echo "$cwd"
end
