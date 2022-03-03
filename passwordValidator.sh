password="MyP@ssw0rd!"
 
echo "\nType a password ...\n"
read password 

len="${#password}"

status=$?


if test $len -ge 10 ; then

    echo "$password" | grep -q [0-9]

     if test $? -eq 0 ; then

           echo "$password" | grep -q [A-Z]

                if test $? -eq 0 ; then

                    echo "$password" | grep -q [a-z]   

                      if test $? -eq 0 ; then

                       tput setaf 2; echo "${password}" ; echo $?;
             
                   else

                       tput setaf 1; echo "please include lower case char ";
                        exit 1;

                   fi

            else

               tput setaf 1; echo "please include capital char";
                    exit 1 ;

            fi

     else

       tput setaf 1; echo "please add numbers to your password " ; 
         exit 1;

     fi

else

   tput setaf 1; echo "password lenght should be greater than or equal 10 hence weak password ";
           exit 1; 

fi