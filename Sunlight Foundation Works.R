
#install.packages("govdat")
install.packages("devtools")
library(devtools)

install_github("govdat", "cocteau")
install.packages("XML")
install.packages("rjson")

library(govdat)


senate = read.csv("http://compute-cuj.org/data2/day1/nyt_senate.csv", as.is=TRUE)

for(i in 1:nrow(senate)){
  tmp = sll_cw_phrases("legislator",senate$id[i],key="ed33f4ec86894758b4b622f273b52240")
  print(paste(senate$last_name[i],tmp$ngram[1]))
}

??sll_cw_phrases

sll_cw_phrases("legislator", "B001261", key = "ed33f4ec86894758b4b622f273b52240")
