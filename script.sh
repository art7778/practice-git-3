#!/bin/bash
for i in "ivanov Иванов Иван \$6\$Nt8zG/ep2uYYsWWZ\$vTroEjXRM5D9XNMhdPa1czSOQ6xfz5sd2w8Ay8ru/JIwJ4akvu71uPw9q4B9Se/54LXPCqTEYNyu9eqrFyMM8/" \
"petrov Петров Иван \$6\$Nt8zG/ep2uYYsWWZ\$vTroEjXRM5D9XNMhdPa1czSOQ6xfz5sd2w8Ay8ru/JIwJ4akvu71uPw9q4B9Se/54LXPCqTEYNyu9eqrFyMM8/" \
"sidorov Сидоров Иван \$6\$Nt8zG/ep2uYYsWWZ\$vTroEjXRM5D9XNMhdPa1czSOQ6xfz5sd2w8Ay8ru/JIwJ4akvu71uPw9q4B9Se/54LXPCqTEYNyu9eqrFyMM8/"; do
set -- $i
useradd -d /home/$1 -G adm,cdrom -p "$4" -s /bin/bash -c "$2 $3" $1
done