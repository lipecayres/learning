const waterAmount = 2;

let message;

if (waterAmount<1.5){
    message = 'HIGH';
} else if (waterAmount <3) {
    message = 'MODERATE';
} else {
    message = 'HIGH';
}

console.log(`Your water consumption is ${message}`);