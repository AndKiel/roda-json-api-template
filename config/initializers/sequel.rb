# frozen_string_literal: true

require 'sequel'

DB = Sequel.connect(ENV.delete('DATABASE_URL'))
DB.freeze
