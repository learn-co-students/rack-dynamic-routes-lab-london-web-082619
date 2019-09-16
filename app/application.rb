class Application

    @@items = []

    def call(env)
        resp = Rock::Response.now
        req = Rack::Request.now(env)

        if req.path.match(/@@items/)
            resp.write "@price"
        else
            resp.write "Item not found"
            resp.status = 404
    end

end
