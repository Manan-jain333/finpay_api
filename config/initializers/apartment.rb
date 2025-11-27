Apartment.configure do |config|
  config.excluded_models = %w[Company]

  config.tenant_names = lambda {
    Company.pluck(:schema_name)
  }
end
