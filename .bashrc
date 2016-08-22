PATH=$PATH:$HOME/bin

# q environment
export LD_LIBRARY_PATH="/home/xiwang/lib"
export QARCH=l64
export QVERSION=3.3
export KDBPATH="/home/foshare/iarb/Fixed_Income/Xiaomin/kdb"
if [ $HOSTNAME = "nwklgat24" ]; then
    export QHOME="/opt/eopt/q/"$QVERSION
else
    export QHOME="/opt/uhf/"`hostname`"/q/"$QVERSION
fi
export QBIN=$QHOME/$QARCH/q
export QINIT=${HOME}/.q
export http_proxy='http://%username%:%password%@cmusproxy.oak.fg.rbc.com:8080/'
export https_proxy='http://%username%:%password%@cmusproxy.oak.fg.rbc.com:8080/'
export ftp_proxy='http://olpproxy.oak.fg.rbc.com:8080'
export TERMINFO=/usr/share/terminfo

function q {
    core_id=0
    if [ $# -gt 0 ]; then
        core_id=$1
    fi
    taskset -c $core_id rlwrap $QBIN -s 6 -g 1
}

