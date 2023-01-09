"DPProjektTeaJelavic" by Tea Jelavic

Prvi kat is a room. "Dobrodošli u Shopping kraljicu i City Centar. Vaš shopping može započeti! Nalazite se na prvom katu. Na prvom se katu nalaze drogerije. Istočno je Dm, a zapadno Bipa. Ako želite ići na drugi kat, popnite se skalama sjeverno, a za izlaz iz centra idite na jug. Za početak pročitajte Vaš zadatak na Shopping kraljica info pultu."

Shopping kraljica info pult is here.
Description of Shopping kraljica info pult is "Vaš zadatak je osmisliti i kupiti novogodišnji look za kućni party kod Vaših prijatelja. To jest: prigodan makeup, outfit i cipele. Raspolažete s fondom od 200 €. Ispred vas se nalazi koverta u kojoj se on nalazi. Otvorite je i uzmite i preuzmite svoj fond.  Kada završite sa svojim shoppingom, vratite se do ovog info pulta i pritisnite gumb završetka. Sretno :) !"
Understand "info pult" and "pult" as Shopping kraljica info pult.
Koverta is here.
Koverta is scenery.
The description of Koverta is "Otvori me i preuzmi svoj fond!"
Koverta is openable.
Koverta is closed.

Gumb završetka is here.
Gumb završetka is scenery.
The description of Gumb završetka is "Pritisni me na kraju shoppinga!"
Understand "gumb" as Gumb završetka.
Instead of pushing Gumb završetka:
	say "Pritisli ste gumb završetka što znači da ste završili svoj shopping. Vaš novogodišnji party look se sastoji od [a list of things which are not Fond carried by the player].";
	if S is 1 and G is 1 and D is 1 and C is 1:
		end the story saying "Čestitamo. Kupili ste sve potrebno da u Novu godinu uđete lijepo sređeni. Uspjeli ste ostati u okvirima zadanog fonda i još sačuvati [F] €. Jako nam se sviđa vaš outfit. Vi ste naša novogodišnja Shopping kraljica!";
	otherwise:
		end the story saying "Nažalost, niste uspješno savladali novogodišnji Shopping kraljica zadatak. Više sreće drugi put!"

Fond is in Koverta.
The the description of fond is "Uzmi me!"
Fond can be skupljen or neskupljen.
Fond is neskupljen.
F is a number variable.
F is 0.
R is a number variable.
R is 0.
P is a number variable.
P is 0.
Instead of taking Fond:
	if Fond is skupljen:
		continue the action;
	otherwise:
		now P is 200;
		now F is F plus P;
		now Fond is skupljen;
		now the description of fond is "[F] €.";
		now the description of Prvi kat is "Nalazite se na prvom katu. Na prvom se katu nalaze drogerije. Istočno je Dm, a zapadno Bipa. Ako želite ići na drugi kat, popnite se skalama sjeverno, a za izlaz iz centra idite na jug.";
		continue the action.

Skale12 is north of Prvi kat. "Vozite se pokretnim skalama. Idite gore ako se želite popeti ili dole ako se želite spustiti."

Vani is south of Prvi kat. "Izašli ste iz City Centra. Jeste li zazavršili Vašu trgovinu? Ako ne, vratite se nazad i trg u dućane, a ako jeste, vratite se do info pulta i pritisnute gumb završetka."

S is a number variable.
S is 0.
G is a number variable.
G is 0.
D is a number variable.
D is 0.
C is a number variable.
C is 0.

Dm is east of Prvi kat. "Ušli ste u dućan Dm."
Sjajilo is here.
Sjajilo can be kupljeno or nekupljeno.
Sjajilo is nekupljeno.
The description of Sjajilo is "Loreal Nude princess 213 gloss, 15 €."
Labelo is here.
Labelo can be kupljeno or nekupljeno.
Labelo is nekupljeno.
The description of Labelo is "Balea Pink rose lip balm, 3 €."
Instead of taking Sjajilo:
	if Sjajilo is nekupljeno:
		say "Moraš prvo platiti sjajilo na kasi!";
	otherwise:
		now S is 1;
		continue the action.
