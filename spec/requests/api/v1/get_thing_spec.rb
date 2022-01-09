require 'rails_helper'

describe 'Api::V1::Things' do
  context 'GET /api/v1/thing' do
    it 'returns a randomly generated thing' do
      get '/api/v1/thing'

      expect(response).to have_http_status(:success)
    end
  end

  context 'GET /api/v1/thing?type=' do
    it 'returns a random animal when type is animal' do
      get '/api/v1/thing?type=animal'

      expect(response).to have_http_status(:success)
    end

    it 'returns a random liquid when type is liquid' do
      get '/api/v1/thing?type=liquid'

      expect(response).to have_http_status(:success)
    end

    it 'returns a random body part when type is body_part' do
      get '/api/v1/thing?type=body_part'

      expect(response).to have_http_status(:success)
    end
  end
end