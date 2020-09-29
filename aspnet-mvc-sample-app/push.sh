#!/bin/bash
cf push $1 -p ./linux-compiled --random-route
