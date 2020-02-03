echo "Loading Ian-Hinders-MBP.sh"

# Set the default number of OpenMP threads.  This can be overridden by
# setting the variable beforehand.
if [ -z "${OMP_NUM_THREADS+1}" ]; then
    export OMP_NUM_THREADS=4
fi