Instead of taking Labelo:
	if Labelo is nekupljeno:
		say "Moraš prvo platiti labelo na kasi!";
	otherwise:
		now S is 1;
		continue the action.
Dm kasa is here. "Pozdrav. Molim Vas stavite svoj artikl na kasu da vam ga mogu naplatiti."
Dm kasa is scenery.
Dm kasa can be sSjajilom, sLabelom or DmPrazna.
Dm kasa is DmPrazna.
Instead of putting sjajilo on Dm kasa:
	now Dm kasa is sSjajilom;
	say "Račun za sjajilo je 15 €. Molim Vas stavite fond na kasu.".
Instead of putting labelo on Dm kasa:
	now Dm kasa is sLabelom;
	say "Račun za labelo je 3 €. Molim Vas stavite fond na kasu.".
Instead of putting fond on Dm kasa:
	if Dm kasa is DmPrazna:
		say "Nemate ništa za platiti.";
	if Dm kasa is sSjajilom:
		Now R is 15;
		if F is less than R:
			say "Nemate dovoljno novaca za kupiti sjajilo!";
			now Dm kasa is DmPrazna;
		otherwise:
			now F is F minus R;
			now the description of fond is "[F] €";
			now sjajilo is kupljeno;
			now Dm kasa is DmPrazna;
			say "Hvala Vam na kupnji i doviđenja. NE ZABORAVITE uzeti sjajilo! Preostalo Vam je još [F] €.";
	if Dm kasa is sLabelom:
		Now R is 3;
		if F is less than R:
			say "Nemate dovoljno novaca za kupiti labelo!";
			now Dm kasa is DmPrazna;
		otherwise:
			now F is F minus R;
			now the description of fond is "[F] €";
			now labelo is kupljeno;
			now Dm kasa is DmPrazna;
			say "Hvala Vam na kupnji i doviđenja. NE ZABORAVITE uzeti labelo! Preostalo Vam je još [F] €.";

Bipa is west of Prvi kat. "Ušli ste u dućan Bipa."
Maskara is here.
Maskara can be kupljeno or nekupljeno.
Maskara is nekupljeno.
The description of maskara is "Lancome Dark magic, 20 €."
Sjenilo is here.
Sjenilo can be kupljeno or nekupljeno.
Sjenilo is nekupljeno.
The description of sjenilo is "Benefit Nude palette, 32 €."
Instead of taking Maskara:
	if Maskara is nekupljeno:
		say "Moraš prvo platiti maskaru na kasi!";
	otherwise:
		now S is 1;
		continue the action.
Instead of taking Sjenilo:
	if Sjenilo is nekupljeno:
		say "Moraš prvo platiti sjenilo na kasi!";
	otherwise:
		now S is 1;
		continue the action.
Bipa kasa is here. "Pozdrav. Molim Vas stavite svoj artikl na kasu da vam ga mogu naplatiti."
Bipa kasa is scenery.
Bipa kasa can be sSjenilom, sMaskarom or BipaPrazna.
Bipa kasa is BipaPrazna.
Instead of putting sjenilo on Bipa kasa:
	now Bipa kasa is sSjenilom;
	say "Račun za sjenilo je 20 €. Molim Vas stavite fond na kasu.".
Instead of putting maskara on Bipa kasa:
	now Bipa kasa is sMaskarom;
	say "Račun za maskaru je 32 €. Molim Vas stavite fond na kasu.".
