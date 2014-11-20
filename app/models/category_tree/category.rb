module CategoryTree
  class Category < ActiveRecord::Base
    has_ancestry :orphan_strategy => :restrict, :cache_depth => true

    validates :code, :name, :presence => true
    validates :code, :uniqueness => true

    scope :search, (lambda do |search_keys|
      if search_keys
        search_keys.gsub!(' ', '%')
        where_clause = 'LOWER(CAST(code AS text)) LIKE LOWER(:search) OR ' \
                       'LOWER(name) LIKE LOWER(:search)'
        where(where_clause, :search => "%#{search_keys}%")
      end
    end)

  end
end
