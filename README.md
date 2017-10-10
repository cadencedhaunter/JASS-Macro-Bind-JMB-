# JASS-Macro-Bind-JMB-
Event-binding automatization in JASS.

  A system related to process of events and actions binding in JASS. This library exists because of JASS monotonic and time-consuming processes, like spell creating. If you typing same things much times (especially without testing of what you have typed), this would decrease fault tolerance of your code, and it becomes more complicated when World Editor's compiler not always correctly describes wrong code. Here is my version of the solution to this problem. 


  For compatibility purposes, this code does not use any other libraries or other defined macroses like 'void','int','bool', 'float'. Requires NewGen World Editor (because system requires cJass and vJass features).

        http://cjass.xgm.guru/manual-en - cJass manual (eng)
        http://cjass.xgm.guru/manual-ru - cJass manual (rus)
        
        http://www.wc3c.net/vexorian/jasshelpermanual.html - vJass manual (eng)

  All the files here are usually text files, can be opened with any text editor and can be imported with cJass by 'include'. 

Files:
---
  jmb-code-static.j - Contains main part of system (in process, look wiki (in progress too))
   
  Available events:
  
        initEvent - triggers upon initialization
  
        timerEvent(frequency) - timer with specified interval (real number)
      
