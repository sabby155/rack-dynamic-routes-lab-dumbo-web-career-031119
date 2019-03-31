class Application 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Response.new(env)
    
    @@items = []
    
    if req.path == "/items"
      
      
    end   
    
    resp.finish
  end   
  
end   
  