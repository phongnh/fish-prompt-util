function asdf_ruby_version_info
    if type asdf >/dev/null 2>&1 ;and test (asdf list ruby | grep -c '^ \*') -eq 1
        echo -n -s ' (' (asdf list ruby | grep '^ \*' | tr -d ' *') ')'
    end
end
