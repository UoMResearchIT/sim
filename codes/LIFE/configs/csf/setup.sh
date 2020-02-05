echo "Loading ${BASH_SOURCE}"

# TODO: save and restore flags
set +e
set +u
source /etc/profile.d/alces-clusterware.sh
module load libs/lapack/3.5.0/gcc-4.8.5
module load libs/gcc/boost/1.68.0
set -u
set -e


export CFLAGS_EXTRA=$(pkg-config --libs lapack)
