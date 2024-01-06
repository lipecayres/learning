const users = [
    {
        name: 'Joao',
        age: 25
    },
    {
        name: 'Ana',
        age: 18
    },
    {
        name: 'Beatriz',
        age: 15
    },
    {
        name: 'Carlos',
        age: 16
    },
    {
        name: 'Antonio',
        age: 32
    }
]

for (const user of users) {
    if (user.age > 17) {
        user.aboveAge = true;
    } else {
        user.aboveAge = false;
    }
}

console.log(users)