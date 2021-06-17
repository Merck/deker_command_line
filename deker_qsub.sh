#!/bin/bash
#
#$ -cwd -V -b y
#$ -P long
#$ -N deker
#$ -l mem_reserve=10G -l h_vmem=40G -l fourperhost=1
#$ -o logs/$JOB_NAME.$JOB_ID.$TASK_ID.o -e logs/$JOB_NAME.$JOB_ID.$TASK_ID.e
#
## $1 : data
#echo "data $1"
## $2 : response
#echo "response $2"
## $3 : param_control_file
#echo "param_control $3"
## $4 : control_file
#echo "control_file $4"
## $5 : write_prefix
#echo "write_prefix $5"
## $6: include_predictors
#echo "include predictors $6"
#index=$(($SGE_TASK_ID-1))
#./deker_job -b -n $3 -z $4 -w "$5.$index.run" $1 $2 $index $6

# $1 : control_dir
echo "control_dir $1"
# $2 : which_response
echo "which_response $2"
# $3 : write_output_location
echo "write_output_location $3"

./deker -f -w "$3.run" $2 $1