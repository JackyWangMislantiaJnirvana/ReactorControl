sleepTime = 5
modules = {}

reactor = peripheral.wrap("nuclear_reactor_#") -- fill in the number
monitor = peripheral.wrap("left")
term.redirect(monitor)

-- modules manager
modules[1] = "/ReactorControl/heat.lua"

-- modules loader
count = #modules
for i = 1, count do
	isSuccess = os.loadAPI(modules[i])
	if isSuccess then
		print("[Load] "..modules[i])
	end
end

-- main structure
while true do
	reactorTemp = heat.getTemp()
  print("Reactor heat".." "..reactorTemps)
  
  sleep(sleepTime)
end
