local NAME = "LibCodesCommonCode"
local VERSION = 3

if (type(_G[NAME]) == "table" and type(_G[NAME].version) == "number" and _G[NAME].version >= VERSION) then return end

local Lib = { version = VERSION }
_G[NAME] = Lib


--------------------------------------------------------------------------------
-- Color/Integer Conversions
--------------------------------------------------------------------------------

do
	local function i2c( n, pos )
		return BitAnd(BitRShift(n, pos), 0xFF) / 255
	end

	local function c2i( n, pos )
		return BitLShift(BitAnd(n * 255, 0xFF), pos)
	end

	function Lib.Int24ToRGB( rgb )
		return i2c(rgb, 16), i2c(rgb, 8), i2c(rgb, 0)
	end

	function Lib.Int24ToRGBA( rgb )
		return i2c(rgb, 16), i2c(rgb, 8), i2c(rgb, 0), 1
	end

	function Lib.Int32ToRGBA( rgba )
		return i2c(rgba, 24), i2c(rgba, 16), i2c(rgba, 8), i2c(rgba, 0)
	end

	function Lib.RGBToInt24( r, g, b )
		return c2i(r, 16) + c2i(g, 8) + c2i(b, 0)
	end

	function Lib.RGBAToInt32( r, g, b, a )
		return c2i(r, 24) + c2i(g, 16) + c2i(b, 8) + c2i(a, 0)
	end

	function Lib.Int24ToInt32( rgb )
		return BitOr(BitLShift(rgb, 8), 0xFF)
	end

	function Lib.Int32ToInt24( rgba )
		return BitRShift(rgba, 8)
	end
end


--------------------------------------------------------------------------------
-- 6-Bit Encode/Decode
--------------------------------------------------------------------------------

do
	local DICT = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz#%"

	function Lib.Encode( number, size )
		-- Values for size:
		-- 0: Pad result to an even number of bytes (the number 0 will encode to an empty string)
		-- n: Pad result to a minimum length of n bytes
		-- nil: Do not pad results (the number 0 will encode to an empty string)

		local result = ""

		while (number > 0) do
			local p = (number % 0x40) + 1
			result = zo_strsub(DICT, p, p) .. result
			number = zo_floor(number / 0x40)
		end

		-- Pad result as necessary
		if (size == 0) then
			if (zo_strlen(result) % 2 == 1) then
				result = zo_strsub(DICT, 1, 1) .. result
			end
		elseif (size) then
			local padding = size - zo_strlen(result)
			if (padding > 0) then
				result = string.rep(zo_strsub(DICT, 1, 1), padding) .. result
			end
		end

		return result
	end

	function Lib.Decode( code )
		local result = 0

		for i = 1, zo_strlen(code) do
			local found, p = zo_plainstrfind(DICT, zo_strsub(code, i, i))
			if (not found) then return 0 end
			result = (result * 0x40) + (p - 1)
		end

		return result
	end
end


--------------------------------------------------------------------------------
-- Consolidator for 6-Bit Encoded Data
--------------------------------------------------------------------------------

do
	local function consolidate( str, char, flag )
		return string.gsub(str, string.format("(%s+)", string.rep(char, 4)), function( capture )
			local length = zo_strlen(capture)
			if (length < 0x800) then
				return "~" .. Lib.Encode(0x800 * flag + length, 2)
			else
				return capture
			end
		end)
	end

	function Lib.Implode( str )
		return consolidate(consolidate(str, "0", 0), "%%", 1)
	end

	function Lib.Explode( str )
		return string.gsub(str, "~(..)", function( capture )
			local code = Lib.Decode(capture)
			return string.rep((BitRShift(code, 11) == 0) and "0" or "%", BitAnd(code, 0x7FF))
		end)
	end
end


--------------------------------------------------------------------------------
-- String Chunk/Unchunk
--
-- Accommodation for the 2000-byte limit for strings in saved variables
--------------------------------------------------------------------------------

do
	local CHUNK_SIZE = 0x600

	function Lib.Chunk( str )
		local length = zo_strlen(str)
		if (length <= CHUNK_SIZE) then
			return str
		else
			local result = { }
			local i, j = 1
			while (i <= length) do
				j = i + CHUNK_SIZE
				table.insert(result, zo_strsub(str, i, j - 1))
				i = j
			end
			return result
		end
	end

	function Lib.Unchunk( chunked )
		if (type(chunked) == "string") then
			return chunked
		elseif (type(chunked) == "table") then
			return table.concat(chunked, "")
		else
			return ""
		end
	end
end


--------------------------------------------------------------------------------
-- Concise Server Name
--------------------------------------------------------------------------------

do
	local name = zo_strsplit(" ", GetWorldName())

	function Lib.GetServerName( )
		return name
	end
end


--------------------------------------------------------------------------------
-- Wrapper for EVENT_PLAYER_ACTIVATED
--------------------------------------------------------------------------------

do
	local id = 0

	function Lib.RunAfterInitialLoadscreen( func )
		id = id + 1
		local name = string.format("%s%d_%d", NAME, VERSION, id)
		EVENT_MANAGER:RegisterForEvent(name, EVENT_PLAYER_ACTIVATED, function( ... )
			EVENT_MANAGER:UnregisterForEvent(name, EVENT_PLAYER_ACTIVATED)
			func(...)
		end)
	end
end


--------------------------------------------------------------------------------
-- Slash Command Helpers
--------------------------------------------------------------------------------

function Lib.RegisterSlashCommands( func, ... )
	for _, command in ipairs({ ... }) do
		SLASH_COMMANDS[command] = func
	end
end

function Lib.TokenizeSlashCommandParameters( params )
	local tokens = { }
	if (type(params) == "string") then
		for _, token in ipairs({ zo_strsplit(" ", zo_strlower(params)) }) do
			tokens[token] = true
		end
	end
	return tokens
end
