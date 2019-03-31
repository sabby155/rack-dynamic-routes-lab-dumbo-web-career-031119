class Application 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Response.new(env)
    
    @@items = []
    
    if req.path.match(/items/)
    
    item_name = req.path.split("/items/").last 
    item = @@items.find {|i| i.name == item_name}
    resp.write item.price
      
    end   
    
    resp.finish
  end   
  
end   
  