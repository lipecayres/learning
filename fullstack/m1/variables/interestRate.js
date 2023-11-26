let interest, capital = 60000, amount = 90000, time = 24;

interest = (amount / capital) ** (1/time)  - 1;

console.log(`Interest rate is ${interest*100}%`);