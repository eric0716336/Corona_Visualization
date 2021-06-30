# install.packages("dplyr")
# install.packages("maps")
# install.packages("ggplot2")
# install.packages("ggthemes")
# install.packages("gganimate")
# install.packages("viridis")
# install.packages("viridisLite")
# install.packages("lubridate")
# install.packages("tibble")
library(maps)
library(dplyr)
library(scales)
library(viridisLite)
library(viridis)
library(maps) 
library(ggplot2)
library(ggthemes)
library(tibble)
library(lubridate)
library(gganimate)

# import data from dataset 'covid-19'
df.raw <- read.csv("C://Users/Eric/Downloads/111.csv")
names(df.raw)[5]<-"region"

for(i in nrow(df.raw):1){
  if(df.raw$region[i]=="Antigua_and_Barbuda"){
    df.raw$region[i]="Antigua and Barbuda"
  }
  if(df.raw$region[i]=="Bonaire, Saint Eustatius and Saba"){
    df.raw$region[i]="Bonaire"
  }
  if(df.raw$region[i]=="Bosnia_and_Herzegovina"){
    df.raw$region[i]="Bosnia and Herzegovina"
  }
  if(df.raw$region[i]=="British_Virgin_Islands"){
    df.raw$region[i]="Virgin Islands"
  }
  if(df.raw$region[i]=="Brunei_Darussalam"){
    df.raw$region[i]="Brunei"
  }
  if(df.raw$region[i]=="Burkina_Faso"){
    df.raw$region[i]="Burkina Faso"
  }
  if(df.raw$region[i]=="Congo"){
    df.raw$region[i]="Republic of Congo"
  }
  if(df.raw$region[i]=="Cape_Verde"){
    df.raw$region[i]="Cape Verde"
  }
  if(df.raw$region[i]=="Cayman_Islands"){
    df.raw$region[i]="Cayman Islands"
  }
  if(df.raw$region[i]=="Central_African_Republic"){
    df.raw$region[i]="Central African Republic"
  }
  if(df.raw$region[i]=="Costa_Rica"){
    df.raw$region[i]="Costa Rica"
  }
  if(df.raw$region[i]=="Cote_dIvoire"){
    df.raw$region[i]="Ivory Coast"
  }
  if(df.raw$region[i]=="Curaçao"){
    df.raw$region[i]="Curacao"
  }
  if(df.raw$region[i]=="Czechia"){
    df.raw$region[i]="Czech Republic"
  }
  if(df.raw$region[i]=="Democratic_Republic_of_the_Congo"){
    df.raw$region[i]="Democratic Republic of the Congo"
  }
  if(df.raw$region[i]=="Dominican_Republic"){
    df.raw$region[i]="Dominican Republic"
  }
  if(df.raw$region[i]=="El_Salvador"){
    df.raw$region[i]="El Salvador"
  }
  if(df.raw$region[i]=="Equatorial_Guinea"){
    df.raw$region[i]="Equatorial Guinea"
  }
  # if(df.raw$region[i]=="Eswatini"){
  #   df.raw$region[i]="None"
  # }
  if(df.raw$region[i]=="Falkland_Islands_(Malvinas)"){
    df.raw$region[i]="Falkland Islands"
  }
  if(df.raw$region[i]=="Faroe_Islands"){
    df.raw$region[i]="Faroe Islands"
  }
  if(df.raw$region[i]=="French_Polynesia"){
    df.raw$region[i]="French Polynesia"
  }
  if(df.raw$region[i]=="Guinea_Bissau"){
    df.raw$region[i]="Guinea-Bissau"
  }
  # if(df.raw$region[i]=="Holy_See"){
  #   df.raw$region[i]="None"
  # }
  if(df.raw$region[i]=="Isle_of_Man"){
    df.raw$region[i]="Isle of Man"
  }
  if(df.raw$region[i]=="Marshall_Islands"){
    df.raw$region[i]="Marshall Islands"
  }
  if(df.raw$region[i]=="New_Caledonia"){
    df.raw$region[i]="New Caledonia"
  }
  if(df.raw$region[i]=="New_Zealand"){
    df.raw$region[i]="New Zealand"
  }
  if(df.raw$region[i]=="North_Macedonia"){
    df.raw$region[i]="Macedonia"
  }
  if(df.raw$region[i]=="Northern_Mariana_Islands"){
    df.raw$region[i]="Northern Mariana Islands"
  }
  if(df.raw$region[i]=="Papua_New_Guinea"){
    df.raw$region[i]="Papua New Guinea"
  }
  if(df.raw$region[i]=="Puerto_Rico"){
    df.raw$region[i]="Puerto Rico"
  }
  if(df.raw$region[i]=="Saint_Kitts_and_Nevis"){ #harus gabung kitts and nevis in worlds
    df.raw$region[i]="Saint Kitts and Nevis"#this part need combined in world map (saint kitts and nevs are separated in world map)
  }
  if(df.raw$region[i]=="Saint_Lucia"){
    df.raw$region[i]="Saint Lucia"
  }
  if(df.raw$region[i]=="Saint_Vincent_and_the_Grenadines"){
    df.raw$region[i]="Saint Vincent and The Grenadines"
  }
  if(df.raw$region[i]=="Holy_See"){
    df.raw$region[i]="Vatican"
  }
  if(df.raw$region[i]=="San_Marino"){
    df.raw$region[i]="San Marino"
  }
  if(df.raw$region[i]=="Sao_Tome_and_Principe"){
    df.raw$region[i]="Sao Tome and Principe"
  }
  if(df.raw$region[i]=="Saudi_Arabia"){
    df.raw$region[i]="Saudi Arabia"
  }
  if(df.raw$region[i]=="Sierra_Leone"){
    df.raw$region[i]="Sierra Leone"
  }
  if(df.raw$region[i]=="Sint_Maarten"){
    df.raw$region[i]="Sint Maarten"
  }
  if(df.raw$region[i]=="Solomon_Islands"){
    df.raw$region[i]="Solomon Islands"
  }
  if(df.raw$region[i]=="South_Africa"){
    df.raw$region[i]="South Africa"
  }
  if(df.raw$region[i]=="South_Korea"){
    df.raw$region[i]="South Korea"
  }
  if(df.raw$region[i]=="South_Sudan"){
    df.raw$region[i]="South Sudan"
  }
  if(df.raw$region[i]=="Sri_Lanka"){
    df.raw$region[i]="Sri Lanka"
  }
  if(df.raw$region[i]=="Timor_Leste"){
    df.raw$region[i]="Timor-Leste"
  }
  if(df.raw$region[i]=="Trinidad_and_Tobago"){
    df.raw$region[i]="Trinidad and Tobago"
  }
  if(df.raw$region[i]=="Turks_and_Caicos_islands"){
    df.raw$region[i]="Turks and Caicos Islands"
  }
  if(df.raw$region[i]=="United_Arab_Emirates"){
    df.raw$region[i]="United Arab Emirates"
  }
  if(df.raw$region[i]=="United_Kingdom"){
    df.raw$region[i]="UK"
  }
  if(df.raw$region[i]=="United_Republic_of_Tanzania"){
    df.raw$region[i]="Tanzania"
  }
  if(df.raw$region[i]=="United_States_of_America"){
    df.raw$region[i]="USA"
  }
  if(df.raw$region[i]=="United_States_Virgin_Islands"){
    df.raw$region[i]="Virgin Islands"
  }
  if(df.raw$region[i]=="Wallis_and_Futuna"){
    df.raw$region[i]="Wallis and Futuna"
  }
  if(df.raw$region[i]=="Western_Sahara"){
    df.raw$region[i]="Western Sahara"
  }
  if(i-1>0 && !is.na(df.raw$notification_rate_per_100000_population_14[i-1])){
    df.raw$cases_weekly[i-1]= df.raw$cases_weekly[i]+df.raw$cases_weekly[i-1]
  }
}

