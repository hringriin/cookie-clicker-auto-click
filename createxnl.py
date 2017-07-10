#!/usr/bin/python
import io
display=0
xnl_line='{device},{event},0,0,1,0,{display},{timestamp},{suffix}\n'
count=8000
cps=400
starttime=525178000
increment=0
with io.open('test.xnl','w') as f:
    for i in range(0,count):
        f.write(xnl_line.format(device=7,event=4+(1 if (i % 2 == 1) else 0),display=display,timestamp=starttime+increment,suffix='12,TPPS/2 IBM TrackPoint'))
        f.write(xnl_line.format(device=6,event=4+(1 if (i % 2 == 1) else 0),display=display,timestamp=starttime+increment,suffix='2,Virtual core pointer'))
        increment+=5

