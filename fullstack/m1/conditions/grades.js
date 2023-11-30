const grade = 8.5;

let newGrade;

if (grade <4){
    newGrade = 'E'
} else if (grade <6){
    newGrade = 'D';
}else if (grade <8){
    newGrade = 'C';
}else if (grade <9){
    newGrade = 'B';
}else {
    newGrade = 'A';
}


console.log(`Student grade is ${newGrade}`);