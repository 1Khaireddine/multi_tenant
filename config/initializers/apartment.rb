require 'apartment/elevators/subdomain'
require 'apartment/migrator'

# Exclude some subdomains
Apartment::Elevators::Subdomain.excluded_subdomains = %w( www app admin api developers extranet )

# Apartment Configuration
Apartment.configure do |config|

  # These models will not be multi-tenanted,
  # but remain in the global (public) namespace
  config.excluded_models = %w{ Company }

  # use postgres schemas?
  config.use_schemas = true

  # use raw SQL dumps for creating postgres schemas? (only appies with use_schemas set to true)
  # config.use_sql = true

  # configure persistent schemas (E.g. hstore )
  config.persistent_schemas = %w{ hstore uuid }

  # add the Rails environment to database names?
  config.prepend_environment = false
  config.append_environment  = false

  # supply list of database names for migrations to run on
  config.tenant_names = lambda{ Company.pluck( :subdomain ) }
end

##
# Elevator Configuration
Rails.application.config.middleware.use Apartment::Elevators::Subdomain
