
/* Short declarations */
define
{
    TRIGGER_REGISTER_ALL_PLAYER_EVENTS(EVENT) =
    {
        TriggerRegisterPlayerEvent(TRIGGER, Player(0), EVENT)
        TriggerRegisterPlayerEvent(TRIGGER, Player(1), EVENT)
        TriggerRegisterPlayerEvent(TRIGGER, Player(2), EVENT)
        TriggerRegisterPlayerEvent(TRIGGER, Player(3), EVENT)
        TriggerRegisterPlayerEvent(TRIGGER, Player(4), EVENT)
        TriggerRegisterPlayerEvent(TRIGGER, Player(5), EVENT)
        TriggerRegisterPlayerEvent(TRIGGER, Player(6), EVENT)
        TriggerRegisterPlayerEvent(TRIGGER, Player(7), EVENT)
        TriggerRegisterPlayerEvent(TRIGGER, Player(8), EVENT)
        TriggerRegisterPlayerEvent(TRIGGER, Player(9), EVENT)
        TriggerRegisterPlayerEvent(TRIGGER, Player(10), EVENT)
        TriggerRegisterPlayerEvent(TRIGGER, Player(11), EVENT)
                
    }
}

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
    /* Initialization */
    <code event: initEvent> = 
    {   
            private function INIT takes nothing returns nothing
                ACTION()
                SETTINGS(CreateTrigger())
            endfunction 
        endlibrary
    }
    
    /* Timers */
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
    
    /* Player Events */
    <code event: playerEvent>(PLAYEREVENT) = 
    {
            public trigger TRIGGER = CreateTrigger()
            
            private function INIT takes nothing returns nothing
                TriggerAddAction(TRIGGER, function ACTION)
                TriggerRegisterPlayerEvent(TRIGGER, Player(0), PLAYEREVENT)
                SETTINGS(TRIGGER)
            endfunction
        endlibrary
    }
    
    <code event: playerEvent>(PLAYEREVENT, PLAYER) = 
    {
            public trigger TRIGGER = CreateTrigger()
            
            private function INIT takes nothing returns nothing
                TriggerAddAction(TRIGGER, function ACTION)
                TriggerRegisterPlayerEvent(TRIGGER, PLAYER, PLAYEREVENT)
                SETTINGS(TRIGGER)
            endfunction
        endlibrary
    }
    
    <code event: playerEventAll>(PLAYEREVENT) = 
    {
            public trigger TRIGGER = CreateTrigger()
            
            private function INIT takes nothing returns nothing
                TriggerAddAction(TRIGGER, function ACTION)
                TRIGGER_REGISTER_ALL_PLAYER_EVENTS(PLAYEREVENT)
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
