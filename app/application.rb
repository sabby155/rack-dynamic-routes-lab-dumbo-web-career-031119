class Application 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Response.new(env)
    
    # @@item = []
    
    if req.path == "/items/"
    
    item_name = req.path.split("/items/").last 
    item = @@item.find {|i| i.name == item_name}
    resp.write item.price
    resp.status =   
    end   
    
    resp.finish
  end   
  
end   
  