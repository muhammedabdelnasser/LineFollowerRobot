
_Forward:

;MyProject.c,31 :: 		void Forward()
;MyProject.c,33 :: 		M1_forward = on;
	BSF        PORTB+0, 2
;MyProject.c,34 :: 		M2_forward = on;
	BSF        PORTB+0, 0
;MyProject.c,35 :: 		M1_backward = off; //
	BCF        PORTB+0, 3
;MyProject.c,36 :: 		M2_backward = off; //
	BCF        PORTB+0, 1
;MyProject.c,37 :: 		gripper_hold = on; //
	BSF        PORTB+0, 7
;MyProject.c,38 :: 		gripper_realese = off;
	BCF        PORTB+0, 6
;MyProject.c,39 :: 		gripper_up = off;
	BCF        PORTB+0, 4
;MyProject.c,40 :: 		gripper_down = off;
	BCF        PORTB+0, 5
;MyProject.c,41 :: 		}
L_end_Forward:
	RETURN
; end of _Forward

_Backward:

;MyProject.c,42 :: 		void Backward()
;MyProject.c,44 :: 		M1_backward = on;
	BSF        PORTB+0, 3
;MyProject.c,45 :: 		M2_backward = on;
	BSF        PORTB+0, 1
;MyProject.c,46 :: 		M1_forward = off;    //
	BCF        PORTB+0, 2
;MyProject.c,47 :: 		M2_forward = off;
	BCF        PORTB+0, 0
;MyProject.c,48 :: 		gripper_hold = on;   //
	BSF        PORTB+0, 7
;MyProject.c,49 :: 		gripper_realese = off;
	BCF        PORTB+0, 6
;MyProject.c,50 :: 		gripper_up = off;
	BCF        PORTB+0, 4
;MyProject.c,51 :: 		gripper_down = off;     //
	BCF        PORTB+0, 5
;MyProject.c,52 :: 		}
L_end_Backward:
	RETURN
; end of _Backward

_LEFT:

;MyProject.c,53 :: 		void LEFT()
;MyProject.c,55 :: 		M2_backward = on;
	BSF        PORTB+0, 1
;MyProject.c,56 :: 		M1_forward = on;
	BSF        PORTB+0, 2
;MyProject.c,57 :: 		M2_forward = off;       //
	BCF        PORTB+0, 0
;MyProject.c,58 :: 		M1_backward = off;        //
	BCF        PORTB+0, 3
;MyProject.c,59 :: 		gripper_hold = on;        //
	BSF        PORTB+0, 7
;MyProject.c,60 :: 		gripper_realese = off;
	BCF        PORTB+0, 6
;MyProject.c,61 :: 		gripper_up = off;
	BCF        PORTB+0, 4
;MyProject.c,62 :: 		gripper_down = off;
	BCF        PORTB+0, 5
;MyProject.c,63 :: 		}
L_end_LEFT:
	RETURN
; end of _LEFT

_RIGHT:

;MyProject.c,64 :: 		void RIGHT()
;MyProject.c,66 :: 		M1_forward = off;            //
	BCF        PORTB+0, 2
;MyProject.c,67 :: 		M2_backward = off;         //
	BCF        PORTB+0, 1
;MyProject.c,68 :: 		M1_backward = on;
	BSF        PORTB+0, 3
;MyProject.c,69 :: 		M2_forward = on;
	BSF        PORTB+0, 0
;MyProject.c,70 :: 		gripper_hold = on;
	BSF        PORTB+0, 7
;MyProject.c,71 :: 		gripper_realese = off;
	BCF        PORTB+0, 6
;MyProject.c,72 :: 		gripper_up = off;
	BCF        PORTB+0, 4
;MyProject.c,73 :: 		gripper_down = off;
	BCF        PORTB+0, 5
;MyProject.c,74 :: 		}
L_end_RIGHT:
	RETURN
; end of _RIGHT

_Motor_off:

;MyProject.c,76 :: 		void Motor_off()
;MyProject.c,78 :: 		M1_forward = off;
	BCF        PORTB+0, 2
;MyProject.c,79 :: 		M2_forward = off;
	BCF        PORTB+0, 0
;MyProject.c,80 :: 		M1_backward = off;
	BCF        PORTB+0, 3
;MyProject.c,81 :: 		M2_backward = off;
	BCF        PORTB+0, 1
