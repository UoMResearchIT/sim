#!/bin/bash --login

#$ -cwd
#$ -pe smp.pe @CORES@
#$ -N @SIMNAME@
#$ -P mace01.prj
#$ -l h_rt=168:00:00
#$ -l skylake
