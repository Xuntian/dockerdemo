--[[
Title: 
Author: liuluheng
Date: 2017.03.25
Desc: 


------------------------------------------------------------
NPL.load("(gl)npl_mod/Raft/Rutils.lua");
local Rutils = commonlib.gettable("Raft.Rutils");
------------------------------------------------------------
]] --

NPL.load("(gl)script/ide/socket/url.lua")
local url = commonlib.gettable("commonlib.socket.url")

local Rutils = commonlib.gettable("Raft.Rutils")

--- total number of elements in this table.
-- Note that this is distinct from `#t`, which is the number
-- of values in the array part; this value will always
-- be greater or equal. The difference gives the size of
-- the hash part, for practical purposes. Works for any
-- object with a __pairs metamethod.
-- @tab t a table
-- @return the size
function Rutils.table_size(t)
  -- assert_arg_iterable(1,t)
  local i = 0
  for k in pairs(t) do
    i = i + 1
  end
  return i
end

function Rutils.addServerToNPLRuntime(server)
  local parsed_url = url.parse(server.endpoint)
  NPL.AddNPLRuntimeAddress({host = parsed_url.host, port = parsed_url.port, nid = "server" .. server.id})
end

function Rutils.initConnect(thisId, server)
  RaftRequestRPCInit(thisId, server.id, {serverId = server.id})
end
