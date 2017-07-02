json.extract! sql_template, :id, :body, :path, :format, :locale, :handler, :partial, :created_at, :updated_at
json.url sql_template_url(sql_template, format: :json)
