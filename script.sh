#!/bin/bash

# Start the first process
./usr/sbin/httpd &
  
# Start the second process
./usr/sbin/php-fpm &
  
# Wait for any process to exit
wait -n
  
# Exit with status of process that exited first
exit $?
