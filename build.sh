for dir in *; do
        if [ -d "$dir" ]; then
                echo working on $dir
                cd $dir;
                sh build.sh -o
                cd ..
        fi
done