;MyProject.c,82 :: 		gripper_hold = on;
	BSF        PORTB+0, 7
;MyProject.c,83 :: 		gripper_up =  off;            //
	BCF        PORTB+0, 4
;MyProject.c,84 :: 		gripper_down = off;             //
	BCF        PORTB+0, 5
;MyProject.c,85 :: 		gripper_realese = off;            //
	BCF        PORTB+0, 6
;MyProject.c,86 :: 		}
L_end_Motor_off:
	RETURN
; end of _Motor_off

_Hold:

;MyProject.c,87 :: 		void Hold()
;MyProject.c,89 :: 		gripper_hold = on;
	BSF        PORTB+0, 7
;MyProject.c,90 :: 		gripper_up =  off;                   //
	BCF        PORTB+0, 4
;MyProject.c,91 :: 		gripper_down = off;                   //
	BCF        PORTB+0, 5
;MyProject.c,92 :: 		gripper_realese = off;                //
	BCF        PORTB+0, 6
;MyProject.c,93 :: 		}
L_end_Hold:
	RETURN
; end of _Hold

_Release:

;MyProject.c,94 :: 		void Release()
;MyProject.c,96 :: 		gripper_realese = on;
	BSF        PORTB+0, 6
;MyProject.c,97 :: 		gripper_hold = off;              //
	BCF        PORTB+0, 7
;MyProject.c,98 :: 		gripper_up =  off;               //
	BCF        PORTB+0, 4
;MyProject.c,99 :: 		gripper_down = off;               //
	BCF        PORTB+0, 5
;MyProject.c,101 :: 		}
L_end_Release:
	RETURN
; end of _Release

_up:

;MyProject.c,102 :: 		void up()
;MyProject.c,104 :: 		gripper_up = on;
	BSF        PORTB+0, 4
;MyProject.c,105 :: 		gripper_hold = off;              //
	BCF        PORTB+0, 7
;MyProject.c,106 :: 		gripper_down = off;              //
	BCF        PORTB+0, 5
;MyProject.c,107 :: 		gripper_realese = off;           //
	BCF        PORTB+0, 6
;MyProject.c,108 :: 		}
L_end_up:
	RETURN
; end of _up

_down:

;MyProject.c,109 :: 		void down()
;MyProject.c,111 :: 		gripper_down = on;
	BSF        PORTB+0, 5
;MyProject.c,112 :: 		gripper_hold = off;              //
	BCF        PORTB+0, 7
;MyProject.c,113 :: 		gripper_up =  off;               //
	BCF        PORTB+0, 4
;MyProject.c,114 :: 		gripper_realese = off;           //
	BCF        PORTB+0, 6
;MyProject.c,115 :: 		}
L_end_down:
	RETURN
; end of _down

_Gripper_OFF:

;MyProject.c,116 :: 		void Gripper_OFF()
;MyProject.c,118 :: 		gripper_down = off;
	BCF        PORTB+0, 5
;MyProject.c,119 :: 		gripper_hold = off;
	BCF        PORTB+0, 7
;MyProject.c,120 :: 		gripper_up =  off;
	BCF        PORTB+0, 4
;MyProject.c,121 :: 		gripper_down = off;
	BCF        PORTB+0, 5
;MyProject.c,122 :: 		}
L_end_Gripper_OFF:
	RETURN
; end of _Gripper_OFF

_OFFF:

;MyProject.c,123 :: 		void OFFF()
;MyProject.c,125 :: 		M1_forward = off;
	BCF        PORTB+0, 2
;MyProject.c,126 :: 		M2_forward = off;
	BCF        PORTB+0, 0
;MyProject.c,127 :: 		M1_backward = off;
	BCF        PORTB+0, 3
;MyProject.c,128 :: 		M2_backward = off;
	BCF        PORTB+0, 1
;MyProject.c,129 :: 		gripper_hold = off;
	BCF        PORTB+0, 7
;MyProject.c,130 :: 		gripper_realese = off;
	BCF        PORTB+0, 6
;MyProject.c,131 :: 		gripper_up = off;
	BCF        PORTB+0, 4
;MyProject.c,132 :: 		gripper_down = off;
	BCF        PORTB+0, 5
;MyProject.c,133 :: 		}
L_end_OFFF:
	RETURN
