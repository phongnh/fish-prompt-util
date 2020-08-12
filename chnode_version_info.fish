function chnode_version_info
    if type chnode >/dev/null 2>&1 ;and test (chnode | grep -c \*) -eq 1
        echo -n -s ' (node-' (chnode | grep \* | tr -d '* ') ')'
    end
end
