function prompt_symbol
    if test (count $argv) -eq 0
        set argv '$' '!'
    else if test (count $argv) -eq 1
        set argv[2] '!'
    end
    if test $status -eq 0
        echo -n -s $argv[1] ' '
    else
        echo -n -s $argv[2] ' '
    end
end
