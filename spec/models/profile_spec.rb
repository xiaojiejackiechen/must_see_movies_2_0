require "rails_helper"

RSpec.describe Profile, type: :model do
  describe "Direct Associations" do
    it { should have_many(:bookmarks) }

    it { should have_many(:reviews) }
  end

  describe "InDirect Associations" do
    it { should have_many(:movie) }

    it { should have_many(:movies) }
  end

  describe "Validations" do
  end
end
