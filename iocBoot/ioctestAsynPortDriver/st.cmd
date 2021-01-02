dbLoadDatabase("../../dbd/testAsynPortDriver.dbd")
testAsynPortDriver_registerRecordDeviceDriver(pdbbase)

# Turn on asynTraceFlow and asynTraceError for global trace, i.e. no connected asynUser.
asynSetTraceMask("", 0, 17)

testAsynPortDriverConfigure("testAPD", 1000, 8)

dbLoadRecords("../../db/testAsynPortDriver.db","P=testAPD:,R=scope1:,PORT=testAPD,ADDR=0,TIMEOUT=1,NPOINTS=1000")
dbLoadRecords("../../db/asynWaveform.db","P=testAPD:,R=scope1:,PORT=testAPD,CH=1,ADDR=0,TIMEOUT=1,NPOINTS=1000")
dbLoadRecords("../../db/asynWaveform.db","P=testAPD:,R=scope1:,PORT=testAPD,CH=2,ADDR=1,TIMEOUT=1,NPOINTS=1000")
dbLoadRecords("../../db/asynWaveform.db","P=testAPD:,R=scope1:,PORT=testAPD,CH=3,ADDR=2,TIMEOUT=1,NPOINTS=1000")
dbLoadRecords("../../db/asynWaveform.db","P=testAPD:,R=scope1:,PORT=testAPD,CH=4,ADDR=3,TIMEOUT=1,NPOINTS=1000")
dbLoadRecords("../../db/asynWaveform.db","P=testAPD:,R=scope1:,PORT=testAPD,CH=5,ADDR=4,TIMEOUT=1,NPOINTS=1000")
dbLoadRecords("../../db/asynWaveform.db","P=testAPD:,R=scope1:,PORT=testAPD,CH=6,ADDR=5,TIMEOUT=1,NPOINTS=1000")
dbLoadRecords("../../db/asynWaveform.db","P=testAPD:,R=scope1:,PORT=testAPD,CH=7,ADDR=6,TIMEOUT=1,NPOINTS=1000")
dbLoadRecords("../../db/asynWaveform.db","P=testAPD:,R=scope1:,PORT=testAPD,CH=8,ADDR=7,TIMEOUT=1,NPOINTS=1000")
dbLoadRecords("../../db/asynRecord.db","P=testAPD:,R=asyn1,PORT=testAPD,ADDR=0,OMAX=80,IMAX=80")
#asynSetTraceMask("testAPD",0,0xff)
#asynSetTraceIOMask("testAPD",0,0x2)
iocInit()
