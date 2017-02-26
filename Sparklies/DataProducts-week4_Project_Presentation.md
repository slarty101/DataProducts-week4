<style>
.reveal h1, .reveal h2, .reveal h3 {
  word-wrap: normal;
  -moz-hyphens: none;
}
.small-code pre code {
  font-size: 0.8em;
}
</style>

DataProducts-week4 Project Presentation
========================================================
author:Simon West 
date: 25th February 2017
autosize: true



Introduction
========================================================

Gentlemen, in the words of Beyonce - If you liked it then you should have put a ring on it!  <a href="https://www.youtube.com/watch?v=4m1EFMoRFvY">Linky</a>. And this is the shiny (or sparkly if you prefer) application to help you do just that! The Diamond Selector(TM) shiny application helps you to choose an appropriate diamond for the light of your life based on the funds your willing to part with and the reaction you want to receive!


The Diamond Selector
========================================================

Our highly skilled development engineers have carefully selected a subset of the diamond dataset (from the ggplot2 package) and constructed this simple application to allow you to select a suitable stone for your new soulmate. Simply use the sliders to select how much you're willing to spend and then use the checkboxes to select the response (or responses) you would like her to give you.



Some of our carefully crafted code and selected data.
========================================================
class:small-code


```r
#cut down the datset to our required fields
sparklies <- diamonds[ ,c(1:4,7)]
#and take a sample
set.seed(123)
sparklies <- sparklies[sample(nrow(sparklies), 1000), ]
```



```r
str(sparklies)
```

```
Classes 'tbl_df', 'tbl' and 'data.frame':	1000 obs. of  5 variables:
 $ carat  : num  1.03 0.5 1.74 0.51 0.7 0.71 0.32 0.9 0.32 1.52 ...
 $ cut    : Ord.factor w/ 5 levels "Fair"<"Good"<..: 4 1 3 5 5 5 3 1 5 4 ...
 $ color  : Ord.factor w/ 7 levels "D"<"E"<"F"<"G"<..: 4 1 5 1 5 5 2 4 4 4 ...
 $ clarity: Ord.factor w/ 8 levels "I1"<"SI2"<"SI1"<..: 4 3 2 4 3 8 3 1 6 4 ...
 $ price  : int  6214 1323 10086 1882 2294 3190 672 1939 708 12958 ...
```


Links
========================================================
The code for the Diamond Selector(TM) shiny application is available <a href="https://github.com/slarty101/DataProducts-week4/tree/master/Sparklies">here</a> and includes both the server.r, ui.r and this presentation.

The Diamond Selector shiny application is available <a href="https://slarty101.shinyapps.io/diamond_selector/">here</a>.

