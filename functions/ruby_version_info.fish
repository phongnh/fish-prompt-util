function ruby_version_info
    if type chruby >/dev/null 2>&1
        chruby_auto
        if test (chruby | grep -c \*) -eq 1
            echo -n -s ' (' (chruby | grep \* | tr -d '* ') ')'
        else
            echo -n -s ' (system)'
        end
    else if type rbenv >/dev/null 2>&1
        set -l ruby_version (rbenv version-name)
        set -l gemset (rbenv gemset active 2>/dev/null | sed -e '$ s/ global//' | sed -e '')
        tes -n "$gemset" ;and set ruby_version "$ruby_version@$gemset"
        echo -n -s " ($ruby_version)"
    else if type rvm-prompt >/dev/null 2>&1
        echo -n -s ' (' (rvm-promt i v p g) ')'
    else if type ruby >/dev/null 2>&1
        echo -n -s ' (ruby-' (ruby -v | cut -d ' ' -f 2) ')'
    end
end
