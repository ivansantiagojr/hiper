local Hiper = {}
Hiper.__index = Hiper

function Hiper:new()
    local app = {}

    app.routes = {}

    local pegasus = require('pegasus')

    app.server = pegasus:new({
        port = '9090',
        location = 'example/root',
    })

    return setmetatable(app, Hiper)
end

function Hiper:serve()
    self.server:start(function(request, response)
        print("It's running...")
    end)
end

function Hiper:get(path, handler)
    local route = { method = 'GET', path = path, handler = handler }
    table.insert(self.routes, route)
end

return Hiper
