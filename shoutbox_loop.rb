require 'rubygems'
require 'ruby-jmeter'

test do
	cookies clear_each_iteration: false
	
	threads count: 1000, rampup: 90, duration: (60 * 5), continue_forever: true do
	  
	  defaults :domain => 'evening-citadel-2263.herokuapp.com'
	  random_timer 1000, 2000

	  visit name: 'Home', url: '/'
	  visit name: 'Page 2', url: '/2'
	  visit name: 'Page 3', url: '/3'
	  visit name: 'Page 4', url: '/4'
	  visit name: 'Page 3', url: '/3'
	  visit name: 'Page 2', url: '/2'
	  visit name: 'Home', url: '/'
	end
end.flood('API TOKEN KEY')