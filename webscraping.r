https://rpubs.com/haleyk2021/750468

install.packages("rvest")
library(rvest)
#retrieving the target web page
webpage<-read_html("https://www.imdb.com/search/title/?count=100&release_date=2016,2016&title_type=feature")
webpage
#selecting the list of product HTML elements
#using css selector to scrape rankings section
rank_data_html<-html_nodes(webpage,".text-primary")

#converting ranking data to text
rank_data<-html_text(rank_data_html)

Header<-html_nodes(webpage,'.header,a')
Header_text<-html_text(Header)
head(Header_text)

#using CSS selector to scrape title section
title_data_html<-html_nodes(webpage,".lister-item-header , a")
title_data_html

#convert title to text
title_data<-html_text(title_data_html)
title_data

#Titles we have
head(title_data)


#rating
rating_html<html_nodes(webpage,"strong")

