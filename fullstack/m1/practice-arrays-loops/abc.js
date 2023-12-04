const letter = "m"
const word = [
    "mamao",
    "maca",
    "melao",
    "melancia",
    "laranja"
]

let error = 0;

for (let w of word) {
    let firstLetter = w[0];

    if (firstLetter != letter) {
        error++;
    }
}

console.log(error);