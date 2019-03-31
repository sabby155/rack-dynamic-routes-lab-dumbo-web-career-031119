class Application 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Response.new(env)
    

      if req.path.match(/items/)
        item_name = req.path.split("/items/").last 
        
        @@items.find do |item|
          if item.name == item_name
            resp.write item.price
          elsif item == items.last 
            resp.write "Error: Item not found"
           resp.status = 400
          end  
          end  
      end   
      
    resp.finish
  end   
end   


# class Application
    
#     def call(env)
#         resp = Rack::Response.new
#         req = Rack::Request.new(env)

#         if req.path.match(/items/)
#             the_item = req.path.split("/items/").last

#             @@items.find{|item| 
#                 if item.name == the_item
#                     resp.write item.price
#                 elsif item == @@items.last
#                     resp.write "Error: Item not found"
#                     resp.status = 400
#                 end
#             }
#         else
#             resp.write "Error: Route not found."
#             resp.status = 404
#         end
#         resp.finish
#     end
# end
  