; end of _OFFF

_manual:

;MyProject.c,135 :: 		void manual (){
;MyProject.c,136 :: 		while (Button_Auto==off){
L_manual0:
	BTFSC      PORTD+0, 5
	GOTO       L_manual1
;MyProject.c,138 :: 		if( Button_LEFT == on )
	BTFSS      PORTC+0, 0
	GOTO       L_manual2
;MyProject.c,139 :: 		LEFT();
	CALL       _LEFT+0
	GOTO       L_manual3
L_manual2:
;MyProject.c,140 :: 		else if ( Button_RIGHT == on )
	BTFSS      PORTC+0, 1
	GOTO       L_manual4
;MyProject.c,141 :: 		RIGHT();
	CALL       _RIGHT+0
	GOTO       L_manual5
L_manual4:
;MyProject.c,142 :: 		else if ( Button_Forward == on )
	BTFSS      PORTC+0, 2
	GOTO       L_manual6
;MyProject.c,143 :: 		Forward();
	CALL       _Forward+0
	GOTO       L_manual7
L_manual6:
;MyProject.c,144 :: 		else if ( Button_backward == on )
	BTFSS      PORTC+0, 3
	GOTO       L_manual8
;MyProject.c,145 :: 		Backward();
	CALL       _Backward+0
	GOTO       L_manual9
L_manual8:
;MyProject.c,146 :: 		else if ( Button_gripper_up == on )
	BTFSS      PORTD+0, 4
	GOTO       L_manual10
;MyProject.c,147 :: 		up();
	CALL       _up+0
	GOTO       L_manual11
L_manual10:
;MyProject.c,148 :: 		else if ( Button_gripper_down == on )
	BTFSS      PORTC+0, 5
	GOTO       L_manual12
;MyProject.c,149 :: 		down();
	CALL       _down+0
	GOTO       L_manual13
L_manual12:
;MyProject.c,150 :: 		else if ( Button_gripper_hold == on )
	BTFSS      PORTC+0, 7
	GOTO       L_manual14
;MyProject.c,151 :: 		Hold() ;
	CALL       _Hold+0
	GOTO       L_manual15
L_manual14:
;MyProject.c,152 :: 		else if ( Button_gripper_realese == on )
	BTFSS      PORTC+0, 6
	GOTO       L_manual16
;MyProject.c,153 :: 		Release();
	CALL       _Release+0
	GOTO       L_manual17
L_manual16:
;MyProject.c,155 :: 		OFFF();
	CALL       _OFFF+0
L_manual17:
L_manual15:
L_manual13:
L_manual11:
L_manual9:
L_manual7:
L_manual5:
L_manual3:
;MyProject.c,156 :: 		}
	GOTO       L_manual0
L_manual1:
;MyProject.c,157 :: 		}
L_end_manual:
	RETURN
; end of _manual

_autoo:

;MyProject.c,158 :: 		void autoo () {
;MyProject.c,160 :: 		while (Button_Auto==on){
L_autoo18:
	BTFSS      PORTD+0, 5
	GOTO       L_autoo19
;MyProject.c,161 :: 		if (LDR_FRONT==off)//
	BTFSC      PORTD+0, 3
	GOTO       L_autoo20
;MyProject.c,163 :: 		if( LDR_RIGHT==on && LDR_CENTRE==on && LDR_LEFT==on )
	BTFSS      PORTD+0, 0
	GOTO       L_autoo23
	BTFSS      PORTD+0, 1
	GOTO       L_autoo23
	BTFSS      PORTD+0, 2
	GOTO       L_autoo23
L__autoo112:
;MyProject.c,164 :: 		while (LDR_RIGHT==on && LDR_CENTRE==on && LDR_LEFT==on)
L_autoo24:
	BTFSS      PORTD+0, 0
	GOTO       L_autoo25
	BTFSS      PORTD+0, 1
	GOTO       L_autoo25
	BTFSS      PORTD+0, 2
	GOTO       L_autoo25
L__autoo111:
;MyProject.c,166 :: 		Motor_off();
	CALL       _Motor_off+0
;MyProject.c,167 :: 		up() ;
	CALL       _up+0
;MyProject.c,168 :: 		Hold() ;
	CALL       _Hold+0
;MyProject.c,169 :: 		}
	GOTO       L_autoo24
L_autoo25:
	GOTO       L_autoo28
L_autoo23:
;MyProject.c,170 :: 		else if ( LDR_RIGHT==off && LDR_CENTRE==on && LDR_LEFT==on )
	BTFSC      PORTD+0, 0
	GOTO       L_autoo31
	BTFSS      PORTD+0, 1
	GOTO       L_autoo31
	BTFSS      PORTD+0, 2
	GOTO       L_autoo31
L__autoo110:
;MyProject.c,171 :: 		while ( LDR_RIGHT==off && LDR_CENTRE==on && LDR_LEFT==on)
L_autoo32:
	BTFSC      PORTD+0, 0
	GOTO       L_autoo33
	BTFSS      PORTD+0, 1
	GOTO       L_autoo33
	BTFSS      PORTD+0, 2
	GOTO       L_autoo33
L__autoo109:
;MyProject.c,173 :: 		LEFT();
	CALL       _LEFT+0
;MyProject.c,174 :: 		up() ;
	CALL       _up+0
;MyProject.c,175 :: 		Hold();
	CALL       _Hold+0
;MyProject.c,176 :: 		}
	GOTO       L_autoo32
