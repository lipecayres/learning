const numbers = [8,11,4,1];

let greater = lower = numbers[0];

for (let i of numbers) {
    if (i > greater) {
        greater = i;
    } 

    if (i < lower){
        lower = i;
    }
} 
console.log(greater - lower);