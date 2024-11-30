find . -type f -not -name 'build.sh' -exec rm -f {} +
cmake -G Ninja -DUSE_LIBRARY=ON -DCMAKE_CXX_COMPILER=clang++ ..