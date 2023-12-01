const letters = ['A', 'a', 'B', 'C', 'L', 'z', 'e']

let counter = 0;

for (let i of letters){
    if(i == 'e' || i == 'E'){
        counter++;
    }
}

console.log(`Number of letters e our E is ${counter}`)