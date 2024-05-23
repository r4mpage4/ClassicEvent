local throw_away = {}

local R4MPAGE_SCRIPT = [[
--hered
]]

function GetBytes()
	for num = 1, #R4MPAGE_SCRIPT do
		throw_away[num] = string.byte(R4MPAGE_SCRIPT, num)
	end
end

function ConvertString()
	local string_buffer = "";
	for obj = 1, #throw_away do
		string_buffer = string_buffer .. "\\" .. throw_away[obj]
	end
	return string_buffer
end

function Obfuscate()
	GetBytes()
	local str = ConvertString()
	return print('loadstring("' .. str .. '")()')
end

Obfuscate()
