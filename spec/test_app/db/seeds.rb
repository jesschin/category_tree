fiction = CategoryTree::Category.create(:code => 'FIC',
                                        :name => 'Fiction')
prose = fiction.children.create(:code => 'PROSE',
                                :name => 'Prose')
poetry = fiction.children.create(:code => 'POETRY',
                                :name => 'Poetry')

fantasy = prose.children.create(:code => 'FAN',
                                :name => 'Fantasy')
medieval = fantasy.children.create(:code => 'MEDFAN',
                                   :name => 'Medieval Fantasy')

ya = prose.children.create(:code => 'YA',
                           :name => 'Young Adult')

nonfiction = CategoryTree::Category.create(:code => 'NFIC',
                                           :name => 'Non Fiction')

biography = nonfiction.children.create(:code => 'BIO',
                                       :name => 'Biographies')
autobio = biography.children.create(:code => 'AUTOBIO',
                                    :name => 'Autobiographies')
political_bio = biography.children.create(:code => 'POLIBIO',
                                          :name => 'Politician Biographies')