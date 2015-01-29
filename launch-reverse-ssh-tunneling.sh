a=(`ps -ef | grep 19995 | grep -v grep`)
if [ ! "$a" ]; then
    ssh -fN -R 19995:localhost:22 root@115.28.5.188
fi
