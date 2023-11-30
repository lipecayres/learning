const paymentType = 'credit';
const productValue = 130_00;

let price;

if (paymentType == 'credit') {
    price = productValue*.95;
} else if (paymentType == 'check'){
    price = productValue*.97;
} else {
    price*.9;
}

console.log(`Price is ${(price/100).toFixed(2)}`);