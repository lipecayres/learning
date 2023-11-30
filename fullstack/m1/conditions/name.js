const firstName = 'Mario';
const lastName = '', nickname = '';

if(nickname){
    console.log(nickname);
} else if (lastName){
    console.log(`${firstName} ${lastName}`);
} else {
    console.log(firstName);
}