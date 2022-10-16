class ClientsController < Sinatra::Base
  configure do
    set :session_secret, 'password_security'
  end

  class Appointment < ActiveRecord::Base
    belongs_to :client
  end
end
