#!/bin/bash
$SCRIPT_DIR/tokenizer.perl -l en < $CORPUS.en > $CORPUS.tok.en
$SCRIPT_DIR/tokenizer.perl -l es < $CORPUS.es > $CORPUS.tok.es
nohup nice $SCRIPT_DIR/lowercase.perl < $CORPUS.tok.en > $CORPUS.lowercased.en >& preprocessing.en.out &
nohup nice $SCRIPT_DIR/lowercase.perl < $CORPUS.tok.es > $CORPUS.lowercased.es >& preprocessing.es.out &