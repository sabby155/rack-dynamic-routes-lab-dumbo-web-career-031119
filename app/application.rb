class Application 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Response.new(env)
    
    @@items = []
    
    if req.path.match(/items/)
    
    item_name = req.path.split("/items/")      
      
    end   
    
    resp.finish
  end   
  
end   
  