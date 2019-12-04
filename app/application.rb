require 'pry'
class Application

 def call(env)
    resp = Rack::Response.new
    
    time = Time.now
    hour = time.strftime("%k").to_i   # 0 - 23
    
    if (0...12).include?(hour)
      resp.write "Good Morning!\n"
    elsif (12..23).include?(hour)
      resp.write "Good Afternoon!\n"
    end
 
    resp.finish
  end
end