# frozen_string_literal: true

require 'sequel'

DB = Sequel.connect(ENV.delete('DATABASE_URL'))

Dir['./models/*.rb'].sort.each { |file| require file }
