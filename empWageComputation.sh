isPresent=$((RANDOM%3));
wagePerHr=20;
dayOfMonth=0;
dailyWorkHr=8;
monthlyWorkHr=0;



function Emp_sal(){
	

		case $isPresent in	
		1)
		           workingHr=$dailyWorkHr;
		;;

		2)
		           workingHr=$dailyWorkHr/2;
		;;
	
		*)
		           workingHr=0;
		;;
		esac

      	

while [[ $dayOfMonth -le 20 && $monthlyWorkHr -lt 100 ]]
do
	
	monthlyWorkHr=$(($monthlyWorkHr + $workingHr));
	
      ((dayOfMonth++));
done

totalSalary=$(($monthlyWorkHr * $wagePerHr));


echo "Employee Total Working Hour: $monthlyWorkHr";

echo "Employee Monthly Wage: $" $totalSalary;

echo "Employee total working days:" $dayOfMonth;
	
}
Emp_sal
