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
        for _, route in ipairs(self.routes) do
            if route.method == request:method() and route.path == request:path() then
                route.handler(request, response)
                return
            end
        end
        response:statusCode(404, 'Path not found'):write('What are you trying to access??')
    end)
end

function Hiper:get(path, handler)
    local route = { method = 'GET', path = path, handler = handler }
    table.insert(self.routes, route)
end

return Hiper
