module CategoryTree
  class Category < ActiveRecord::Base
    has_ancestry :orphan_strategy => :restrict, :cache_depth => true
    mount_uploader :icon, IconUploader

    validates :icon, :presence => true

    scope :search, (lambda do |search_keys|
      if search_keys
        search_keys.gsub!(' ', '%')
        where_clause = 'LOWER(CAST(code AS text)) LIKE LOWER(:search) OR ' \
                       'LOWER(name) LIKE LOWER(:search)'
        where(where_clause, :search => "%#{search_keys}%")
      end
    end)

    def breadcrumbs
      names = ancestors.map(&:name)
      names << name
      names.join(' > ')
    end
  end
end
