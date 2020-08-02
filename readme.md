
Liste des membres de <b>SENSEI groupe 5</b><br>
<=============================================><br>
Mini-projet <b>scrappeur de fou</b> en <b>RUBY</b><br>
<==============================================><br>
<p>Developpe par: </p><br>

1- Freddy Harimanana <br>
2- Lafatra L Ramahefaharimamonjy<br>
3- Toky Raf<br>
4- Toiher Omar<br>
5- Randy rajaonarison<br>
6- Freddy Michel<br>

# 1- Trader
<p>Lehman Brothers, impressionnés par tes algorithmes de trading de la dernière fois, veut faire encore appel à toi. Leur Chief Digital Officer, très hype, a entendu parler au JT de TF1 d'un "truc révolutionnaire qui s'appelle je crois le bloque chienne" et voudrait du coup connaître le cours des cryptomonnaies.

Va sur CoinMarketCap et fait un programme qui va récupérer le cours de toutes les cryptomonnaies, et les enregistrer bien proprement dans une array de hashs. Ton array devrait avoir le format suivant :</p><br>

<b>a = [  { "BTC" => 5245.12 },  { "ETH" => 217.34 },  etc ]</b><br>

# 2- Route de la mairie

<p>Le CEO de get-email-corp a besoin de tes services. Il voudrait toutes les adresses email des mairies du Val d'Oise. Quelle coincidence, tu viens d'apprendre à le faire. Va sur cet annuaire des mairies et va récupérer les adresses emails des mairies du Val d'Oise. Comme pour l'exercice précédent, tu devras enregistrer les données dans une array de hash qui doit avoir le format suivant :</p><br>

<b>a = [  { "ville_1" => "email_1" },  { "ville_2" => "email_2" },  etc ]</b><br>
<p>Cette partie comporte 2 methodes: </p><br>
<h4>A- get_townhall_email(townhall_url): </h4><br>
<p>Qui récupère l'email d'une mairie à partir de l'URL de cette dernière, par exemple celle de Avernes</p><br>
<h4>B- get_townhall_urls: </h4><br>
<p>Qui va récupérer toutes les URLs des villes du Val d'Oise.</p><br>

# 3- Route des députés

<p>Maintenant, nous allons te faire travailler sans –trop– te mâcher le travail. Nous allons te demander de récupérer la liste complète des députés de France, puis de récupérer leurs adresses email. Tu devras trouver par toi-même le site à scrapper, et tu devras stocker toi même les députés dans une array de hashs au format un peu différent des exercices précédents :</p><br>

<b>a = [  {   "first_name" => "Jean",   "last_name" => "Durant",   "email" => "jean.durant@assemblée.fr"  },  {   "first_name" => "Martin",   "last_name" => "Dupont",   "email" => "martin.dupont@assemblée.fr"  },  etc ]</b><br>

<p>Cet exercice te demandera d'aller voir quelques annuaires, et de travailler sur celui qui te semble le mieux.</p>