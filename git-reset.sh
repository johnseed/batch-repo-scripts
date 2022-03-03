for dir in *; do
        if [ -d "$dir" ]; then
                echo resetting on $dir "*******************"
                cd $dir;
                git reset --hard
                cd ..
        fi
done
