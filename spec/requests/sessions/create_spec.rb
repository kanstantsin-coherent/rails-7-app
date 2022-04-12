require 'rails_helper'

RSpec.describe "Create Session" do
  let(:auth_params) { { email: email, password: password} }
  let(:email) { "some@email.com" }
  let(:password) { "some_password" }

  it "works" do
    post api_v1_authentication_url, params: auth_params

    expect(response.status).to eq(200)
    expect(JSON.parse(response.body)["token"]).not_to eq(nil)
  end
end
