
require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'


def cryptofolie
	puts "LISTE DE CRYPTOMONNEI"
	page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))
	symboles = page.xpath('//*[@class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--left cmc-table__cell--sort-by__symbol"]')
	prix = page.xpath('//*[@class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--right cmc-table__cell--sort-by__price"]')

	tabSymbole = [] #/ initialisation d'un tableau pour stocker les symboles
	tabPrix = [] #/ initialisation d'un tableau pour stocker les symboles
	valeur = [] #/ on initialise un tableau pour stocker la valeur du symbole et de prix
	
	for symbole in symboles do
		prix.size.times do |i|
			tabPrix.push(prix[i].text)
		end
		tabSymbole.push(symbole.text)
	end
	
	tabSymbole.each_with_index do |clef, val|	#/ on associe pour chaque item de tabSymbole un item de tabPrix
		valeur.push({"#{clef}" => "#{(tabPrix)[val]}"}) #/ on sauvegarde sous forme d'hash dans le tableau
	end

	return valeur

end

puts cryptofolie