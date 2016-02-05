library(XML)
html_tab = readHTMLTable('http://www.oecd.org/about/membersandpartners/list-oecd-member-countries.htm')
tmp <- tolower(levels(html_tab[[2]][[2]]))[-1]
tmp <- strsplit(oecd_countries," ")
oecd_countries <- sapply(tmp, function(x){
  paste(Hmisc::capitalize(x), collapse=" ")
})
saveRDS(oecd_countries,file=file.path("data","oecd-countries.rds"))

