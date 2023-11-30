const monthlyIncome = 3_000_00;
const totalPaid = 10_000_00;
const months = 12;
const courseTotalValue = 18_000_00;

let installment = monthlyIncome*.18;

if(months>60 || totalPaid >courseTotalValue){
    console.log("No more payments. Course paid");
} else {
    console.log(`Total paid is ${totalPaid} and your installment is ${installment/100}`)
}