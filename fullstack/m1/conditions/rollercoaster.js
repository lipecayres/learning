const age = 18;
const desease = false;
const height = 180;
const student = false;

if(desease || age <= 12 || age >=65 || height < 150) {
    console.log('No access');
} else if (student){
    console.log('You pay 10');
} else {
    console.log('You pay 20')
}