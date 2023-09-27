function asdf_nodejs_version_info
    if type asdf >/dev/null 2>&1 ;and test (asdf list nodejs | grep -c '^ \*') -eq 1
        echo -n -s ' (node-' (asdf list nodejs | grep '^ \*' | tr -d ' *') ')'
    end
end
