# frozen_string_literal: true

Dir['config/initializers/*.rb'].each { |file| require_relative file }

require 'roda'

class RodaJsonApi < Roda
end
