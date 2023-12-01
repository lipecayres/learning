const original = [5,7,13,17,26,34,118,245];

let newArr = [];
for (let i of original){
    if( (i > 10 && i < 20) || i>100 ){
        newArr.push(i);
    }
}
console.log(newArr);