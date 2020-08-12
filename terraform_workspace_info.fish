function terraform_workspace_info
    if test -d .terraform
        set -l workspace (terraform workspace show 2^/dev/null)
        test -n "$workspace"; and echo -n -s ' (' $workspace ')'
    end
end

