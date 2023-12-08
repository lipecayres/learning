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

console.log(customerCard);