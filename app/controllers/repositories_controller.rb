class RepositoriesController < ApplicationController

  def search

  end

  def github_search
      @resp = Faraday.get 'https://api.github.com/search/repositories' do |req|
    req.params['client_id'] = 'client_id'
    req.params['client_secret'] = 'client_secret'
  end
  render 'search'
end
end
