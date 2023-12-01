const arr = ['*Canis %lupus )familiaris', 'Felis) silvestris *cactus&', '$Ailuropoda@ melanoleuca!'];
for(let i = 0; i< arr.length; i++){

    answer(arr[i]);
}


function answer(badString) {
    const characters = "!@#$%&*()";

    let newText = '';
    let char = ' ';

    for (let i = 0; i < badString.length; i++) {
        char = badString[i];

        for (let j = 0, m = characters.length; j < m; j++) {
            if (badString[i] == characters[j]) {
                char = '';
                break;
            }
        }
        newText += char;
        
    }
    console.log(newText);
}
