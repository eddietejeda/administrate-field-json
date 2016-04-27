require "administrate/field/json"

describe Administrate::Field::JSON do
  describe "#to_partial_path" do

    it "returns a partial based on the page being rendered" do
      page = :index
      field = Administrate::Field::JSON.new(:json, {"hello": "world"}, page)

      path = field.to_partial_path

      expect(path).to eq("/fields/json/#{page}")
    end

    it "returns a partial based on the page being rendered" do
      page = :show
      field = Administrate::Field::JSON.new(:json, {"hello": "world"}, page)

      path = field.to_partial_path

      expect(path).to eq("/fields/json/#{page}")
    end
    
    it "returns a partial based on the page being rendered" do
      page = :edit
      field = Administrate::Field::JSON.new(:json, {"hello": "world"}, page)

      path = field.to_partial_path

      expect(path).to eq("/fields/json/#{page}")
    end
        
  end
end
