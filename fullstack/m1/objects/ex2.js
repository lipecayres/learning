let clientName = 'Felipe', age = 30, productName = 'PS5', unitPrice = 699, sold = 1;

const products = [
    {
        productName,
        unitPrice,
        sold
    },
    {
        productName: 'Xbox 360',
        unitPrice: 599,
        sold: 3
    },
    {
        productName: 'Nintendo Switch',
        unitPrice: 459,
        sold: 2
    }
]


const customerCard = {
    clientName,
    age,
    products
}

console.log(`Client name is ${customerCard.clientName} and age is ${customerCard.age}`);

customerCard.age = 32;
console.log(`New age is ${customerCard.age}`);
console.log(`First product is ${products[0].productName}`);
console.log(`Unit price of last product is ${products[2].unitPrice}`);

