#!/bin/sh
service=forever
echo $service
 if (( $(ps -ef | grep -v grep | grep $service | wc -l) > 0 )); then

                echo "here1"
                forever restartall
        else
                echo "here2"
                forever start app.js
  fi

