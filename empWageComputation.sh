isPresent=$((RANDOM%3));
partimeEmpHr=8;
wagePerHr=20;
Emp=0;
if [ $isPresent -eq 0 ]
then
	echo "Employee is absent";
	workingHr=0;
	Emp="Emp is absent";
	
elif [ $isPresent -eq 1 ]
then
	echo "Employee is present";
	workingHr=16;
	Emp="Emp is full-time"
	
else
	echo "Employee is working as part time";
		workingHr=$partimeEmpHr;
		Emp="Emp is part-time"
fi
wages=$(($wagePerHr * $workingHr));
echo "$Emp and has earned $wages";
