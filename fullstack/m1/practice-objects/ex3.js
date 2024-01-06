const user = {
    name: 'Joao',
    age: 25,
    profession: 'developer',
    favouriteColor: 'green'
}

let message = `Hi... I'm ${user.name} and I'm ${user.age} year's old. I'm a ${user.profession} and my favourite color is ${user['favouriteColor']}`

console.log(message);