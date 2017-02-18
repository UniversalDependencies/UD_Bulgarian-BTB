#!/bin/bash

for a in train dev test; do
    ./fix-sent_id.pl bg-ud-$a.conllu | udapy -s ud.bg.RemoveDotAfterAbbr ud.GoeswithFromText keep_lemma=1 ud.Convert1to2 skip=nmod > ../bg-ud-$a.conllu
done

cat ../bg-ud-{train,dev,test}.conllu | udapy -HAMC ud.MarkBugs > bugs.html
