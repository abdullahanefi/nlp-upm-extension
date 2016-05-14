#!/bin/bash
$SCRIPT_DIR/tokenizer.perl -l en < $CORPUS.en > $CORPUS.tok.en
$SCRIPT_DIR/lowercase.perl < $CORPUS.tok.en > $CORPUS.lowercased.en
$SCRIPT_DIR/tokenizer.perl -l es < $CORPUS.es > $CORPUS.tok.es
$SCRIPT_DIR/lowercase.perl < $CORPUS.tok.es > $CORPUS.lowercased.es
~/srilm/bin/i686-m64/ngram-count -order 5 -interpolate -kndiscount -text $CORPUS.lowercased.es -lm $CORPUS.lm.es
~/srilm/bin/i686-m64/ngram-count -order 5 -interpolate -kndiscount -text $CORPUS.lowercased.en -lm $CORPUS.lm.es