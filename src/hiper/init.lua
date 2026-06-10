local Hiper = {}
Hiper.__index = Hiper

function Hiper:new(params)
    params = params or {}

    local pegasus = require('pegasus')

    local instance = setmetatable({}, Hiper)

    instance.server = pegasus:new({
        port = '9090',
        location = 'example/root',
    })

    return instance
end

function Hiper:serve()
    self.server:start(function(request, response)
        print("It's running...")
    end)
end

return Hiper
