require 'rails_helper'

module CategoryTree
  RSpec.describe Category, :type => :model do

    it { should validate_presence_of(:code) }
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:code) }

    it 'should perform a keyword search' do
      create(:category, :name => 'AAA')
      create(:category, :name => 'AAB')
      create(:category, :name => 'ABB')
      create(:category, :name => 'CCC')

      results = Category.search('AA')
      expect(results).not_to be_nil
      expect(results.size).to be_eql 2
    end
  end
end
