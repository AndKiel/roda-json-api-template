# frozen_string_literal: true

require 'blueprinter'
require 'json'
require 'oj'

Blueprinter.configure do |config|
  config.generator = Oj
end