L_autoo33:
	GOTO       L_autoo36
L_autoo31:
;MyProject.c,177 :: 		else if ( LDR_RIGHT==on && LDR_CENTRE==off && LDR_LEFT==on)
	BTFSS      PORTD+0, 0
	GOTO       L_autoo39
	BTFSC      PORTD+0, 1
	GOTO       L_autoo39
	BTFSS      PORTD+0, 2
	GOTO       L_autoo39
L__autoo108:
;MyProject.c,178 :: 		while( LDR_RIGHT==on && LDR_CENTRE==off && LDR_LEFT==on)
L_autoo40:
	BTFSS      PORTD+0, 0
	GOTO       L_autoo41
	BTFSC      PORTD+0, 1
	GOTO       L_autoo41
	BTFSS      PORTD+0, 2
	GOTO       L_autoo41
L__autoo107:
;MyProject.c,180 :: 		Forward();
	CALL       _Forward+0
;MyProject.c,181 :: 		up() ;
	CALL       _up+0
;MyProject.c,182 :: 		Hold() ;
	CALL       _Hold+0
;MyProject.c,183 :: 		}
	GOTO       L_autoo40
L_autoo41:
	GOTO       L_autoo44
L_autoo39:
;MyProject.c,184 :: 		else if ( LDR_RIGHT==off && LDR_CENTRE==off && LDR_LEFT==on)
	BTFSC      PORTD+0, 0
	GOTO       L_autoo47
	BTFSC      PORTD+0, 1
	GOTO       L_autoo47
	BTFSS      PORTD+0, 2
	GOTO       L_autoo47
L__autoo106:
;MyProject.c,185 :: 		while  (LDR_RIGHT==off && LDR_CENTRE==off && LDR_LEFT==on)
L_autoo48:
	BTFSC      PORTD+0, 0
	GOTO       L_autoo49
	BTFSC      PORTD+0, 1
	GOTO       L_autoo49
	BTFSS      PORTD+0, 2
	GOTO       L_autoo49
L__autoo105:
;MyProject.c,187 :: 		LEFT();
	CALL       _LEFT+0
;MyProject.c,188 :: 		up() ;
	CALL       _up+0
;MyProject.c,189 :: 		Hold() ;
	CALL       _Hold+0
;MyProject.c,190 :: 		}
	GOTO       L_autoo48
L_autoo49:
	GOTO       L_autoo52
L_autoo47:
;MyProject.c,191 :: 		else if ( LDR_RIGHT==on && LDR_CENTRE==on && LDR_LEFT==off)
	BTFSS      PORTD+0, 0
	GOTO       L_autoo55
	BTFSS      PORTD+0, 1
	GOTO       L_autoo55
	BTFSC      PORTD+0, 2
	GOTO       L_autoo55
L__autoo104:
;MyProject.c,192 :: 		while ( LDR_RIGHT==on && LDR_CENTRE==on && LDR_LEFT==off)
L_autoo56:
	BTFSS      PORTD+0, 0
	GOTO       L_autoo57
	BTFSS      PORTD+0, 1
	GOTO       L_autoo57
	BTFSC      PORTD+0, 2
	GOTO       L_autoo57
