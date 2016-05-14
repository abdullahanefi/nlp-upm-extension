#!/bin/bash
~/mosesdecoder/scripts/training/clean-corpus-n.perl /mnt/corpus/europarl-v7.es-en.tok es en /mnt/corpus/europarl-v7.es-en.clean 1 40
~/mosesdecoder/scripts/training/clean-corpus-n.perl /mnt/corpus/training/europarl-v6.es-en.tok es en /mnt/corpus/training/europarl-v6.es-en.clean 1 40