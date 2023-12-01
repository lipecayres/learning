const original = [3,4,7,8,1,6,5,10];

let newArray = [];
let sum = 0;

for (let i of original){
    if(i %2 ==0){
        newArray.push(i);
        sum+=i;
    }
}

console.log(sum);