pragma solidity ^0.4.0;

library Strings{

function concat(string a,string b)constant internal returns (string){
    bytes memory x=bytes(a);
    bytes memory y=bytes(b);//typecasting to bytes equivalent
    
    
    string memory xx=new string(x.length+y.length);//t store string into, after concat
    bytes memory newval=bytes(xx);//to convert the stringsinto bytes format
    
    //in bytes we can pull out individual poisitons eg. a[0] but not possible in stringsinto

    //we'll iteerarte oveerthe x bytes and then add y bytes into the next poisions. for thsi well need a for loop, thats ite
    
uint i;
uint j;//default 0 

for(i=0;i<x.length;i++){
    newval[j++]=x[i];
    
}
for(i=0;i<y.length;i++){
    
    newval[j++]=y[i];
    
}


return string(newval);
    
    
    
    
}
    
}




contract TestString{
    
    using Strings for string;
    
    function test(string x)constant returns (string){//the constant keyword ensures the blockchain that there is not cgoing to be any change to the contract after operation o fthe function, basically no actual transaction of etheres is occuring, to cause any problems
    
        
        return x.concat("hello");//as per property of library, the object calling this methd(in this case, the string itself) wil lautomatically become the first guy in the function concwat(x,y);
        //so here, itll be concat(x,hello);
    } 
}