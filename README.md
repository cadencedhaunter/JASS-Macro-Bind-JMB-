# JASS-Macro-Bind-JMB-
Event-binding automatization in JASS.

  A system related to process of events and actions binding in JASS. This library exists because of JASS monotonic and time-consuming processes, like spell creating. If you typing same things much times (especially without testing of what you have typed), this would decrease fault tolerance of your code, and it becomes more complicated when World Editor's compiler not always correctly describes wrong code. Here is my version of the solution to this problem. 


  For compatibility purposes, this code does not use any other libraries or other defined macroses like 'void','int','bool', 'float'. Requires NewGen World Editor.

  All the files here are usually text files, can be opened with any text editor. 

Files:
---
  jmb-code-static.j // Contains main part of system (in process, look wiki)
   
  Available events:
        initEvent               - triggers upon initialization
        timerEvent(frequency)   - timer with specified interval (real number)
      
