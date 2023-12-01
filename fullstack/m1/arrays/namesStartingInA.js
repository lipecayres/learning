const names = ['Ana', 'Joana', 'Carlos', 'amanda'];

let namesWithA = [];
for (let i of names){
    if (i[0] == 'a' || i[0] == 'A'){
        namesWithA.push(i);
    }
}

console.log(namesWithA);