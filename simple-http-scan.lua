-- HEAD
local stdnse = require "stdnse"
local shortport = require "shortport"
description = [[
description
]]
author = "Your Name"
license = "information"
categories = { "safe" }

-- RULES
portrule = shortport.port_or_service(8000, "http-alt")

-- ACTION
action = function(host, port)
    return port.version.name .. "is" .. port.state .. " and running on port number " .. port.number .. "."
end
