#define on 1
#define off 0
// out gripper on motors
#define gripper_up portB.f4
#define gripper_down portB.f5
//output end effector on motors
#define gripper_hold  portB.f7
#define gripper_realese portB.f6
//output on motors of motions 
#define M1_forward portB.f2
#define M1_backward portB.f3
#define M2_forward  portB.f0
#define M2_backward portB.f1
// inputs from sensors
#define LDR_LEFT portD.f2
#define LDR_RIGHT portD.f0
#define LDR_CENTRE portD.f1
#define LDR_FRONT  portD.f3
// inputs CONTROL AUTOO OR MANUAL
#define Button_Auto portD.f5
// inputs from remote
#define Button_LEFT portC.f0
#define Button_RIGHT portC.f1
#define Button_Forward portC.f2
#define Button_backward portC.f3
#define Button_gripper_up portD.f4
#define Button_gripper_down portC.f5
#define Button_gripper_realese portC.f6
#define Button_gripper_hold portC.f7

void Forward()
{
    M1_forward = on;
    M2_forward = on;
    M1_backward = off; //
    M2_backward = off; //
    gripper_hold = on; //
    gripper_realese = off;
    gripper_up = off;
    gripper_down = off;
}
void Backward()
{
    M1_backward = on;
    M2_backward = on;
    M1_forward = off;    //
    M2_forward = off;
    gripper_hold = on;   //
    gripper_realese = off;
    gripper_up = off;
    gripper_down = off;     //
}
void LEFT()
{
    M2_backward = on;
    M1_forward = on;
    M2_forward = off;       //
    M1_backward = off;        //
    gripper_hold = on;        //
    gripper_realese = off;
    gripper_up = off;
    gripper_down = off;
}
void RIGHT()
{
     M1_forward = off;            //
     M2_backward = off;         //
     M1_backward = on;
     M2_forward = on;
     gripper_hold = on;
     gripper_realese = off;
     gripper_up = off;
     gripper_down = off;
}

void Motor_off()
{
      M1_forward = off;
      M2_forward = off;
      M1_backward = off;
      M2_backward = off;
      gripper_hold = on;
      gripper_up =  off;            //
      gripper_down = off;             //
      gripper_realese = off;            //
}
void Hold()
{
     gripper_hold = on;
     gripper_up =  off;                   //
     gripper_down = off;                   //
     gripper_realese = off;                //
}
void Release()
{
      gripper_realese = on;
      gripper_hold = off;              //
      gripper_up =  off;               //
      gripper_down = off;               //

}
void up()
{
      gripper_up = on;
      gripper_hold = off;              //
      gripper_down = off;              //
      gripper_realese = off;           //
}
void down()
{
      gripper_down = on;
      gripper_hold = off;              //
      gripper_up =  off;               //
      gripper_realese = off;           //
}
void Gripper_OFF()
{
      gripper_down = off;
      gripper_hold = off;
      gripper_up =  off;
      gripper_down = off;
}
void OFFF()
{
      M1_forward = off;
      M2_forward = off;
      M1_backward = off;
      M2_backward = off;
      gripper_hold = off;
      gripper_realese = off;
      gripper_up = off;
      gripper_down = off;
}

void manual (){
               while (Button_Auto==off){

               if( Button_LEFT == on )
               LEFT();
               else if ( Button_RIGHT == on )
               RIGHT();
               else if ( Button_Forward == on )
               Forward();
               else if ( Button_backward == on )
               Backward();
               else if ( Button_gripper_up == on )
               up();
               else if ( Button_gripper_down == on )
               down();
               else if ( Button_gripper_hold == on )
               Hold() ;
               else if ( Button_gripper_realese == on )
               Release();
               else
               OFFF();
}
}
void autoo () {

               while (Button_Auto==on){
               if (LDR_FRONT==off)//
               {
              if( LDR_RIGHT==on && LDR_CENTRE==on && LDR_LEFT==on )
              while (LDR_RIGHT==on && LDR_CENTRE==on && LDR_LEFT==on)
              {
                    Motor_off();
                     up() ;
                    Hold() ;
              }
              else if ( LDR_RIGHT==off && LDR_CENTRE==on && LDR_LEFT==on )
              while ( LDR_RIGHT==off && LDR_CENTRE==on && LDR_LEFT==on)
              {
                    LEFT();
                     up() ;
                    Hold();
              }
              else if ( LDR_RIGHT==on && LDR_CENTRE==off && LDR_LEFT==on)
              while( LDR_RIGHT==on && LDR_CENTRE==off && LDR_LEFT==on)
              {
                   Forward();
                   up() ;
                    Hold() ;
              }
              else if ( LDR_RIGHT==off && LDR_CENTRE==off && LDR_LEFT==on)
              while  (LDR_RIGHT==off && LDR_CENTRE==off && LDR_LEFT==on)
              {
                    LEFT();
                    up() ;
                    Hold() ;
              }
               else if ( LDR_RIGHT==on && LDR_CENTRE==on && LDR_LEFT==off)
              while ( LDR_RIGHT==on && LDR_CENTRE==on && LDR_LEFT==off)
              {
                    RIGHT();
                    up() ;
                    Hold() ;
              }
               else if ( LDR_RIGHT==off && LDR_CENTRE==on && LDR_LEFT==off)
              while ( LDR_RIGHT==off && LDR_CENTRE==on && LDR_LEFT==off)
              {
                    Forward();
                    up() ;
                    Hold() ;
              }
               else if (LDR_RIGHT==on && LDR_CENTRE==off && LDR_LEFT==off)
              while (LDR_CENTRE==on && LDR_CENTRE==off && LDR_LEFT==on)
              {
                    RIGHT();
                    up() ;
                    Hold() ;
              }
               else if (LDR_RIGHT==off && LDR_CENTRE==off && LDR_LEFT==off)
              while (LDR_RIGHT==off && LDR_CENTRE==off && LDR_LEFT==off)
              {
                    Motor_off();
                    up() ;
                    Hold() ;
              }
              }

              else if (LDR_FRONT==off)  //
              {
              while (LDR_FRONT==on)
              {
                    Motor_off();
                    up() ;
                    Hold() ;
                    Delay_ms(3000);
                    Release();
                    Delay_ms(3000);
                    Backward();
                    Delay_ms(3000);
                    OFFF();

                     return ;
              }
              }
              else
               {
               Motor_off();
               Hold() ;
               }

            }
            }


//void Automatic ()
//void manual()
void main()
{
ADCON1=7;
CMCON=7;
TRISB=0 ;
TRISC=1 ;
TRISD=0b00111111 ;
PORTB=0 ;
PORTC=0 ;
PORTD=0 ;
while(1)
{

        
         if (Button_Auto==on)
            autoo ()  ;
         else if (Button_Auto==off)
            manual () ;



}
}