Instead of putting fond on Bipa kasa:
	if Bipa kasa is BipaPrazna:
		say "Nemate ništa za platiti.";
	if Bipa kasa is sSjenilom:
		Now R is 20;
		if F is less than R:
			say "Nemate dovoljno novaca za kupiti sjenilo!";
			now Bipa kasa is BipaPrazna;
		otherwise:
			now F is F minus R;
			now the description of fond is "[F] €";
			now sjenilo is kupljeno;
			now Bipa kasa is BipaPrazna;
			say "Hvala Vam na kupnji i doviđenja. NE ZABORAVITE uzeti sjenilo! Preostalo Vam je još [F] €.";
	if Bipa kasa is sMaskarom:
		Now R is 32;
		if F is less than R:
			say "Nemate dovoljno novaca za kupiti maskaru!";
			now Bipa kasa is BipaPrazna;
		otherwise:
			now F is F minus R;
			now the description of fond is "[F] €";
			now maskara is kupljeno;
			now Bipa kasa is BipaPrazna;
			say "Hvala Vam na kupnji i doviđenja. NE ZABORAVITE uzeti maskaru! Preostalo Vam je još [F] €.";

Drugi kat is north of Skale12. "Popeli ste se na drugi kat. Na drugom se katu nalaze trgovine s odjećom. Istočno je Zara, a zapadno Mango. Ako želite ići na treći kat, popnite se skalama sjeverno, a ako želite ići na prvi kat idite na jug."

Skale23 is north of Drugi kat. "Vozite se pokretnim skalama. Idite gore ako se želite popeti ili dole ako se želite spustiti."

Zara is east of Drugi kat. "Ušli ste u dućan Zara."
Hlace is here.
Hlace can be kupljeno or nekupljeno.
Hlace is nekupljeno.
The description of hlace is "Crne slim fit hlace, 35 €."
Haljina is here.
Haljina can be kupljeno or nekupljeno.
Haljina is nekupljeno.
The description of haljina is "Crvena party haljina, 41 €."
Instead of taking Hlace:
	if Hlace is nekupljeno:
		say "Moraš prvo platiti hlace na kasi!";
	otherwise:
		now D is 1;
		continue the action.
Instead of taking Haljina:
	if Haljina is nekupljeno:
		say "Moraš prvo platiti haljinu na kasi!";
	otherwise:
		now G is 1;
		now D is 1;
		continue the action.
Zara kasa is here. "Pozdrav. Molim Vas stavite svoj artikl na kasu da vam ga mogu naplatiti."
Zara kasa is scenery.
Zara kasa can be sHlacama, sHaljinom or ZaraPrazna.
Zara kasa is ZaraPrazna.
Instead of putting hlace on Zara kasa:
	now Zara kasa is sHlacama;
	say "Račun za hlace je 35 €. Molim Vas stavite fond na kasu.".
Instead of putting haljina on Zara kasa:
	now Zara kasa is sHaljinom;
	say "Račun za haljinu je 41 €. Molim Vas stavite fond na kasu.".
Instead of putting fond on Zara kasa:
	if Zara kasa is ZaraPrazna:
		say "Nemate ništa za platiti.";
	if Zara kasa is sHlacama:
		Now R is 35;
		if F is less than R:
			say "Nemate dovoljno novaca za kupiti hlace!";
			now Zara kasa is ZaraPrazna;
		otherwise:
			now F is F minus R;
			now the description of fond is "[F] €";
			now hlace is kupljeno;
			now Zara kasa is ZaraPrazna;
			say "Hvala Vam na kupnji i doviđenja. NE ZABORAVITE uzeti hlace! Preostalo Vam je još [F] €.";
	if Zara kasa is sHaljinom:
		Now R is 41;
		if F is less than R:
			say "Nemate dovoljno novaca za kupiti haljinu!";
			now Zara kasa is ZaraPrazna;
		otherwise:
			now F is F minus R;
			now the description of fond is "[F] €";
			now haljina is kupljeno;
			now Zara kasa is ZaraPrazna;
			say "Hvala Vam na kupnji i doviđenja. NE ZABORAVITE uzeti haljinu! Preostalo Vam je još [F] €.";

