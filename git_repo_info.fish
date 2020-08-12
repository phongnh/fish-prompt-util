function git_repo_info
    if git_is_repo
        echo -n -s ' (' (git_branch_name 2^/dev/null; or git_short_sha)

        if git_is_dirty
            echo -n -s ' *'
        end

        if test (git_untracked_files) -gt 0
            echo -n -s ' ?'
        end

        if git_is_staged
            echo -n -s ' +'
        end

        echo -n -s (git_ahead ' >' ' <' ' =' '')

        if git_is_stashed
            echo -n -s ' @'
        end

        echo -n -s ')'
    end
end

