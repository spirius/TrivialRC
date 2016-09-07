#!/bin/bash

source asyncproc

export ASYNCPROC_VERBOSE=true
export ASYNCPROC_ERRORS=true

asyncproc_run()
{
    asyncproc_say "Hello from run..."
    sleep 2
}

asyncproc_handler_ec_conf_local() {
    ASYNCPROC_HANDLER_EC_INPUT="/asd/dsa"
}

asyncproc_start
trap asyncproc_exit EXIT

asyncproc_run