Mango is west of Drugi kat. "Ušli ste u dućan Mango."
Kosulja is here.
Kosulja can be kupljeno or nekupljeno.
Kosulja is nekupljeno.
The description of kosulja is "Bijela kosulja, 23 €."
Minica is here.
Minica can be kupljeno or nekupljeno.
Minica is nekupljeno.
The description of minica is "Roza tweed minica, 32 €."
Instead of taking Kosulja:
	if Kosulja is nekupljeno:
		say "Moraš prvo platiti kosulju na kasi!";
	otherwise:
		now G is 1;
		continue the action.
Instead of taking Minica:
	if Minica is nekupljeno:
		say "Moraš prvo platiti minicu na kasi!";
	otherwise:
		now D is 1;
		continue the action.
Mango kasa is here. "Pozdrav. Molim Vas stavite svoj artikl na kasu da vam ga mogu naplatiti."
Mango kasa is scenery.
Mango kasa can be sKosuljom, sMinicom or MangoPrazna.
Mango kasa is MangoPrazna.
Instead of putting kosulja on Mango kasa:
	now Mango kasa is sKosuljom;
	say "Račun za kosulju je 23 €. Molim Vas stavite fond na kasu.".
Instead of putting minica on Mango kasa:
	now Mango kasa is sMinicom;
	say "Račun za minicu je 32 €. Molim Vas stavite fond na kasu.".
Instead of putting fond on Mango kasa:
	if Mango kasa is MangoPrazna:
		say "Nemate ništa za platiti.";
	if Mango kasa is sKosuljom:
		Now R is 23;
		if F is less than R:
			say "Nemate dovoljno novaca za kupiti kosulju!";
			now Mango kasa is MangoPrazna;
		otherwise:
			now F is F minus R;
			now the description of fond is "[F] €";
			now kosulja is kupljeno;
			now Mango kasa is MangoPrazna;
			say "Hvala Vam na kupnji i doviđenja. NE ZABORAVITE uzeti kosulju Preostalo Vam je još [F] €.";
	if Mango kasa is sMinicom:
		Now R is 32;
		if F is less than R:
			say "Nemate dovoljno novaca za kupiti minicu!";
			now Mango kasa is MangoPrazna;
		otherwise:
			now F is F minus R;
			now the description of fond is "[F] €";
			now minica is kupljeno;
			now Mango kasa is MangoPrazna;
			say "Hvala Vam na kupnji i doviđenja. NE ZABORAVITE uzeti minicu! Preostalo Vam je još [F] €.";

Treci kat is north of Skale23. "Popeli ste se na treći kat. Na trecem se katu nalaze trgovine s obućom. Istočno je Shooster, sjeverno Mass, a zapadno Buzz. Ako želite ići na drug kat idite na jug."

Kutija iznenađenja is here. "Na sredini se nalazi kutija iznenađenja."
The description of Kutija iznenađenja is "Otvori kutiju jer te unutra čeka neko iznenađenje!"
Understand "kutija" as Kutija iznenađenja.
Kutija iznenađenja is openable.
Kutija iznenađenja is closed.
Poklon bon od 10 eura is in Kutija iznenađenja.
Understand "poklon bon" and "bon" as Poklon bon od 10 eura.
The description of Poklon bon od 10 eura is "Poklon bon od 10 €. Uzmi me!"
Poklon bon od 10 eura can be bonSkupljen or bonNeskupljen.
Poklon bon od 10 eura is bonNeskupljen.
Instead of taking Poklon bon od 10 eura:
	Now P is 10;
	if Poklon bon od 10 eura is bonNeskupljen:
		now F is F plus P;
		now the description of fond is "[F] €";
		now Poklon bon od 10 eura is bonSkupljen;
		now description of Poklon bon od 10 eura is "Poklon bon od 10 €.";
	otherwise:
		say "Već ste preuzeli poklon bon".

