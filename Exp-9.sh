#! /bin/bash
read -p "Enter three marks out of 100 each : " m1 m2 m3
s=$(($m1+$m2+$m3))
avg=$(($s / 3|bc))
echo -e "Average: $avg"

if [ $avg -ge 90 ]
then
	echo "Grade: S"
elif [[ $avg -lt 90  &&  $avg -ge 80  ]]
then
	echo "Grade: A"
elif [[ $avg -lt 80  &&  $avg -ge 60  ]]
then
	echo "Grade: B"
elif [[ $avg -lt 80  &&  $avg -ge 40  ]]
then
	echo "Grade: P"
else
	echo "Grade: F"
fi

