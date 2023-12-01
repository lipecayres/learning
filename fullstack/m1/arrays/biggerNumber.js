const numbers = [3,4,1,8,11,7,5];

let greater = numbers[0];

for (let i of numbers) {
    if (i > greater) {
        greater = i;
    }
} 
console.log(greater);