Mass is north of Treci kat. "Ušli ste u dućan Mass."
Salonke is here.
Salonke can be kupljeno or nekupljeno.
Salonke is nekupljeno.
The description of salonke is "Bež lakirane salonke, 42 €."
Spagerice is here.
Spagerice can be kupljeno or nekupljeno.
Spagerice is nekupljeno.
The description of spagerice is "Roze špagerice, 31 €."
Instead of taking Salonke:
	if Salonke is nekupljeno:
		say "Moraš prvo platiti salonke na kasi!";
	otherwise:
		now C is 1;
		continue the action.
Instead of taking Spagerice:
	if Spagerice is nekupljeno:
		say "Moraš prvo platiti spagerice na kasi!";
	otherwise:
		now C is 1;
		continue the action.
Mass kasa is here. "Pozdrav. Molim Vas stavite svoj artikl na kasu da vam ga mogu naplatiti."
Mass kasa is scenery.
Mass kasa can be sSalonkama, sSpagericama or MassPrazna.
Mass kasa is MassPrazna.
Instead of putting salonke on Mass kasa:
	now Mass kasa is sSalonkama;
	say "Račun za salonke je 42 €. Molim Vas stavite fond na kasu.".
Instead of putting spagerice on Mass kasa:
	now Mass kasa is sSpagericama;
	say "Račun za spagerice je 31 €. Molim Vas stavite fond na kasu.".
Instead of putting fond on Mass kasa:
	if Mass kasa is MassPrazna:
		say "Nemate ništa za platiti.";
	if Mass kasa is sSalonkama:
		Now R is 42;
		if F is less than R:
			say "Nemate dovoljno novaca za kupiti salonke!";
			now Mass kasa is MassPrazna;
		otherwise:
			now F is F minus R;
			now the description of fond is "[F] €";
			now salonke is kupljeno;
			now Mass kasa is MassPrazna;
			say "Hvala Vam na kupnji i doviđenja. NE ZABORAVITE uzeti salonke! Preostalo Vam je još [F] €.";
	if Mass kasa is sSpagericama:
		Now R is 31;
		if F is less than R:
			say "Nemate dovoljno novaca za kupiti spagerice!";
			now Mass kasa is MassPrazna;
		otherwise:
			now F is F minus R;
			now the description of fond is "[F] €";
			now spagerice is kupljeno;
			now Mass kasa is MassPrazna;
			say "Hvala Vam na kupnji i doviđenja. NE ZABORAVITE uzeti spagerice! Preostalo Vam je još [F] €.";

Shooster is east of Treci kat. "Ušli ste u dućan Shooster."
Nike tenisice is here.
Nike tenisice can be kupljeno or nekupljeno.
Nike tenisice is nekupljeno.
The description of Nike tenisice is "Bijele Nike Air Jordan tenisice, 150 €."
Adidas tenisice is here.
Adidas tenisice can be kupljeno or nekupljeno.
Adidas tenisice is nekupljeno.
The description of Adidas tenisice is "Crne Adidas Superstar tenisice, 112 €."
Instead of taking Nike tenisice:
	if Nike tenisice is nekupljeno:
		say "Moraš prvo platiti Nike tenisice na kasi!";
	otherwise:
		now C is 1;
		continue the action.
Instead of taking Adidas tenisice:
	if Adidas is nekupljeno:
		say "Moraš prvo platiti Adidas tenisice na kasi!";
	otherwise:
		now C is 1;
		continue the action.
Shooster kasa is here. "Pozdrav. Molim Vas stavite svoj artikl na kasu da vam ga mogu naplatiti."
Shooster kasa is scenery.
Shooster kasa can be sNike, sAdidas or ShoosterPrazna.
Shooster kasa is ShoosterPrazna.
Instead of putting Nike tenisice on Shooster kasa:
	now Shooster kasa is sNike;
	say "Račun za Nike tenisice je 150 €. Molim Vas stavite fond na kasu.".
Instead of putting Adidas tenisice on Shooster kasa:
	now Shooster kasa is sAdidas;
	say "Račun za Adidas tenisice je 112 €. Molim Vas stavite fond na kasu.".