L__autoo103:
;MyProject.c,194 :: 		RIGHT();
	CALL       _RIGHT+0
;MyProject.c,195 :: 		up() ;
	CALL       _up+0
;MyProject.c,196 :: 		Hold() ;
	CALL       _Hold+0
;MyProject.c,197 :: 		}
	GOTO       L_autoo56
L_autoo57:
	GOTO       L_autoo60
L_autoo55:
;MyProject.c,198 :: 		else if ( LDR_RIGHT==off && LDR_CENTRE==on && LDR_LEFT==off)
	BTFSC      PORTD+0, 0
	GOTO       L_autoo63
	BTFSS      PORTD+0, 1
	GOTO       L_autoo63
	BTFSC      PORTD+0, 2
	GOTO       L_autoo63
L__autoo102:
;MyProject.c,199 :: 		while ( LDR_RIGHT==off && LDR_CENTRE==on && LDR_LEFT==off)
L_autoo64:
	BTFSC      PORTD+0, 0
	GOTO       L_autoo65
	BTFSS      PORTD+0, 1
	GOTO       L_autoo65
	BTFSC      PORTD+0, 2
	GOTO       L_autoo65
L__autoo101:
;MyProject.c,201 :: 		Forward();
	CALL       _Forward+0
;MyProject.c,202 :: 		up() ;
	CALL       _up+0
;MyProject.c,203 :: 		Hold() ;
	CALL       _Hold+0
;MyProject.c,204 :: 		}
	GOTO       L_autoo64
L_autoo65:
	GOTO       L_autoo68
L_autoo63:
;MyProject.c,205 :: 		else if (LDR_RIGHT==on && LDR_CENTRE==off && LDR_LEFT==off)
	BTFSS      PORTD+0, 0
	GOTO       L_autoo71
	BTFSC      PORTD+0, 1
	GOTO       L_autoo71
	BTFSC      PORTD+0, 2
	GOTO       L_autoo71
L__autoo100:
;MyProject.c,206 :: 		while (LDR_CENTRE==on && LDR_CENTRE==off && LDR_LEFT==on)
L_autoo72:
	BTFSS      PORTD+0, 1
	GOTO       L_autoo73
	BTFSC      PORTD+0, 1
	GOTO       L_autoo73
	BTFSS      PORTD+0, 2
	GOTO       L_autoo73
L__autoo99:
;MyProject.c,208 :: 		RIGHT();
	CALL       _RIGHT+0
;MyProject.c,209 :: 		up() ;
	CALL       _up+0
;MyProject.c,210 :: 		Hold() ;
	CALL       _Hold+0
;MyProject.c,211 :: 		}
	GOTO       L_autoo72
L_autoo73:
	GOTO       L_autoo76
L_autoo71:
;MyProject.c,212 :: 		else if (LDR_RIGHT==off && LDR_CENTRE==off && LDR_LEFT==off)
	BTFSC      PORTD+0, 0
	GOTO       L_autoo79
	BTFSC      PORTD+0, 1
	GOTO       L_autoo79
	BTFSC      PORTD+0, 2
	GOTO       L_autoo79
L__autoo98:
;MyProject.c,213 :: 		while (LDR_RIGHT==off && LDR_CENTRE==off && LDR_LEFT==off)
L_autoo80:
	BTFSC      PORTD+0, 0
	GOTO       L_autoo81
	BTFSC      PORTD+0, 1
	GOTO       L_autoo81
	BTFSC      PORTD+0, 2
	GOTO       L_autoo81
L__autoo97:
;MyProject.c,215 :: 		Motor_off();
	CALL       _Motor_off+0
;MyProject.c,216 :: 		up() ;
	CALL       _up+0
;MyProject.c,217 :: 		Hold() ;
	CALL       _Hold+0
;MyProject.c,218 :: 		}
	GOTO       L_autoo80
L_autoo81:
L_autoo79:
L_autoo76:
L_autoo68:
L_autoo60:
L_autoo52:
L_autoo44:
L_autoo36:
L_autoo28:
;MyProject.c,219 :: 		}
	GOTO       L_autoo84
L_autoo20:
;MyProject.c,221 :: 		else if (LDR_FRONT==off)  //
	BTFSC      PORTD+0, 3
	GOTO       L_autoo85
