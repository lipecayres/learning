const original = [1,4,12,21,53,88,112];

let newArray = [];

for (let i of original){
    if(i %2 ==0){
        newArray.push(i);
    }
}

console.log(newArray);