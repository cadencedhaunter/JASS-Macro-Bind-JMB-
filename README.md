# JASS-Macro-Bind-JMB-
Event-binding automatization in JASS.

  A system related to process of events and actions binding in JASS. This library exists because of JASS monotonic and time-consuming processes, like spell creating. If you typing same things much times (especially without testing of what you have typed), this would decrease fault tolerance of your code, and it becomes more complicated when World Editor's compiler not always correctly describes wrong code. Here is my version of the solution to this problem. 


  For compatibility purposes, this code does not use any other libraries or other defined macroses like 'void','int','bool', 'float'. Requires NewGen World Editor (because system requires cJass and vJass features).

        http://cjass.xgm.guru/manual-en - cJass manual (eng)
        http://cjass.xgm.guru/manual-ru - cJass manual (rus)
        
        http://www.wc3c.net/vexorian/jasshelpermanual.html - vJass manual (eng)

  All the files here are usual text files, can be opened with any text editor and can be imported with cJass by 'include'. 

Syntax:
---
  Syntax example: 
  
    
    code static{
      /* Actions block, any code */ 
    }
      code set: { /* special modifiers */}
      code event: [event]([params]) // Event, which triggers Action's block
   
  Example of use:
    
    code static{
      BJDebugMsg("Hello world!");
    }
      code set: { /* nothing to modify */ }
      code event: initEvent
   
  The result of this simple example is the output of a message "Hello world!" (function BJDebugMsg("text")) on the screen (on map start, 'initEvent').

  In this examples static code is anonymous (name is not declarated, in this case WorldEditor automatically generating unique name. It's useful, when it hard to choose name by yourself or name is not neccesary). But static code fragments like this can interact between themselves by using their names. So when static code is anonymous, it's becomes harder to set up interactions to other code fragments.
  
  Example of naming:
    
    code static(helloWorldCode){
      BJDebugMsg("Hello world!");
    }
      code set: {}
      code event: initEvent
  
  Naming of static code is limited for some technical reasons. Using underscore '_' in name of static code will cause an error (related to vJass), so there is no way of naming static code in snake_case-style (static_code_scope), but camelCase-style is still available (staticCodeScope or StaticCodeScope).
  
 

Files:
---
  jmb-code-static.j - Contains main part of system (in process, look wiki (in progress too))
   
  Available events:
  
        initEvent - triggers upon initialization;
  
        timerEvent(frequency[, isPeriodic]) - timer with specified interval (real) [is timer periodic, true by default];
        
        playerEvent(event[, player]) - any player events [player to apply, Player(0) by default];
        
        playerEventAll(event) - apply to all players.
        
  Available modifiers:
  
        set: enable/disable - enables/disables on event triggering in static code where it described;
      