;MyProject.c,223 :: 		while (LDR_FRONT==on)
	BTFSS      PORTD+0, 3
	GOTO       L_autoo87
;MyProject.c,225 :: 		Motor_off();
	CALL       _Motor_off+0
;MyProject.c,226 :: 		up() ;
	CALL       _up+0
;MyProject.c,227 :: 		Hold() ;
	CALL       _Hold+0
;MyProject.c,228 :: 		Delay_ms(3000);
	MOVLW      16
	MOVWF      R11+0
	MOVLW      57
	MOVWF      R12+0
	MOVLW      13
	MOVWF      R13+0
L_autoo88:
	DECFSZ     R13+0, 1
	GOTO       L_autoo88
	DECFSZ     R12+0, 1
	GOTO       L_autoo88
	DECFSZ     R11+0, 1
	GOTO       L_autoo88
	NOP
	NOP
;MyProject.c,229 :: 		Release();
	CALL       _Release+0
;MyProject.c,230 :: 		Delay_ms(3000);
	MOVLW      16
	MOVWF      R11+0
	MOVLW      57
	MOVWF      R12+0
	MOVLW      13
	MOVWF      R13+0
L_autoo89:
	DECFSZ     R13+0, 1
	GOTO       L_autoo89
	DECFSZ     R12+0, 1
	GOTO       L_autoo89
	DECFSZ     R11+0, 1
	GOTO       L_autoo89
	NOP
	NOP
;MyProject.c,231 :: 		Backward();
	CALL       _Backward+0
;MyProject.c,232 :: 		Delay_ms(3000);
	MOVLW      16
	MOVWF      R11+0
	MOVLW      57
	MOVWF      R12+0
	MOVLW      13
	MOVWF      R13+0
L_autoo90:
	DECFSZ     R13+0, 1
	GOTO       L_autoo90
	DECFSZ     R12+0, 1
	GOTO       L_autoo90
	DECFSZ     R11+0, 1
	GOTO       L_autoo90
	NOP
	NOP
;MyProject.c,233 :: 		OFFF();
	CALL       _OFFF+0
;MyProject.c,235 :: 		return ;
	GOTO       L_end_autoo
;MyProject.c,236 :: 		}
L_autoo87:
;MyProject.c,237 :: 		}
	GOTO       L_autoo91
L_autoo85:
;MyProject.c,240 :: 		Motor_off();
	CALL       _Motor_off+0
;MyProject.c,241 :: 		Hold() ;
	CALL       _Hold+0
;MyProject.c,242 :: 		}
L_autoo91:
L_autoo84:
;MyProject.c,244 :: 		}
	GOTO       L_autoo18
L_autoo19:
;MyProject.c,245 :: 		}
L_end_autoo:
	RETURN
; end of _autoo

_main:

;MyProject.c,250 :: 		void main()
;MyProject.c,252 :: 		ADCON1=7;
	MOVLW      7
	MOVWF      ADCON1+0
;MyProject.c,253 :: 		CMCON=7;
	MOVLW      7
	MOVWF      CMCON+0
;MyProject.c,254 :: 		TRISB=0 ;
	CLRF       TRISB+0
;MyProject.c,255 :: 		TRISC=1 ;
	MOVLW      1
	MOVWF      TRISC+0
;MyProject.c,256 :: 		TRISD=0b00111111 ;
	MOVLW      63
	MOVWF      TRISD+0
;MyProject.c,257 :: 		PORTB=0 ;
	CLRF       PORTB+0
;MyProject.c,258 :: 		PORTC=0 ;
	CLRF       PORTC+0
;MyProject.c,259 :: 		PORTD=0 ;
	CLRF       PORTD+0
;MyProject.c,260 :: 		while(1)
L_main92:
;MyProject.c,264 :: 		if (Button_Auto==on)
	BTFSS      PORTD+0, 5
	GOTO       L_main94
;MyProject.c,265 :: 		autoo ()  ;
	CALL       _autoo+0
	GOTO       L_main95
L_main94:
;MyProject.c,266 :: 		else if (Button_Auto==off)
	BTFSC      PORTD+0, 5
	GOTO       L_main96
;MyProject.c,267 :: 		manual () ;
	CALL       _manual+0
L_main96:
L_main95:
;MyProject.c,271 :: 		}
	GOTO       L_main92
;MyProject.c,272 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
