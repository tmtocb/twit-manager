require 'rails_helper'

describe HomeController do 

  describe 'GET index' do
    subject { get :index }
    it 'renders the index template' do
      subject
      expect(response).to render_template(:index)
    end

    it 'have success http status' do
      subject
      expect(response).to have_http_status(:success)
    end
  end
end