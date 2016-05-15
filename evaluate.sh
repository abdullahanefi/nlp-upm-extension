#!/bin/bash
nohup nice /opt/moses/bin/moses -f $MOSES_INI < ~/corpus/newstest2011.true.fr > ~/working/newstest2011.translated.en 2> ~/working/newstest2011.out 
$SCRIPT_DIR/generic/multi-bleu.perl -lc ~/corpus/newstest2011.true.en < ~/working/newstest2011.translated.en