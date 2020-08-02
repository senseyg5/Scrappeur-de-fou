
require 'rubygems'
require 'nokogiri'
require 'open-uri'
 

#2 Deuxième méthode : Collecte des emails des députés
def scrapping_emails

	page = Nokogiri::HTML(URI.open("https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&pagnum=600&lang=fr"))
	emailTableau = []
	bureau = "bureau-m-orphelin@assemblee-nationale.fr" #/ on met à l'écart deux mails en doublons identifiés
	secretariat = "secretariat-blanchet@assemblee-nationale.fr"

	emails = page.xpath('//*[contains(text(), "@assemblee-nationale.fr")]') 
	
	for email in emails do
		emailTableau << email.text.strip unless email.text.strip == bureau || email.text.strip == secretariat
	end
	return emailTableau
end

#3 Troisième méthode : Collecte des noms et prénoms des députés
def scrapping_names

	puts "Liste de nom et adresse email des deputes de France".upcase
	puts "\n"
	page = Nokogiri::HTML(URI.open("https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&pagnum=600&lang=fr"))
	nomTableau = []
	xpath = page.xpath('//*[@class="titre_normal"]')

	for nom in xpath do #/ on enlève le Madame, Monsieur en ne prenant que le deuxième et troisième bloc de la string
		nomTableau << { "Nom" => nom.text.split(" ")[1].upcase, "Prenoms" => nom.text.split(" ")[2]}
	end

	return nomTableau

end

#4 Quatrième méthode : Synchronisation des noms et emails des députés
def assemblage_nom_email
	
	nomTableau = scrapping_names
	emailTableau = scrapping_emails

    nomTableau.map.with_index { |hash, i| hash["email"] = emailTableau[i]} 
    #/ pour chaque nom et prénom de députés, on associe une adresse mail.
    #/ rajout dans un hash de l'email associé.
	puts nomTableau
	return nomTableau  
end


#join_name_and_email


