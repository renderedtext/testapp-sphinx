require 'spec_helper'
require 'sphinx_helper'

describe "Products" do
  after { Product.delete_all }
  describe "GET /products" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get products_path
      response.status.should be(200)
    end

    context "with search parameters" do
      it "assigns search results as @products" do
        ThinkingSphinx::Test.run do
          smoki = Product.create! :name => "Smoki", :price => 50
          plazma = Product.create! :name => "Plazma", :price => 150
          ThinkingSphinx::Test.index

          get products_path :search => "smoki"
          expect(assigns(:products)).to eq([smoki])
        end
      end
    end
  end
end
