json.array!(@pages) do |page|
  json.extract! page, :title, :content, :published
  json.url page_url(page, format: :json)
end