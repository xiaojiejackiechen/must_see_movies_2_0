require "rails_helper"

RSpec.describe Review, type: :model do
  describe "Direct Associations" do
    it { should belong_to(:movie) }

    it { should belong_to(:reviewer) }
  end

  describe "InDirect Associations" do
  end

  describe "Validations" do
  end
end
