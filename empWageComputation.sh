isPresent=$((RANDOM%3));
workingHour=8
wagesPerHour=20
if [ $isPresent -eq 0 ]
then
	echo "Employee is absent";
		workingHour=0;
	
elif [ $isPresent -eq 1 ]
then
	echo "Employee is present";
		workingHour=8;
else
	echo "Employee is working as part time";
		workingHour=$((workingHour/2));
	
fi
Wage=$(($workingHour * $wagesPerHour));
echo "Employee has earned $Wage today";