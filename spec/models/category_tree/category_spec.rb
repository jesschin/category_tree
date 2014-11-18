require 'rails_helper'

module CategoryTree
  RSpec.describe Category, :type => :model do

    it { should validate_presence_of(:code) }
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:code) }
  end
end
