require 'rails_helper'
RSpec.describe WinesController do
	login_user
	describe "GET index", type: :request do
		it "renders the index template" do
			get :index
			expect(response).to render_template("index")
		end
	end

	it "renders the show template" do
		wine=Wine.create(name: "Alta Cima", price: 13000 )
		get :show, params: {id: wine.id}
		expect(response).to render_template("show")
	end
end