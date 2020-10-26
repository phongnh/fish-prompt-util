function terraform_workspace_info
    if test -d .terraform ;and type terraform >/dev/null 2>&1
        set -l workspace (terraform workspace show 2^/dev/null)
        test -n "$workspace"; and echo -n -s ' (' $workspace ')'
    end
end

