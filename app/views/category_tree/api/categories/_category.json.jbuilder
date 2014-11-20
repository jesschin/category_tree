json.id category.id
json.code category.code
json.name category.name
json.breadcrumbs category.breadcrumbs

if category.parent
  json.set! :parent do
    json.partial! 'category', :category => category.parent
  end
end