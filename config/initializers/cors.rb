# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors
Rails.application.config.middleware.insert_before 0, Rack::Cors do
allow do
  origins 'https://cheappointment.herokuapp.com'

  resource '/auth/login',
    :headers => :any,
    :methods => [:post]
  resource '/signup',
    headers: :any,
    methods: [:post, :head]
  resource '/users/:id',
    headers: :any,
    methods: [:get, :options, :head]
  resource '/api/doctorAppointments',
    headers: :any,
    methods: [:post,:get, :options, :head]
  resource '/api/doctors',
    headers: :any,
    methods: [:get, :options,:post, :head]
  resource '/api/users/:user_id/appointments',
    headers: :any,
    methods: [:post,:get, :options, :head]
  resource '/api/users/:user_id/appointments/:id',
    headers: :any,
    methods: [:put,:post,:patch, :options, :head]
  resource '/api/users',
    headers: :any,
    methods: [:post, :options, :head]
  resource '/api/users/:id',
    headers: :any,
    methods: [:get, :options, :head]
    
end
end
# Rails.application.config.middleware.insert_before 0, Rack::Cors do
#   allow do
#     origins "*"

#     resource "*",
#       headers: :any,
#       methods: [:get, :post, :put, :patch, :delete, :options, :head]
#   end
# end
