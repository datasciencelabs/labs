library(XML)
html_tab = readHTMLTable('http://www.oecd.org/about/membersandpartners/list-oecd-member-countries.htm')
oecd_countries <- tolower(levels(html_tab[[2]][[2]]))
saveRDS(oecd_countries,file=file.path("data","oecd-countries.rds"))
