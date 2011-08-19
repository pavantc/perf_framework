#!/bin/bash

perf_test ()
{
    ./perf-test.sh $mount_point >> $logfile
}

_init ()
{
    mount_point=$1;
    logfile=$2
}

main ()
{
    echo "" > $logfile
    perf_test;
    perf_test;
    perf_test;
}


_init "$@" && main "$@";
