class Application
  @@items = []
  
  def call
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if req.path.match(/items/)
      item_name = req.path.split(/items/).last
      item = @@items.find?{|i| i.name == song_name}
      
      if item.nil?
        "Item not found"
        resp.status = 400
      else
        resp.write item.price
      end
    else
      resp.write "Item not found"
      resp.status = 404
    end
  end
  
end