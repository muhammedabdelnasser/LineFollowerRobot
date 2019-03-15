#line 1 "C:/Users/zezo/Downloads/Nasser/MyProject.c"
#line 31 "C:/Users/zezo/Downloads/Nasser/MyProject.c"
void Forward()
{
  portB.f2  =  1 ;
  portB.f0  =  1 ;
  portB.f3  =  0 ;
  portB.f1  =  0 ;
  portB.f7  =  1 ;
  portB.f6  =  0 ;
  portB.f4  =  0 ;
  portB.f5  =  0 ;
}
void Backward()
{
  portB.f3  =  1 ;
  portB.f1  =  1 ;
  portB.f2  =  0 ;
  portB.f0  =  0 ;
  portB.f7  =  1 ;
  portB.f6  =  0 ;
  portB.f4  =  0 ;
  portB.f5  =  0 ;
}
void LEFT()
{
  portB.f1  =  1 ;
  portB.f2  =  1 ;
  portB.f0  =  0 ;
  portB.f3  =  0 ;
  portB.f7  =  1 ;
  portB.f6  =  0 ;
  portB.f4  =  0 ;
  portB.f5  =  0 ;
}
void RIGHT()
{
  portB.f2  =  0 ;
  portB.f1  =  0 ;
  portB.f3  =  1 ;
  portB.f0  =  1 ;
  portB.f7  =  1 ;
  portB.f6  =  0 ;
  portB.f4  =  0 ;
  portB.f5  =  0 ;
}

void Motor_off()
{
  portB.f2  =  0 ;
  portB.f0  =  0 ;
  portB.f3  =  0 ;
  portB.f1  =  0 ;
  portB.f7  =  1 ;
  portB.f4  =  0 ;
  portB.f5  =  0 ;
  portB.f6  =  0 ;
}
void Hold()
{
  portB.f7  =  1 ;
  portB.f4  =  0 ;
  portB.f5  =  0 ;
  portB.f6  =  0 ;
}
void Release()
{
  portB.f6  =  1 ;
  portB.f7  =  0 ;
  portB.f4  =  0 ;
  portB.f5  =  0 ;

}
void up()
{
  portB.f4  =  1 ;
  portB.f7  =  0 ;
  portB.f5  =  0 ;
  portB.f6  =  0 ;
}
void down()
{
  portB.f5  =  1 ;
  portB.f7  =  0 ;
  portB.f4  =  0 ;
  portB.f6  =  0 ;
}
void Gripper_OFF()
{
  portB.f5  =  0 ;
  portB.f7  =  0 ;
  portB.f4  =  0 ;
  portB.f5  =  0 ;
}
void OFFF()
{
  portB.f2  =  0 ;
  portB.f0  =  0 ;
  portB.f3  =  0 ;
  portB.f1  =  0 ;
  portB.f7  =  0 ;
  portB.f6  =  0 ;
  portB.f4  =  0 ;
  portB.f5  =  0 ;
}

void manual (){
 while ( portD.f5 == 0 ){

 if(  portC.f0  ==  1  )
 LEFT();
 else if (  portC.f1  ==  1  )
 RIGHT();
 else if (  portC.f2  ==  1  )
 Forward();
 else if (  portC.f3  ==  1  )
 Backward();
 else if (  portD.f4  ==  1  )
 up();
 else if (  portC.f5  ==  1  )
 down();
 else if (  portC.f7  ==  1  )
 Hold() ;
 else if (  portC.f6  ==  1  )
 Release();
 else
 OFFF();
}
}
void autoo () {

 while ( portD.f5 == 1 ){
 if ( portD.f3 == 0 )
 {
 if(  portD.f0 == 1  &&  portD.f1 == 1  &&  portD.f2 == 1  )
 while ( portD.f0 == 1  &&  portD.f1 == 1  &&  portD.f2 == 1 )
 {
 Motor_off();
 up() ;
 Hold() ;
 }
 else if (  portD.f0 == 0  &&  portD.f1 == 1  &&  portD.f2 == 1  )
 while (  portD.f0 == 0  &&  portD.f1 == 1  &&  portD.f2 == 1 )
 {
 LEFT();
 up() ;
 Hold();
 }
 else if (  portD.f0 == 1  &&  portD.f1 == 0  &&  portD.f2 == 1 )
 while(  portD.f0 == 1  &&  portD.f1 == 0  &&  portD.f2 == 1 )
 {
 Forward();
 up() ;
 Hold() ;
 }
 else if (  portD.f0 == 0  &&  portD.f1 == 0  &&  portD.f2 == 1 )
 while ( portD.f0 == 0  &&  portD.f1 == 0  &&  portD.f2 == 1 )
 {
 LEFT();
 up() ;
 Hold() ;
 }
 else if (  portD.f0 == 1  &&  portD.f1 == 1  &&  portD.f2 == 0 )
 while (  portD.f0 == 1  &&  portD.f1 == 1  &&  portD.f2 == 0 )
 {
 RIGHT();
 up() ;
 Hold() ;
 }
 else if (  portD.f0 == 0  &&  portD.f1 == 1  &&  portD.f2 == 0 )
 while (  portD.f0 == 0  &&  portD.f1 == 1  &&  portD.f2 == 0 )
 {
 Forward();
 up() ;
 Hold() ;
 }
 else if ( portD.f0 == 1  &&  portD.f1 == 0  &&  portD.f2 == 0 )
 while ( portD.f1 == 1  &&  portD.f1 == 0  &&  portD.f2 == 1 )
 {
 RIGHT();
 up() ;
 Hold() ;
 }
 else if ( portD.f0 == 0  &&  portD.f1 == 0  &&  portD.f2 == 0 )
 while ( portD.f0 == 0  &&  portD.f1 == 0  &&  portD.f2 == 0 )
 {
 Motor_off();
 up() ;
 Hold() ;
 }
 }

 else if ( portD.f3 == 0 )
 {
 while ( portD.f3 == 1 )
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


 if ( portD.f5 == 1 )
 autoo () ;
 else if ( portD.f5 == 0 )
 manual () ;



}
}
