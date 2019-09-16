class Application
    @@items = []

    def call(env)
      resp = Rack::Response.new
      req = Rack::Request.new(env)

      if !req.path.match(/items/)
        resp.write "Route not found"
        resp.status = 404
      else
        req_item = req.path.split("/items/").last
        item = @@items.find {|item| item.name == req_item}
        if item 
            resp.write item.price
            resp.status = 200
        else 
            resp.status = 400
            resp.write "Item not found"
        end
      end
   
      resp.finish
    end
  end

