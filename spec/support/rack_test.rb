# frozen_string_literal: true

require 'rack/test'

RSpec.configure do |config|
  config.include Rack::Test::Methods, type: :request

  config.before :example, type: :request do
    header 'Content-Type', 'application/json'
  end

  def app
    App.app
  end
end
