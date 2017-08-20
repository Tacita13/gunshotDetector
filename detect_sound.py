import time
import RPi.GPIO as GPIO

def add_event(file):
        with open(file, "r") as rnf:
                exec(rnf.read())

GPIO.setmode(GPIO.BOARD)
pin=7

GPIO.setup(pin, GPIO.IN)

count=0
while True:
        if GPIO.input(pin) == GPIO.HIGH:
                add_event("add_event.py")
                print "sound " + str(count)
                count+=1
                time.sleep(.050)
