require 'rack'
require 'pry'

class Application
 def call(env)
   return [ 200, {'Content-Type' => 'text/html'}, custom_response ]
 end

 def custom_response
   if Time.now.hour < 12
     ["<strong>Good Morning!<strong>"]
   else
     ["<strong>Good Afternoon!</strong>"]
   end
  end
 end
