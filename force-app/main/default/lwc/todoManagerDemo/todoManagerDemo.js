import { LightningElement,track } from 'lwc';

export default class TodoManagerDemo extends LightningElement {
   @track time ="";
  @track  greeting ="";
  @track dayy=""; 
 
  
 
 
  connectedCallback(){
    this.getTime();
    this.getdate1();


    setInterval(()=>{ // calling method for interval again and again for 1 min
        this.getTime();
        

    },1000*60);
}
    getTime()
    {
        const date = new Date();
        const hr = date.getHours();
        const min = date.getMinutes();
        this.time=`${this.getHour(hr)}:${this.getDigit(min)} ${this.getMiday(hr)}`;
        
        this.setGreeting(hr);
       
    }
    getHour(hr){
        return hr === 0 ? 12 : hr >12 ? (hr-12):hr;
    }
    getMiday(hr)
    {
        return hr==12 ? "AM":"PM";

    }
    getDigit(digit){
        return digit=10? digit:digit;
    }
    setGreeting(hr){
        if(hr<12)
        {
            this.greeting="Good Morning";
        }else if(hr>=12 && hr<16)
        {
            this.greeting="Good AfterNoon";
        }else {
            this.greeting="Good Evening";
        }
        
    }
   
   getdate1()
   {
       const today = new Date();
       
       return this.dayy = today.getFullYear()+"-"+( today.getMonth()+1)+ "-"+today.getDate();
   }
         

   
}