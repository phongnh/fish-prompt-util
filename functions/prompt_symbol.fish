function prompt_symbol
    if test $status -eq 0
        test -z $argv[1] ;and set argv[1] '$'
        echo -n -s $argv[1] ' '
    else
        test -z $argv[2] ;and set argv[2] '!'
        echo -n -s $argv[2] ' '
    end
end
