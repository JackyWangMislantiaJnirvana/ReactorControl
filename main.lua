-- init variables
sleepTime = 2
modules = {}

-- init peripherals
reactor = peripheral.wrap("nuclear_reactor_3")
monitor = peripheral.wrap("left")
term.redirect(monitor)
print("[Log]Peripherals connected.")

-- modules manager
modules[1] = "/ReactorControl/heat.lua"
print("[Log]Modules are ready to be loaded.")

-- modules loader
count = #modules
for i = 1, count do
	isSuccess = os.loadAPI(modules[i])
	if isSuccess then
		print("[Load] "..modules[i])
	end
end
print("[Log]Modules are loaded.")

-- clear the term for the GUI
sleep(sleepTime)
term.clear()

-- main structure
while true do
	reactorTemp = heat.getTemp()
  --Todo:A GUI
  sleep(sleepTime)
end
