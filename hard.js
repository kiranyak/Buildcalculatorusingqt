// my_button_impl.js
var clickCount = 0;   // this state is separate for each instance of MyButton
var before=[];
var after=[];
var status=true;
var id="";

function add(num){
    if (status===true){
        before.push(num);
    }else{
        after.push(num);
    }

}

function change(){
    status=false;
}

function operation(x,y){

    var bef=x.join('');
    var aft=y.join('');

    if (id==="+"){
        return +bef + +aft;
    }else{
        return bef*aft;
    }
}











