# frozen_string_literal: true

Dir['./config/initializers/*.rb'].sort.each { |file| require file }

require 'roda'

class App < Roda
  plugin :public
  plugin :rodauth, csrf: false, flash: false, json: :only do
    enable :login, :logout, :jwt
  end

  route do |r|
    r.public
    r.rodauth
  end
end
