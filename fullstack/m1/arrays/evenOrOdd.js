const arr = [1,2,3,4,5,6,7,8,9,10];

let even = []; 
let odd = [];

for (let i of arr){
    if( i%2 == 0) {
        even.push(i)
    } else {
        odd.push(i)
    }
}

console.log(even + '\n' + odd)