#!/bin/bash

source asyncproc

export ASYNCPROC_VERBOSE=true
export ASYNCPROC_ERRORS=true

trap asyncproc_exit EXIT

asyncproc_run()
{
    sleep 2
}

asyncproc_start
asyncproc_run

