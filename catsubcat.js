var states=new Array();

states['India'] = new Array('Maharashtra','New Delhi','Tamilnadu');
states['Australia'] = new Array('sydney','Victoria','Queensland');
states['United States'] = new Array('California','Florida','New York');

var cities=new Array();
 
cities['India'] =new Array();
cities['India']['Maharashtra']=new Array('Mumbai','Pune');
cities['India']['New Delhi']=new Array('Mustafabad','Krishnaganj');
cities['India']['Tamilnadu']=new Array('chennai','coimbature');

cities['Australia'] =new Array();
cities['Australia']['sydney']=new Array('Mumbai','Pune');
cities['Australia']['Victoria']=new Array('Mustafabad','Krishnaganj');
cities['Australia']['Queensland']=new Array('chennai','coimbature');

cities['United States'] =new Array();
cities['United States']['California']=new Array('Mumbai','Pune');
cities['United States']['Florida']=new Array('Mustafabad','Krishnaganj');
cities['United States']['New York']=new Array('chennai','coimbature');

function setstates()
{
    cntrysel= document.getElementById('country');
    statelist=states[cntrysel.value];
    changeSelect('state',statelist,statelist);
    setcities();
}
function setcities(){
    cntrysel=document.getElementById('country');
    statesel=document.getElementById('state');
    citylist=cities[cntrysel.value][statesel.value];
    changeSelect('city',citylist,citylist);
}
function changeSelect(fieldID,newOptions,newValues){
    selectfield=document.getElementById(fieldID);
    selectfield.options.length=0;
    for(i=0;i<newOptions.length;i++)
    {
        selectfield.options[selectfield.length]=new Option(newOptions[i], newValues[i]);
    }
} 
function addLoadEvent(func){
    var oldonLoad=window.onLoad;
    if(typeof window.onLoad!='function'){
        window.onLoad=func;
        
    }
    else
    {
        window.onLoad=function(){
            if(oldonLoad){
                oldonLoad();
            }
            func();
        }
    }
}
addLoadEvent(function(){
    setstates();
});