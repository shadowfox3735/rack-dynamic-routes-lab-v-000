class Application
  
  def call
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    if resp.path=="/items"
      
  end
  
end