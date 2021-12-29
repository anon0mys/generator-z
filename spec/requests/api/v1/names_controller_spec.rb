require 'rails_helper'

describe 'Api::V1::Names' do
  context 'GET /api/v1/name' do
    it 'returns a generated name' do
      get '/api/v1/name'

      expect(response).to have_http_status(:success)
    end
  end

  context 'GET /api/v1/name?category=' do
    it 'returns a superhero name when category is superhero' do
      get '/api/v1/name?category=superhero'

      expect(response).to have_http_status(:success)
    end
  end
end