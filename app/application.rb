class Application
  @@items = []
  
  def call
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if resp.path=="/items"
      
    else
      resp.write Item not found
      resp.status = 404
    end
  end
  
end