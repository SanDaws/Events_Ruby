# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.add_delivery_method= :smtp
ActionMailer::Base.perform_deliveries
ActionMailer::Base.add_delivery_method= :smtp
