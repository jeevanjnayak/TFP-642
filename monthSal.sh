#!/bin/bash -x

fullDay=1
halfDay=2
perHourSal=100
maxDay=31
totalWage=0
dayPresent=0
day=1
totalHour=0

while [[ $day -lt $maxDay && $dayPresent -lt 20 && $totalHour -lt 120 ]]
do
	ranCheck=$((RANDOM%3))
	case $ranCheck in
		$fullDay)
			dayHour=8
			((dayPresent++)) ;;
		$halfDay)
			dayHour=4
			((dayPresent++)) ;;
		*)
			dayHour=0 ;;
	esac
	totalHour=$(($totalHour+$dayHour))
	dailyWage=$(($perHourSal*$dayHour))
	totalWage=$(($totalWage+$dailyWage))
	((day++))
done
echo "The total wage is $totalWage"
echo "The total Hour worked $totalHour"
echo "The total present days are $dayPresent"
echo $day
