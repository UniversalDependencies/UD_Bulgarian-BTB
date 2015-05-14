TREEBANK DESCRIPTION
====================

The original treebank is HPSG-based. It consists of 215 000 tokens (over 15
000 sentences).
It consists of two parts: core set, which is a test suite for Bulgarian,
consisting of 1500 sentences, extracted from Bulgarian grammars; remaining
set, which comprizes isolated random sentences and running texts from
Bulgarian newspapers, literature and administrative documents.
All the texts were processed automatically at tokenization, morphological
and chunk level. Then, the full syntactic analysis were perfomed manually by
trained annotators.

The BTB-UD contains in its first release 9 405 sentences which exclude
ellipses and some rare phenomena.
The conversion was done semi-automatically, with the application of set of
rules and constraints for result consistency.

The rest of the sentences will be converted for the next release.

SPLIT DATA DESCRIPTION
======================

The files of the original treebank were concatenated in one file. Then:

- each tenth sentence was selected for the development set
- each first sentence was selected for the test part
- the rest sentences are in the training set

Remark: Each tenth sentence means the following: when the ID of the sentence
is divided by 10, the reminder is 0.
Each first sentence means the following: when the ID of the sentence is
divided by 10, the reminder is 1.

STATISTICS
==========
Number of Sentences: 9 405
Number of Tokens: 125 592

ACKNOWLEDGEMENTS AND REFERENCES
===============================

Acknowledgements
---------------

The original treebank was developed in a project (2001-2004), funded by the
Volkswagen Stiftung, Federal Republic of Germany under the Programme
"Cooperation with Natural and Engineering Scientists in Central and Eastern
Europe". The project was carried out mainly at IICT-BAS in tight cooperation
with researchers at the Seminar für Sprachwissenschaft (SfS),
Eberhard-Karls-Universität, Tübingen, Germany. Link:
http://bultreebank.org/
The conversion of BulTreeBank into Universla Dependency format was supported
by the EU Project QTLeap. Link: http://qtleap.eu/


References
----------

Petya Osenova and Kiril Simov. BTB-TR05: BulTreeBank Stylebook. BulTreeBank
Project Technical Report № 05. 2004. Link:
http://www.bultreebank.org/TechRep/BTB-TR05.pdf

Kiril Simov and Petya Osenova. Practical Annotation Scheme for an HPSG
Treebank of Bulgarian. In: Proc. of the 4th International Workshop on
Linguistically Interpreteted Corpora (LINC-2003), Budapest, Hungary. 2003.

Kiril Simov, Gergana Popova, Petya Osenova. HPSG-based syntactic treebank of
Bulgarian (BulTreeBank). In: "A Rainbow of Corpora: Corpus Linguistics and
the Languages of the World", edited by Andrew Wilson, Paul Rayson, and Tony
McEnery; Lincom-Europa, Munich 2002, pp. 135-142.

Kiril Simov, Petya Osenova and Milena Slavcheva. BTB-TR03: BulTreeBank
Morphosyntactic Tagset. BulTreeBank Project Technical Report № 03. 2004

Kiril Simov, Petya Osenova, Alexander Simov, Milen Kouylekov. Design and
Implementation of the Bulgarian HPSG-based Treebank. In Erhard Hinrichs and
Kiril Simov, editors, Journal of Research on Language and Computation,
Special Issue, Kluwer Academic Publishers, pp. 495-522.