Instead of putting fond on Shooster kasa:
	if Shooster kasa is ShoosterPrazna:
		say "Nemate ništa za platiti.";
	if Shooster kasa is sNike:
		Now R is 150;
		if F is less than R:
			say "Nemate dovoljno novaca za kupiti Nike tenisice!";
			now Shooster kasa is ShoosterPrazna;
		otherwise:
			now F is F minus R;
			now the description of fond is "[F] €";
			now Nike tenisice is kupljeno;
			now Shooster kasa is ShoosterPrazna;
			say "Hvala Vam na kupnji i doviđenja. NE ZABORAVITE uzeti Nike tenisice! Preostalo Vam je još [F] €.";
	if Shooster kasa is sAdidas:
		Now R is 112;
		if F is less than R:
			say "Nemate dovoljno novaca za kupiti Adidas tenisice!";
			now Shooster kasa is ShoosterPrazna;
		otherwise:
			now F is F minus R;
			now the description of fond is "[F] €";
			now Adidas tenisice is kupljeno;
			now Shooster kasa is ShoosterPrazna;
			say "Hvala Vam na kupnji i doviđenja. NE ZABORAVITE uzeti Adidas tenisice! Preostalo Vam je još [F] €.";

Buzz is west of Treci kat. "Ušli ste u dućan Buzz."
Puma natikace is here.
Puma natikace can be kupljeno or nekupljeno.
Puma natikace is nekupljeno.
The description of Puma natikace is "Bijele Puma natikače, 55 €."
Champion natikace is here.
Champion natikace can be kupljeno or nekupljeno.
Champion natikace is nekupljeno.
The description of Champion natikace is "Crne Champion natikače, 43 €."
Instead of taking Puma natikace:
	if Puma natikace is nekupljeno:
		say "Moraš prvo platiti Puma natikače na kasi!";
	otherwise:
		now C is 1;
		continue the action.
Instead of taking Champion natikace:
	if Champion natikace is nekupljeno:
		say "Moraš prvo platiti Champion natikače na kasi!";
	otherwise:
		now C is 1;
		continue the action.
Buzz kasa is here. "Pozdrav. Molim Vas stavite svoj artikl na kasu da vam ga mogu naplatiti."
Buzz kasa is scenery.
Buzz kasa can be sPuma, sChampion or BuzzPrazna.
Buzz kasa is BuzzPrazna.
Instead of putting Puma natikace on Buzz kasa:
	now Buzz kasa is sPuma;
	say "Račun za Puma natikace je 55 €. Molim Vas stavite fond na kasu.".
Instead of putting Champion natikace on Buzz kasa:
	now Buzz kasa is sChampion;
	say "Račun za Champion natikace je 43 €. Molim Vas stavite fond na kasu.".
Instead of putting fond on Buzz kasa:
	if Buzz kasa is BuzzPrazna:
		say "Nemate ništa za platiti.";
	if Buzz kasa is sPuma:
		Now R is 55;
		if F is less than R:
			say "Nemate dovoljno novaca za kupiti Puma natikače!";
			now kasa is BuzzPrazna;
		otherwise:
			now F is F minus R;
			now the description of fond is "[F] €";
			now Puma natikace is kupljeno;
			now Buzz kasa is BuzzPrazna;
			say "Hvala Vam na kupnji i doviđenja. NE ZABORAVITE uzeti Puma natikače! Preostalo Vam je još [F] €.";
	if Buzz kasa is sChampion:
		Now R is 43;
		if F is less than R:
			say "Nemate dovoljno novaca za kupiti Champion natikače!";
			now Buzz kasa is BuzzPrazna;
		otherwise:
			now F is F minus R;
			now the description of fond is "[F] €";
			now Champion natikace is kupljeno;
			now Buzz kasa is BuzzPrazna;
			say "Hvala Vam na kupnji i doviđenja. NE ZABORAVITE uzeti Champion natikače! Preostalo Vam je još [F] €.";