describe("Test base hiper methods", function ()
    describe("serve method is available", function ()
        it("should contain a serve method", function ()
            local Hiper = require("hiper")
            local app = Hiper:new()

            assert.is_not_nil(app.serve)
        end)

        it("should contain a server property", function ()
            local Hiper = require("hiper")
            local app = Hiper:new()

            assert.is_not_nil(app.server)
        end)

        it("should have different server property", function ()
            local Hiper = require("hiper")
            local app = Hiper:new()
            local other_app = Hiper:new()

            assert.are_not_equals(app.server, other_app.server)
        end)
    end)
end)
