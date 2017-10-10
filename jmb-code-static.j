


define
{
    
    
    <code static> = 
    {
        library ANONCODE##COUNTER initializer INIT  
            
            private nothing ACTION()
    }
    
    <code set:> = 
    {
            private nothing SETTINGS(trigger toModify)
    }
    
}   


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

    
}   

// modifiers scope
define
{
    <set: disable> = DisableTrigger(toModify)

}   