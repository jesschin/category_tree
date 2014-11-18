module CategoryTree
  class Category < ActiveRecord::Base
    has_ancestry :orphan_strategy => :restrict, :cache_depth => true

    validates :code, :name, :presence => true
    validates :code, :uniqueness => true
  end
end
