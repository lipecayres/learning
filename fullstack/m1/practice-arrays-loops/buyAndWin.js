const price = [100, 500, 100,200,350];
let sum = 0;

sale(price);

function sale(prices) {

    let lower = price[0];
    for (let i = 0; i < price.length; i++) {
        sum += price[i];
        if (price[i] < lower) {
            lower = price[i];
        }
    }

    if (price.length >= 5) {
        console.log(`You pay ${sum - lower}`)
    } else {
        console.log(`You pay ${sum}`)

    }

}