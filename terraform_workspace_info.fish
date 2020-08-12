function terraform_workspace_info
    if test -d .terraform
        echo -n -s ' (' (terraform workspace show 2>/dev/null) ')'
    end
end

