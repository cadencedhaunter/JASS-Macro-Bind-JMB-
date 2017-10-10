
/* Headers */
define
{

    /* Anonymous static code */
    <code static> = 
    {
        library ANONCODE##COUNTER initializer INIT  
            
            private nothing ACTION()
    }

    /* Named static code */
    <code static>(NAME) = 
    {
        library NAME initializer INIT  
            
            private nothing ACTION()
    }
    
    <code set:> = 
    {
            private nothing SETTINGS(trigger toModify)
    }
    
}   

/* Events */
define
{

    <code event: initEvent> = 
    {   
            private function INIT takes nothing returns nothing
                ACTION()
                SETTINGS(CreateTrigger())
            endfunction 
        endlibrary
    }
    
    <code event: timerEvent>(FREQ) = 
    {
            public trigger TRIGGER = CreateTrigger()
            
            private function INIT takes nothing returns nothing
                TriggerAddAction(TRIGGER, function ACTION)
                TriggerRegisterTimerEvent(TRIGGER, FREQ, true)
                SETTINGS(TRIGGER)
            endfunction
        endlibrary
    }

    <code event: timerEvent>(FREQ, PERIODIC) = 
    {
            public trigger TRIGGER = CreateTrigger()
            
            private function INIT takes nothing returns nothing
                TriggerAddAction(TRIGGER, function ACTION)
                TriggerRegisterTimerEvent(TRIGGER, FREQ, PERIODIC)
                SETTINGS(TRIGGER)
            endfunction
        endlibrary
    }

    
}   

/* Modifiers */
define
{

    <set: disable> = DisableTrigger(toModify)
    <set: enable>  = EnableTrigger(toModify)

}   
