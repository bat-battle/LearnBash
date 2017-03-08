#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin
export PATH

echo "Now, i will detect your linux server's services!"
echo -e "The www,ftp,ssh, and mail will be detect! \n"

testing=$(netstat -tulnp | grep ":80")
if [ "$testing" != "" ]; then
	echo "www is running in your system."
fi

testing=$(netstat -tulnp | grep ":22")
if [ "$testing" != "" ]; then
	echo "ssh is running in your system."
fi

testing=$(netstat -tulnp | grep ":21")
if [ "$testing" != "" ]; then
	echo "ftp is running in your system."
fi

testing=$(netstat -tulnp | grep ":25")
if [ "$testing" != "" ]; then
	echo "mail is running in your system."
fi
