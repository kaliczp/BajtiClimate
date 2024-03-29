## Telepítendő csomagok: xts
.First <- function(){Sys.setenv(TZ='UTC')}

## A meteorológiai állomás 10 perces elemi adatai, illetve az azokból képzett
## statisztikák innen tölthetők le:
## http://met.boreas.hu/erti2/
## A mérőrendszerek közül Sárvárt kell kiválasztani.

## Havi lekérdezéssel (adott hó 2-tól következő hó 1-ig) egészen
## gyorsan dolgozik. Kijelölve a tábázatot vágólapról szöveg fájlba
## szúrtam. Azt kell a létrehozott Raw könyvtárba másolni.
## Ugyan ezt napira is megcsináltam.

# Beolvasás
Svr.raw <- read.table("Raw/Sárvár10p2017novtol.txt", sep = "\t", skip = 1, stringsAsFactors = FALSE)

Svr.date <- as.POSIXct(Svr.raw$V1)

plot(Svr.date, Svr.raw$V2, type="l") #Hőm.
plot(Svr.date, Svr.raw$V3, type="l") #RH
plot(Svr.date, Svr.raw$V4, type="l") #Szél m/s
plot(Svr.date, Svr.raw$V11, type="l") #Csap. mm
plot(Svr.date, Svr.raw$V12, type="l") #Csap. int. mm/h
