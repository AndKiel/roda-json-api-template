# frozen_string_literal: true

require_relative '../../models/account'

RSpec.describe 'Accounts', type: :request do
  describe 'POST /create-account' do
    let(:url) { '/create-account' }

    context 'with valid params' do
      let(:params) do
        Oj.to_json({
                     login: 'account@mail.co',
                     'login-confirm': 'account@mail.co',
                     password: 'P455w0Rd',
                     'password-confirm': 'P455w0Rd'
                   })
      end

      it 'returns Account' do
        expect do
          post url, params
        end.to change(Account, :count).by(1)

        expect(last_response.status).to be(200)
      end
    end
  end
end
