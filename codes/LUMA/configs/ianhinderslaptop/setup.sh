echo "Loading Ian-Hinders-MBP.sh"

# Set the default number of OpenMP threads.  This can be overridden by
# setting the variable beforehand.
if [ -z "${OMP_NUM_THREADS+1}" ]; then
    export OMP_NUM_THREADS=4
fi

export OMPI_CXX=g++-mp-8
export LUMA_CFLAGS="-O3 -std=c++0x -w -fopenmp -isysroot $(xcrun --show-sdk-path) -I/opt/local/include"
# export LUMA_LDFLAGS="-L/opt/local/lib"
export HDF5_HOME=/opt/local
export LAPACK_DIR=/opt/local

# TODO: this still doesn't work because LUMA needs parallel HDF5,
# which isn't on this machine
