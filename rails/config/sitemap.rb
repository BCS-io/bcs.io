# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://bcs.io"

SitemapGenerator::Sitemap.create do
  add about_path, priority: 0.75, changefreq: 'daily'
end
