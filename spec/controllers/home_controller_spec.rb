require 'rails_helper'

describe HomeController do 

  describe 'GET index' do
    let(:user) { create(:user) }
    before do
      sign_in(user)
      get :index
    end

    it 'renders the index template' do
      expect(response).to render_template(:index)
    end

    it 'have success http status' do
      expect(response).to have_http_status(:success)
    end
  end
end