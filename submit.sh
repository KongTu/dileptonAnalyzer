#!/bin/bash

dir=$PWD
echo $dir

if [ ! -d submitjob ]; then
     mkdir -p submitjob
fi

cd submitjob

mkdir -p submitReport submitScript submitList submitErrInfo rootfiles

rm -rf submitReport/*
rm -rf submitScript/*
rm -rf submitList/*
rm -rf submitErrInfo/*

ln -fs $dir/Run16_dAu200.xml ./

star-submit-template -template Run16_dAu200.xml -entities dir=$dir

#for list in `ls $dir/picoDataList/sublist`
#do
#   echo $list
#   star-submit-template -template Run14_AuAu200_miniDst.xml -entities dir=$dir,list=$list
#done
