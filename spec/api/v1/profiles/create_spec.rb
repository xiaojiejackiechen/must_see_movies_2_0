require 'rails_helper'

RSpec.describe "profiles#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/profiles", payload
  end

  describe 'basic create' do
    let(:params) do
      {
        # ... your attrs here
      }
    end
    let(:payload) do
      {
        data: {
          type: 'profiles',
          attributes: params
        }
      }
    end

    it 'works' do
      expect(ProfileResource).to receive(:build).and_call_original
      expect {
        make_request
        expect(response.status).to eq(201), response.body
      }.to change { Profile.count }.by(1)
    end
  end
end
