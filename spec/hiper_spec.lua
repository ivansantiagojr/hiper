local Hiper = require('hiper')

describe('Test base hiper methods', function()
    describe('serve method is available', function()
        it('should contain a serve method', function()
            local app = Hiper:new()

            assert.is_not_nil(app.serve)
        end)

        it('should contain a server property', function()
            local app = Hiper:new()

            assert.is_not_nil(app.server)
        end)

        it('should have different server property', function()
            local app = Hiper:new()
            local other_app = Hiper:new()

            assert.are_not_equals(app.server, other_app.server)
        end)
    end)
    describe('Test hiper get router', function()
        it('should register to routers', function()
            local app = Hiper:new()

            local path = '/path'
            local handler = function() end
            app:get(path, handler)

            assert.is_true(#app.routes == 1)

            local expected_route = { method = 'GET', handler = handler, path = path }
            local actual_route = app.routes[1]

            assert.are.same(actual_route, expected_route)
        end)
    end)
end)
