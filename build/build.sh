find . -type f -not -name 'build.sh' -exec rm -f {} +
cmake -G Ninja ..