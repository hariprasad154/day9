sal_hour=20;
wrk_hour=0;
month_sal=0;
ttl_wrkhour=0;

sal_uptodate=1;

daily_sal=()

total_wage=()

day=1;
count=0;

while [[ $day -le 20 && $ttl_wrkhour -lt 100 ]] 
do

	attendence=$((RANDOM%3));
	case $attendence in 
			0)
					echo "employee is apsent ";
					wrk_hour=0;
	
			;;
		
			1)
					echo "employee is present ";
					wrk_hour=8;
				 	
			;;
			2)
					echo "employee as part time";

					wrk_hour=4;
			;;
	
	esac
	ttl_wrkhour=$(($ttl_wrkhour + $wrk_hour))
	sal_uptodate=$(($ttl_wrkhour))
	

	echo " $ttl_wrkhour "
	
	total_wage[((count))]=$sal_uptodate
	
	echo "----------------"

	ttl_salary=$(($sal_hour * $wrk_hour));


	daily_sal[((count))]=$ttl_salary
	
	
	echo  " total salary of employee $ttl_salary ";
	echo "----------------"
	
	month_sal=$(($month_sal + $ttl_salary));

	

	((count++));
	((day++));

done
echo "----------------"
echo "--uptodate-" ${total_wage[@]};


echo "--------------------------------------------------"

for (( i=0; i<=${#daily_sal[@]}; i++ ))
do
	echo "the sal of day $i is " ${daily_sal[$i]};
	
done

echo  " total salary of employee in month $month_sal ";