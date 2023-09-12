#!/bin/bash
# Turns off RGB on kingstone fury ddr5 models, more info here: https://gitlab.com/CalcProgrammer1/OpenRGB/-/issues/2879
ram1addr=0x63
ram2addr=0x61

i2cset -y 0 $ram1addr 0x08 0x53
sleep 0.020
i2cset -y 0 $ram1addr 0x09 0x00
sleep 0.020
i2cset -y 0 $ram1addr 0x31 0xff
sleep 0.020
i2cset -y 0 $ram1addr 0x32 0xff
sleep 0.020
i2cset -y 0 $ram1addr 0x33 0xff
sleep 0.020
i2cset -y 0 $ram1addr 0x20 0x00
sleep 0.020
i2cset -y 0 $ram1addr 0x08 0x44

sleep 0.020
i2cset -y 0 $ram2addr 0x08 0x53
sleep 0.020
i2cset -y 0 $ram2addr 0x09 0x00
sleep 0.020
i2cset -y 0 $ram2addr 0x31 0xff
sleep 0.020
i2cset -y 0 $ram2addr 0x32 0xff
sleep 0.020
i2cset -y 0 $ram2addr 0x33 0xff
sleep 0.020
i2cset -y 0 $ram2addr 0x20 0x00
sleep 0.020
i2cset -y 0 $ram2addr 0x08 0x44