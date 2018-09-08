#!/usr/bin/expect
set ip [lindex $argv 0]
set command [lindex $argv 1]
set timeout 30
spawn ssh root@$ip
expect "root@"
send "$command\r"
expect "#"
send "exit\r"
expect eof
exit

