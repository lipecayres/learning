const numbers = [54,22, 10,14,87,284]

let indx = numbers.indexOf(10);

if (indx == -1) {
    console.log('No number 10')    
} else{
    console.log(`Index of 10 is ${indx}`);
}