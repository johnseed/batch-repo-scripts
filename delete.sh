# https://stackoverflow.com/questions/26381807/bash-loop-through-directory-including-hidden-file
for dir in *; do
        if [ -d "$dir" ]; then
                echo working on $dir "*******************"
                cd $dir;
                for x in * .[^.]*
                do
                        if [ "$x" != ".git" ]
                        then
                                echo deleting $x
                                rm -rf $x;
                        fi
                done;
                cd ..
        fi
done
