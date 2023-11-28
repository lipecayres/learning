const purchase = 700, installments = 7, interest = 0.01;
const unit = (purchase == 1 ? "real" : "reais");


if (purchase >= 100 && installments == 1) {
    console.log(`You pay now ${purchase * .9}`);
} else if (purchase >= 100 && installments > 1 && installments <= 6) {
    console.log(`You pay now ${installments} installments of ${(purchase / installments).toFixed(2)} ${unit}`);
} else if (purchase >= 100 && installments >= 7 && installments < 12){
    let M = purchase*(1+interest)**installments;
    console.log(`You pay now ${installments} installments of ${(M / installments).toFixed(2)} ${unit}`);
} else {
    console.log(`No discounts`);
}
