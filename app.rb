# frozen_string_literal: true

Dir['./config/initializers/*.rb'].sort.each { |file| require file }

require 'roda'

class App < Roda
  plugin :public
  plugin :rodauth, csrf: false, flash: false, json: :only do
    enable :active_sessions,
           :audit_logging,
           :change_login,
           :change_password,
           :create_account,
           :disallow_common_passwords,
           :jwt,
           :jwt_refresh,
           :lockout,
           :login,
           :logout,
           :password_complexity,
           :reset_password,
           :single_session
  end

  route do |r|
    r.public
    r.rodauth
  end
end
