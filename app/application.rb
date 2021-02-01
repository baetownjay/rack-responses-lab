class Application

    def call(env)
        resp = Rack::Response.new

        time = Kernel.rand(0...24)

        resp.write "It is #{time}:00 o'clock\n"

        if time < 12
            resp.write "Goodmoring!"
        else 
            resp.write "Good afternoon!"
        end

        resp.finish
    end
end