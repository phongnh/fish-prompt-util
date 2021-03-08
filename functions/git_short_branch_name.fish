function git_short_branch_name
    set -l max_length "$argv"
    test -z "$max_length" ;and set max_length 30
    set max_length (math "$max_length - 0")

    if test $max_length -lt 10
        set max_length 10
    end

    set -l branch (git_branch_name 2^/dev/null; or git_short_sha)

    if test (string length $branch) -gt $max_length
        set branch (string split -m 1 -r -- / $branch)[-1]
    end

    if test (string length $branch) -gt $max_length
        set -l max_length_index (math "$max_length - 1")
        set branch (string sub --length $max_length_index $branch)
        set branch (string trim --right --chars=-_ $branch)
        echo $branch"…" ;and return 0
    end

    echo $branch
end
