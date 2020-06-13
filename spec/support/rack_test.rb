# frozen_string_literal: true

require 'rack/test'

RSpec.configure do |config|
  config.include Rack::Test::Methods, type: :request

  def app
    App.app
  end
end
