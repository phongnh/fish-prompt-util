function chruby_version_info
    if type chruby >/dev/null 2>&1 ;and test (chruby | grep -c \*) -eq 1
        echo -n -s ' (' (chruby | grep \* | tr -d '* ') ')'
    end
end
