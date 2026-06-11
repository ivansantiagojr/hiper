local http = require('socket.http')

describe('the server is initialized', function()
    setup(function()
        os.execute('./lua spec/start_app.lua &')
        os.execute('sleep 1')
    end)

    teardown(function()
        os.execute('pkill -f start_app.lua')
    end)

    it('should initialize a server able to receive requests', function()
        local body, status = http.request('http://localhost:9090/test')

        assert.is_equal(status, 200)
    end)
end)
