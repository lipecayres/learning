const text = 'VraAuU';

let counter = 0;

for (let letter of text) {
    if(letter == 'a' || letter == 'A') {
        counter++;
    }
}

console.log(`we have ${counter} letter a in the text`)