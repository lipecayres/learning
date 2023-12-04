const prices = [5, 10, 3]

let difference = 99999999999999;

for (let i = 0; i < prices.length; i++) {
    for (let j = i + 1; j < prices.length; j++) {
        let newDifference = prices[i] - prices[j]
        
        if (newDifference >0) {

            if (newDifference < difference) {
                difference = newDifference;
            }
        }
    }
}

console.log(difference);