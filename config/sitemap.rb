# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://kenhdoc.com"

SitemapGenerator::Sitemap.create do
  add root_path
  add about_us_path
  add faq_path
end
