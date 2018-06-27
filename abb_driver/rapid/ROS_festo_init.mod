MODULE ROS_festo_init
    
LOCAL VAR bool has_been_init := FALSE;

PROC main()
    
    IF (NOT has_been_init) THEN
        ! Initialize Festo
        Festo_init;
    
        ! Home Festo
        Festo_homing;
        
        has_been_init := TRUE;
        
        WaitTime 5;
        
        Festo_init;
    ENDIF
ENDPROC

ENDMODULE
