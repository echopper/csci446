# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Articles::Application.initialize!

Time::DATE_FORMATS[:us_with_weekday] = "%A, %b. %e %Y"
Time::DATE_FORMATS[:us_sans_weekday] = "%b. %e %Y"
