
require 'rubygems'
require 'nokogiri'
require 'open-uri'

#Declaration de page
def page_web
	pg = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/val-d-oise.html"))
	return pg
end

#Collecte de l'email d'une mairie d'une ville du Val d'Oise
def get_townhall_email(townhall_url)
	page = Nokogiri::HTML(URI.open(townhall_url)) #/ on indique un site URL neutre qui sera indiqué dans la prochaine méthode
	tableau_email = []

	email = page.xpath('//*[contains(text(), "@")]').text
	ville = page.xpath('//*[contains(text(), "Adresse mairie de")]').text.split #/ on divise la string pour pouvoir récupérer uniquement le nom de la ville

	tableau_email.push({ville[3] => email})  #/ on indique la position du nom de la ville dans la string pour la récupérer
	
	puts tableau_email
	return tableau_email
end

#Collecte de toutes les URLs des villes du Val d'Oise
def get_townhall_urls
	page = page_web
	tableau_url = []

	urls = page.xpath('//*[@class="lientxt"]/@href') #/ toutes les URLs appartiennent à la classe lientxt
	#/ pour chaque URLs récupérées, il faut leur indiquer l'url parent "http://annuaire-des-mairies.com"
	for url in urls do
		#/ A l'url parent, on ajoute les urls récupérées du deuxième caractère au dernier caractère, car on veut se débarasser du point devant.
		url = "http://annuaire-des-mairies.com" + url.text[1..-1]
		tableau_url.push(url)	
	end

	return tableau_url 
end

#Synchronisation des noms des villes et des emails des mairies
def scrapp_data
	puts "Liste des adresse email des mairie de la ville de Val-d-oise".upcase
	puts "\n"
	tableau_url = get_townhall_urls
	#/ pour chaque URL d'une ville du Val d'Oise, on associe l'adresse mail de la mairie
	for townhall_url in tableau_url do
		get_townhall_email(townhall_url)
	end
end 


scrapp_data
