let insideLine = ['a', 'b', 'c'];
let outsideLine = ['d', 'e', 'f', 'g'];

while (insideLine.length < 5) {
    if (outsideLine[0] != undefined) {
        insideLine.push(outsideLine[0]);
        outsideLine.shift();
    } else{
        break;
    }
}

console.log(insideLine + '\n' + outsideLine);