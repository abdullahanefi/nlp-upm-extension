#!/bin/bash
~/mosesdecoder/scripts/Transliteration/train-transliteration-module.pl  \
    --corpus-f <foreign text>  --corpus-e <target text>  \
    --alignment <path to aligned text>  \
    --moses-src-dir <moses decoder path> --external-bin-dir <external tools>  \
    --input-extension <input extension>--output-extension <output-extension> \
    --srilm-dir <sri lm binary path> --out-dir <path to generate output files>