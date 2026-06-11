local Hiper = require('src.hiper')

local app = Hiper:new()

app:get('/test', function(request, response)
    response:contentType('application/json'):write('{"work": "please"}')
end)

app:serve()
