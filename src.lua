local pc = pcall;

-- modules
local httpmodule = loadstring(syn.request({Url="https://raw.githubusercontent.com/soul94/voidhook/main/raw/loadhttp.lua",Method="GET"}).Body)() -- http module

local success, response = pc(function()
	httpmodule("https://raw.githubusercontent.com/soul94/voidhook/main/raw/raw_src.lua")
end)

if (not success) then
	return function() game["Players"].LocalPlayer:kick(" [ no ] ") end -- synapse only bro
end
