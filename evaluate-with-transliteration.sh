#!/bin/bash
nohup nice <path to moses> -f <moses.ini file>  \
      -output-unknowns <path to oov file to be output>  \
      < <path to test input> > <path to test output> 2> <path to trace output>
./post-decoding-transliteration.pl  --moses-src-dir <moses decoder>  \
       --external-bin-dir <external tools> --transliteration-model-dir <transliteration model>  \
       --oov-file <oov file obtained in previous step>  \
       --input-file <translated file obtained in previous step>  \
       --output-file <output translated file>  \
       --input-extension <foreign> --output-extension <english>  \
       --language-model <path to language model>  \
       --decoder <moses executable>