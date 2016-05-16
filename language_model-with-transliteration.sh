#!/bin/bash
nohup nice train-model.perl -root-dir train -corpus <path to parallel corpus>  \
     -f <foreign> -e <target> -alignment grow-diag-final-and  \
     -reordering msd-bidirectional-fe -lm 0:3:<path to lm>:8  \
     -external-bin-dir <external tools> -post-decoding-translit yes  \
     -transliteration-phrase-table <path to transliteration phrase table> >& training.out &