import time

while 1 == 1:
	tfile = open("/sys/bus/w1/devices/28-0000075c293f/w1_slave") 
	text = tfile.read() 
	tfile.close() 
	secondline = text.split("\n")[1] 
	temperaturedata = secondline.split(" ")[9] 
	temperature = float(temperaturedata[2:]) 
	temperature = temperature / 1000 
	print temperature
	time.sleep(1)
