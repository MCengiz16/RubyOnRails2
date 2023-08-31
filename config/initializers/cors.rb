Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins '*' # Update this to allow requests from specific domains if needed
      resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head]
    end
  end
  
  