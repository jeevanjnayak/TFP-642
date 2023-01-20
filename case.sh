#!/bin/bash -x

perHourSal=100
fullDay=1
halfDay=2
ranCheck=$((RANDOM%3))

case $ranCheck in 
	$fullDay)
		dayHour=8 ;;
	$halfDay)
		dayHour=4 ;;
	*)
		dayHour=0 ;;
esac

perDaySal=$(($perHourSal*$dayHour))
echo "Salary for today is $perDaySal"
