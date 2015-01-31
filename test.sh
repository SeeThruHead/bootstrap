status=$(ls -lO /private/var/vm/sleepimage)
echo $status
if [[ $status = "-rw-r--r--  1 root  wheel  uchg 0 18 Jan 01:05 /private/var/vm/sleepimage" ]] ; then
	echo "True"
else
	echo "False"
fi