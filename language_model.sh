#!/bin/bash
nohup nice ~/srilm/bin/i686-m64/ngram-count -order 5 -interpolate -kndiscount -text $CORPUS.clean.es -lm $CORPUS.lm.es >& languge-model.es.out &
nohup nice ~/srilm/bin/i686-m64/ngram-count -order 5 -interpolate -kndiscount -text $CORPUS.clean.en -lm $CORPUS.lm.en >& languge-model.en.out &