#world map
worldMap <- map_data("world")

# print(nrow(worldMap))

for(i in 1:nrow(worldMap)){
  if(worldMap$region[i]=="Nevis" || worldMap$region[i]=="Saint Kitts"){
    worldMap$region[i]="Saint Kitts and Nevis"
  }
  if(worldMap$region[i]=="Trinidad" || worldMap$region[i]=="Tobago"){
    worldMap$region[i]="Trinidad and Tobago"
  }
  if(worldMap$region[i]=="Saint Vincent" || worldMap$region[i]=="Grenadines"){
    worldMap$region[i]="Saint Vincent and The Grenadines"
  }
  if(worldMap$region[i]=="Antigua" || worldMap$region[i]=="Barbuda"){
    worldMap$region[i]="Antigua and Barbuda"
  }
}

test_data <- df.raw[order(df.raw$year_week),]

#got max data
md <- max(test_data$cases_weekly)

unique_year_week= unique(test_data$year_week)

join_result <- left_join(worldMap, test_data)

join_result1 <- join_result %>% filter(year_week == "2020-07")
t= paste0("Total number of infected person week ",7)
plot_list[[7]] <- ggplot() + 
  geom_polygon(data = join_result1, aes(x=long, y = lat, fill=cases_weekly, group = group),
               color="white") + 
  coord_fixed(1.3) +
  scale_fill_gradientn(colors=c("white","yellow","red"),
                       values=rescale(c(0,10000,100000,1000000)),
                       limits=c(0,2000000), na.value="white")+
  labs(title=t)

plot_list= list()

world<-ggplot()+ geom_polygon(data = worldMap, aes(x=long, y = lat, group = group),fill="white")

for(i in (1:52)){
  join_result1 <- join_result %>%filter(year_week == unique_year_week[i])
  t= paste0("Year 2020 Week ",i)
  # print(unique_year_week[i])
  plot_list[[i]] <- world +
    geom_polygon(data = join_result1, aes(x=long, y = lat, fill=cases_weekly, group = group),
                 color="white") + 
    coord_fixed(1.3) +
    scale_fill_gradientn("# of infected cases",colors=c("white","yellow","red","brown"),
                         values=rescale(c(0,100,1000,10000,100000,1000000,10000000)),
                         limits=c(0,20000000), na.value="white")+
    labs(title=t)
}


library(animation)
animation::saveGIF(
  expr={
    for(i in (1:length(unique_year_week))){
      plot(plot_list[[i]])
    }
    
  },
  movie.name = "team_04.gif", ani.width= 800, ani.height= 600
)