# frozen_string_literal: true

require 'dotenv'

Dotenv.load(ENV.fetch('ENV_FILE') { '.env' })
