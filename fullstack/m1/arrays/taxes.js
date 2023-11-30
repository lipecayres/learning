const retired = false;
const desease = false;
const income = 30_000_00; // cents

if(retired || desease) {
    console.log("No taxes")
} else if (income < 28_559_70) {
    console.log("No, you are poor")
} else {
    console.log("You pay")

}