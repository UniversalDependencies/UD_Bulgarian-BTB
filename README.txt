# Summary

UD_Bulgarian-BTB is based on the HPSG-based BulTreeBank,
created at the Institute of Information and Communication Technologies,
Bulgarian Academy of Sciences.
The original consists of 215,000 tokens (over 15,000 sentences).

All the texts were processed automatically at tokenization, morphological
and chunk level. Then, the full syntactic analysis were perfomed manually by
trained annotators.

# Introduction

The UD_Bulgarian-BTB consists of 156 149 tokens (11,138 sentences).
This subset of BulTreeBank excludes ellipses and some rare phenomena.
The conversion was done semi-automatically by Kiril Simov,
with the application of set of rules and constraints for result consistency.

The rest of the sentences will be converted for the next releases.
The original version is freely available for research upon request.

# Acknowledgements

The original treebank was developed in a project (2001-2004), funded by the
Volkswagen Stiftung, Federal Republic of Germany under the Programme
"Cooperation with Natural and Engineering Scientists in Central and Eastern
Europe". The project was carried out mainly at IICT-BAS in tight cooperation
with researchers at the Seminar für Sprachwissenschaft (SfS),
Eberhard-Karls-Universität, Tübingen, Germany. Link:
http://bultreebank.org/
The conversion of BulTreeBank into Universal Dependency format was supported
by the EU Project QTLeap. Link: http://qtleap.eu/

We would like to thank all our colleagues that contributed to the annotation of the original treebank:
Elisaveta Balabanova, Dimitar Dojkov, Maggie Ivanchukova, Sia Kolkovska, Milena Slavcheva, Petya Osenova.
We also would like to thank our annotator and validator to the treebank UD version: Stanislava Kancheva.

# References

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

## BibTeX

  @techreport{OsenovaSimov2004,
    author = {Petya Osenova and Kiril Simov},
    title = {BTB-TR05: BulTreeBank Stylebook ą 05},
    year = {2004},
    url = {http://www.bultreebank.org/TechRep/BTB-TR05.pdf}
   }

  @InProceedings{SimovOsenova2003,
    author = {Kiril Simov and Petya Osenova},
    title = {Practical Annotation Scheme for an HPSG Treebank of Bulgarian},
    booktitle = {Proceedings of the 4th International Workshop on Linguistically Interpreteted Corpora (LINC-2003)},
    year = {2003},
    pages     = {17--24},
   }

  @incollection{SimovOsPo2002,
   author = {Kiril Simov and Gergana Popova and Petya Osenova},
   title = {HPSG-based syntactic treebank of Bulgarian (BulTreeBank)},
   booktitle = {A Rainbow of Corpora: Corpus Linguistics and the Languages of the World},
   editor = {Andrew Wilson, Paul Rayson and Tony McEnery},
   publisher = {Lincom-Europa},
   pages = {135--142},
   year = {2002},
  }

  @techreport{SimovOseSlav2004,
    author = {Kiril Simov and Petya Osenova and Milena Slavcheva},
    title = {BTB-TR03: BulTreeBank Morphosyntactic Tagset. BulTreeBank Project Technical Report ą 03},
    year = {2004},
    url = {http://www.bultreebank.org/TechRep/BTB-TR03.pdf}
   }

  @article{SimOsSimKo2005,
   author = {Kiril Simov and Petya Osenova and Alexander Simov and Milen Kouylekov},
   title = {Design and Implementation of the Bulgarian HPSG-based Treebank},
   journal = {Journal of Research on Language and Computation. Special Issue},
   year = {2005},
   pages = {495--522},
   publisher = {Kluwer Academic Publisher},
  }

# Domains and data split

The domains in the treebanks are as follows: Bulgarian newspapers (81 %),
fiction (16 %) and administrative documents (3 %).
The files of the original treebank were concatenated in one file. Then:

- each tenth sentence was selected for the development set
- each first sentence was selected for the test part
- the rest sentences are in the training set

Remark: Each tenth sentence means the following: when the ID of the sentence
is divided by 10, the reminder is 0.
Each first sentence means the following: when the ID of the sentence is
divided by 10, the reminder is 1.


Changelog
---------

2.2 -> 2.3

Automatic addition of enhanced dependencies.

* 2018-04-15 v2.2
  * Repository renamed from UD_Bulgarian to UD_Bulgarian-BTB.

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



<pre>
=== Machine-readable metadata (DO NOT REMOVE!) ================================
Data available since: UD v1.1
License: CC BY-NC-SA 3.0
Includes text: yes
Genre: news legal fiction
Lemmas: converted from manual
UPOS: converted from manual
XPOS: manual native
Features: converted from manual
Relations: converted from manual
Contributors: Simov, Kiril; Osenova, Petya; Popel, Martin
Contributing: elsewhere
Contact: kivs@bultreebank.org, petya@bultreebank.org
===============================================================================
</pre>
