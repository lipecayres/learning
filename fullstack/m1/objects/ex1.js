const person = {
    name: 'Felipe',
    age: 30,
    height: 184,
    hasDriverLicence: true,
    nicknames: ['Lipe', 'Fe']
}

driverLicenseCondition = person.hasDriverLicence == true ? "has DL" : "don't have DL";

console.log(
    `${person.name} has ${person.age} years, ${person.height}cm height, ${driverLicenseCondition} and these nicknames: `);

person['nicknames'].forEach(element => {
    console.log("- " + element);
});