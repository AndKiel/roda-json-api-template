# frozen_string_literal: true

Dir['./config/initializers/*.rb'].each { |file| require file }

require 'roda'

class RodaJsonApi < Roda
  plugin :public

  route do |r|
    r.public
  end
end
