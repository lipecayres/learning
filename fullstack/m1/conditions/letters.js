const char = 3;

if(char == 'A' || char == 'E' || char == 'I' || char == 'O' || char == 'U') {
    console.log('Uppercase vowel');
} else if (char == 'a' || char == 'e' || char == 'i' || char == 'o' || char == 'u'){
    console.log('Lowercase vowel');
} else if (!isNaN(char)){
    console.log('Number');
} else {
    console.log('Non vowel letter');
}