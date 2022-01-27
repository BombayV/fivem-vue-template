U = {}

---A wrapper for sending NUI messages which allows
---to send messages to Vue's virtual DOM or UI.
---@param type string - The type/action of message to send.
---@param data any - The data to send to the UI
U.UiMessage = function(type, data, cursor)
  SendNUIMessage({
    type = type,
    data = data
  })
  SetNuiFocus(cursor, cursor)
end

local resourceName = GetCurrentResourceName()
local debugIsEnabled = GetConvarInt(("%s_debug"):format(resourceName), 0) == 1

---A wrapper for logging messages to the console.
---It will not return anything unless the debug mode is enabled.
---@param ... any - The messages to log
U.DebugPrint = function(...)
  if not debugIsEnabled then return end
  local args <const> = {...}
  local rStr = ''
  for _, v in pairs(args) do
    rStr = rStr .. tostring(v) .. ' '
  end
  local rMessage = ("^2[%s] ^0%s"):format(resourceName, rStr)
  print(rMessage)
end

---A function to return a number as a float.
---@param num number - The number to convert to a float
---@return number - The number as a float
U.ToFloat = function(num)
  return tonumber(num) + 0.0
end

--Create a function that reverses the order of a table
--@param tbl table - The table to reverse
--@return table - The reversed table
U.ReverseTable = function(tbl)
  local reversedTable = {}
  local itemCount = #tbl
  for k, v in ipairs(tbl) do
    reversedTable[itemCount + 1 - k] = v
  end
  return reversedTable
end

---Allow the use of the Utils table in other resources
---@return table - The Utils table
exports('U', function()
  return U
end)