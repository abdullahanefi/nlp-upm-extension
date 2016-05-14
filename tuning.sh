#!/bin/bash
 nohup /opt/moses/scripts/training/mert-moses.pl tuning/input tuning/reference /opt/moses/bin/moses ... --working-dir tuning --rootdir /opt/moses/bin/ >& mert.ou &