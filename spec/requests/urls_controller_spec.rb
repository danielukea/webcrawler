require 'rails_helper'

RSpec.describe UrlsController, type: :request do 


    it 'should post a seed url to begin crawling' do
        post '/api/v1/root_urls', params: { root_url: "http://website.com" }
        expect(response.status).to eq(201)
        expect(json_response).to eq({id: 1})
    end
end