require_relative '../lib/00_trader.rb'

describe "le trader de l'obscur" do
  it "Retournee un tableau" do
    expect(cryptofolie).to be_instance_of Array
  end
  it "Valeur null inacceptable" do 
  	expect(cryptofolie).not_to be_nil
  end

end
