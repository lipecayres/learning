const hasTicket = true, parentsWith = false;
const ageLimit = 16, age = 8;


if (hasTicket && (age >= ageLimit || parentsWith)) {
    console.log("Access OK");
} else {
    console.log("Access NOT OK");
}