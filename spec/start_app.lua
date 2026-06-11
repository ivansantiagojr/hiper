-- setup path to find the project source files of Hiper
package.path = './src/?.lua;./src/?/init.lua;' .. package.path

local Hiper = require('hiper')

local app = Hiper:new({ port = '9090' })

app:get('/test', function(request, response)
    response:contentType('application/json'):write('{"work": "please"}')
end)

app:serve()
