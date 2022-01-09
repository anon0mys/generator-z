require 'rails_helper'

describe 'Api::V1::Words' do
  context 'GET /api/v1/word' do
    it 'returns a randomly generated word' do
      get '/api/v1/word'

      expect(response).to have_http_status(:success)
    end
  end

  context 'GET /api/v1/word?type=' do
    it 'returns a random verb when type is verb' do
      get '/api/v1/word?type=verb'

      expect(response).to have_http_status(:success)
    end

    it 'returns a random adjective when type is adjective' do
      get '/api/v1/word?type=adjective'

      expect(response).to have_http_status(:success)
    end

    it 'returns a random noun when type is noun' do
      get '/api/v1/word?type=noun'

      expect(response).to have_http_status(:success)
    end

    it 'returns a random adverb when type is adverb' do
      get '/api/v1/word?type=adverb'

      expect(response).to have_http_status(:success)
    end
  end

  context 'GET /api/v1/word?conjugation=' do
    context 'when type is verb' do
      it 'can conjugate a verb to past tense' do
        get '/api/v1/word?type=verb&conjugation=past'

        expect(response).to have_http_status(:success)
      end

      it 'can conjugate a verb to past participle' do
        get '/api/v1/word?type=verb&conjugation=past_participle'

        expect(response).to have_http_status(:success)
      end

      it 'can conjugate a verb to present tense' do
        get '/api/v1/word?type=verb&conjugation=simple_present'

        expect(response).to have_http_status(:success)
      end

      it 'can conjugate a verb to present progressive' do
        get '/api/v1/word?type=verb&conjugation=ing_form'

        expect(response).to have_http_status(:success)
      end
    end

    context 'when type is noun' do
      it 'can pluralize a noun' do
        get '/api/v1/word?type=noun&conjugation=plural'

        expect(response).to have_http_status(:success)
      end
    end
  end
end