isPresent=$((RANDOM%3));
partimeEmpHr=8;
wagePerHr=20;
Emp=0;

case $isPresent in
	0)
		echo "Employee is absent";
		workingHr=0;
		Emp="Emp is absent";
	;;
	

	1)
		echo "Employee is present";
		workingHr=16;
		Emp="Emp is full-time"
	;;
	

	*)
		echo "Employee is working as part time";
		workingHr=$partimeEmpHr;
		Emp="Emp is part-time"
	;;
esac	


wages=$(($wagePerHr * $workingHr));
echo "$Emp and has earned $wages";
