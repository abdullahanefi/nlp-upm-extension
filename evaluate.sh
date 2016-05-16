#!/bin/bash
~/workspace/mosesdecoder/bin/moses -f $MOSES_INI < /mnt/corpus/test/newstest2011.clean.es > /mnt/corpus/test/newstest2011.translated.en 2> eval.newstest2011.out 
$SCRIPT_DIR/generic/multi-bleu.perl -lc /mnt/corpus/test/newstest2011.clean.es < /mnt/corpus/test/newstest2011.translated.en
