echo "Loading ${BASH_SOURCE}"

# Store commands to restore shell options in restore_opts
read -d "" restore_opts < <(set +o) || true

set +e
set +u
source /etc/profile.d/alces-clusterware.sh
module load compilers/intel/17.0.7
module load mpi/intel-17.0/openmpi/3.1.3     # This is the version loaded by the HDF5 module below
module load libs/intel-17.0/hdf5/1.10.5_mpi
module load libs/lapack/3.5.0/gcc-4.8.5

# Restore shell options
eval "${restore_opts}"

export PATH=$HOME/software/perf-3.10.0-693.21.1.el7.x86_64/bin:$PATH

export LD_LIBRARY_PATH=/mnt/iusers01/support/h52229ih/software/vtk-8.2.0/lib64:$LD_LIBRARY_PATH
export HDF5_USE_FILE_LOCKING=FALSE
