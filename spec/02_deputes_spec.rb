require_relative '../lib/02_deputes.rb'

describe "#affichage des nom et email" do
  it "Liste des deputes avec son email" do
    expect(assemblage_nom_email).to be_instance_of Array
  end
  it "Valeur null inacceptable" do 
  	expect(assemblage_nom_email).not_to be_nil
  end

end