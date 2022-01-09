require 'rails_helper'

describe 'Api::V1::Locations' do
  context 'GET /api/v1/location' do
    it 'returns a randomly generated location' do
      get '/api/v1/location'

      expect(response).to have_http_status(:success)
    end
  end

  context 'GET /api/v1/location?type=' do
    it 'returns a random country when type is country' do
      get '/api/v1/location?type=country'

      expect(response).to have_http_status(:success)
    end

    it 'returns a random city when type is city' do
      get '/api/v1/location?type=city'

      expect(response).to have_http_status(:success)
    end
  end

  context 'GET /api/v1/location?&exclude=' do
    it 'returns a success when sending valid exclude countries' do
      get '/api/v1/location?type=country&exclude=US,CA,DE'

      expect(response).to have_http_status(:success)
    end
  end
end