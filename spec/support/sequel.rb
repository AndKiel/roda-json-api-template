# frozen_string_literal: true

RSpec.configure do |config|
  config.around do |example|
    DB.transaction(rollback: :always, auto_savepoint: true) { example.run }
  end
end
