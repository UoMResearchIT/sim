#!/bin/bash --login

#$ -cwd
#$ -pe smp.pe @CORES@
#$ -N @SIMNAME@
#$ -P mace01.prj
