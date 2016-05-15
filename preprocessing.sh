#!/bin/bash
$SCRIPT_DIR/tokenizer/tokenizer.perl -t -l en < $CORPUS.en > $CORPUS.tok.en
$SCRIPT_DIR/tokenizer/tokenizer.perl -t -l es < $CORPUS.es > $CORPUS.tok.es
$SCRIPT_DIR/tokenizer/lowercase.perl < $CORPUS.tok.en > $CORPUS.lowercased.en
$SCRIPT_DIR/tokenizer/lowercase.perl < $CORPUS.tok.es > $CORPUS.lowercased.es 
$SCRIPT_DIR/training/clean-corpus-n.perl $CORPUS.lowercased es en $CORPUS.clean 1 40