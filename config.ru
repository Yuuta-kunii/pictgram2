Rails.application.routes.draw do
  root 'page#index'
end # This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

run Rails.application
