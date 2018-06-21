MODULE ROS_festo_init
    
LOCAL VAR bool has_been_init := FALSE;

PROC main()
    
    IF (NOT has_been_init) THEN
        ! Initialize Festo
        Festo_init;
        has_been_init := TRUE;
    
        ! TODO: debug + reenable homing
        ! Home Festo
        ! Festo_homing;
        ! WaitTime 5;
        ! Festo_init;
    ENDIF
ENDPROC

ENDMODULE
