const productValue = 1000;
const installmentsQuantity = 10;
const alreadyPaid = 400;

let installments = productValue/installmentsQuantity;
let remainingInstallments = installmentsQuantity - (alreadyPaid/installments);

console.log(`Remaining ${remainingInstallments} installments of ${installments}`) 