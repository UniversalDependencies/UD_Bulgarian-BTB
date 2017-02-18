TREEBANK DESCRIPTION
====================

The original treebank is HPSG-based. It consists of 215 000 tokens
(over 15 000 sentences).
It consists of two parts: core set, which is a test suite for Bulgarian,
consisting of 1500 sentences, extracted from Bulgarian grammars; remaining
set, which comprizes isolated random sentences and running texts from
Bulgarian newspapers, literature and administrative documents.
All the texts were processed automatically at tokenization, morphological
and chunk level. Then, the full syntactic analysis were perfomed manually by
trained annotators.

The BTB-UD contains in its third release 11 138 sentences which exclude
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


Changelog
---------
1.4 -> 2.0
- manual improvements of the annotation (e.g. more features converted from the original treebank)
- automatic conversion to UDv2 guidelines using Udapi (http://udapi.github.io/) ud.Convert1to2
- original texts added, extra PUNCT nodes after abbreviations deleted (ud.bg.RemoveDotAfterAbbr)
- goeswith nodes added to match better the original texts (ud.GoeswithFromText keep_lemma=1)
- sent_id now encodes both the original document and sentence number, # newdoc added
- test set omitted from the UDv2.0 official release because of CoNLL 2017 shared task.

1.3 -> 1.4
- corrections with the use of copula relation: it was extended and applied to sentences that consist of the auxiliary verb ‘to be’, a noun and a subordinate sentence. In this case noun is the root, auxiliary verb is the dependent, attached with a cop relation, and the subordinate sentence is the subject.
- extended use of the xcomp relation– after certain verbs and in the cases when there are: direct object and  a subordinate sentence that is a complement, namely - xcomp;
- extended use of the nsubjpass relation.

1.2 -> 1.3
- appositions (the wrongly annotated vocatives and appositions were corrected as nmod)
- xcomp (the ccomp relations were checked for control structures and re-annotated as xcomp)
- nsubjpass and csubjpass in se-passives were annotated
- cop relation direction was corrected
- the relation between nouns and short possessive pronouns was re-annotated from case to det
- changed the feature VerbForm=Fin to VerbForm=Part for participles
- We also have changed the feature VerbForm=Fin to VerbForm=Part for participles.

1.1 -> 1.2
- Addition of new data
- Adding se-passives
- Correcting dobj and iobj instead of expletive in the cases when there is no doubling.
- Correcting the secondary predicates were re-considered from dobj to xcomp (Te ya naznachiha direktor.)
- Adding auxpass relation


Documentation status: partial
Data source: semi-automatic
Data available since: UD v1.1
License: CC BY-NC-SA 3.0
Genre: news legal fiction misc
Contributors: Simov, Kiril; Osenova, Petya; Popel, Martin
Contact: kivs@bultreebank.org, petya@bultreebank.org