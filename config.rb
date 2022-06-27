activate :relative_assets
set :relative_links, true

activate :asset_hash

configure :build do
  activate :minify_css
end

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false