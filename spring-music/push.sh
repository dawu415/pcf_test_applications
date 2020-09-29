#!/bin/bash
cf push $1 -p ./build/libs/spring-music-1.0.jar --random-route
