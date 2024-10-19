#import "@preview/rubber-article:0.1.0": *

#let title = "Notes - Kryptographie I - WS 2024/2025"
#let author = "Johannes Dittrich"

#show: article.with(
  lang: "de",
  eq-numbering: none,
  page-numbering: "1",
  page-numbering-align: right,
  heading-numbering: none,
)

#set document(
  title: title,
  author: author
)

#maketitle(
  title: title,
  authors: (author,),
  date: datetime.today().display("[day].[month].[year]"),
)

#include "caesar.typ"
#include "masc.typ"
