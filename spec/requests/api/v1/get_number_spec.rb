require 'rails_helper'

describe 'Api::V1::Numbers' do
  context 'GET /api/v1/number' do
    it 'returns a generated number' do
      get '/api/v1/number'

      expect(response).to have_http_status(:success)
    end
  end

  context 'GET /api/v1/number?type=decimal' do
    it 'returns a generated decimal number' do
      get '/api/v1/number?type=decimal'

      expect(response).to have_http_status(:success)
    end
  end
end