#Calculating Wages for a Month
#Assume 20 Working Day per Month

isPresent=$((RANDOM%3));
wagePerHr=20;
monthlyWorkingDays=20;
if [ $isPresent -eq 1 ]
then
	echo "Employee is Present";
	workingHr=8;
	
	
elif [ $isPresent -eq 2 ]
then
	echo "Employee is part-time present";
	workingHr=4;
	
	
else
	echo "Employee is absent";
		workingHr=0;
fi
		
wages=$(($wagePerHr * $workingHr));
monthlyWage=$(($wages * $monthlyWorkingDays));

echo "$monthlyWage is Monthly wage for the employee";