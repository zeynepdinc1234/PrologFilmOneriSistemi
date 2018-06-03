film(aile,goodbyelenin,wolfgangbecker).
film(aile,unutursamfisilda,caganirmak).
film(aile,dedeminisanlari,caganirmak).
film(aile,gulengozler,x).
film(aile,neseligunler,orhanaksoy).
film(aile,aileserefi,orhanaksoy).
film(aile,canýmkardesim,ertemegilmez).

film(aksiyon,batmankarasovalye,christophernolan).
film(aksiyon,vforendetta,jamesmcteigue).
film(aksiyon,soysuzlarcetesi,tarantino).
film(aksiyon,hizliveofkeliserisi,justinlin).

film(bilimkurgu,gelecegedonus1,robertzemeckis).
film(bilimkurgu,gelecegedonus2,robertzemeckis).
film(bilimkurgu,maymunlarcehennemi1,franklinjschaffner).
film(bilimkurgu,maymunlarcehennemi2,franklinjschaffner).
film(bilimkurgu,maymunlarcehennemi3,franklinjschaffner).
film(bilimkurgu,maymunlarcehennemi4,franklinjschaffner).
film(bilimkurgu,maymunlarcehennemi5,franklinjschaffner).
film(bilimkurgu,inception,christophernolan).
film(bilimkurgu,lucy,lucbesson).
film(bilimkurgu,yesilyol,frankdarabont).
film(bilimkurgu,starwars1,georgelucas).
film(bilimkurgu,starwars2,georgelucas).
film(bilimkurgu,starwars3,georgelucas).
film(bilimkurgu,starwars4,georgelucas).
film(bilimkurgu,starwars5,irvinkershner).
film(bilimkurgu,starwars6,richardmarquand).
film(bilimkurgu,starwars7,jjabrams).
film(bilimkurgu,starwars8,rianjohnson).


film(biyografik,akiloyunlari,ronhoward).
film(biyografik,yapayoyunenigma,mortentyldum).
film(biyografik,veda,zulfulivaneli).
film(biyografik,istanbulkanatlariminaltinda,mustafaaltioklar).
film(biyografik,agora,alejandroamenabar).

film(dram,bessehir,onurunlu).
film(dram,gemide,serdarakar).
film(dram,polis,onurunlu).
film(dram,aileserefi,orhanaksoy).
film(dram,canýmkardesim,ertemegilmez).
film(dram,agora,alejandroamenabar).
film(dram,celaltanveailesininasiriaciklihikayesi,onurunlu).

film(fantastik,yuzuklerinefendisiserisi,peterjackson).
film(fantastik,harrypotter1,chriscolumbus).
film(fantastik,harrypotter2,chriscolumbus).
film(fantastik,harrypotter3,alfonsocuaron).
film(fantastik,harrypotter4,mikenewell).
film(fantastik,harrypotter5,davidyates).
film(fantastik,harrypotter6,davidyates).
film(fantastik,harrypotter7,davidyates).
film(fantastik,harrypotter8,davidyates).

film(gerilim,thelodger,alfredhitchcock).
film(gerilim,the39steps,alfredhitchcock).
film(gerilim,theladyvanishes,alfredhitchcock).
film(gerilim,rebecca,alfredhitchcock).
film(gerilim,shadowofadoubt,alfredhitchcock).
film(gerilim,lalelidebirazize,kudretsabanci).
film(gerilim,celaltanveailesininasiriaciklihikayesi,onurunlu).

film(komedi,hababamsinifimerhaba,ertemegilmez).
film(komedi,neseligunler,orhanaksoy).
film(komedi,ucidiot,rajkumarhirani).
film(komedi,maske,chuckrussell).
film(komedi,arog,cemyilmaz).
film(komedi,gora,cemyilmaz).
film(komedi,arifv216,cemyilmaz).
film(komedi,ailearasinda,gulsebirsel).

main:-write("Modunuz nedir? \t 1.Mutlu \t 2.Uzgun \t 3.Hayalperest \t 4.Gergin \t "),read(Mod),
write("Yönetmen tercihiniz var mi? 1. Evet 2. Hayir \t"),read(Yonetmentercihi),
duygu(Mod),
Yonetmentercihi==1,write(film(_,_,X)).

tur(X):-film(X,Y,Z),write(X,Y,Z).
duygu(Mod):-Mod==1,tur(komedi);tur(aile).
duygu(Mod):-Mod==2,tur(dram);tur(gerilim).
duygu(Mod):-Mod==3:-tur(bilimkurgu);tur(biyografik).
duygu(Mod):-Mod==4,tur(gerilim);tur(aksiyon);tur(dram).

kimle(aile):-tur(aile).
kimle(arkadas):-tur(aksiyon);fail.
kimle(_):-tur(komedi).

bul(X,Y):-film(X,Z,Y),write(film(X,Z,Y)).

