const face1 = 1;
const face2 = 1;

let answer, p;

if(face1 == face2) {
    answer = "YES"

    switch(face1){
        case 0:
            p='WHITE';
            break;
        case 1:
            p='AS';
            break;
        case 2:
            p='TWO';
            break;
        case 3:
            p='TRI';
            break;
        case 4:
            p='TETRA';
            break;
        case 5:
            p='PENTA';
            break;
        case 6:
            p='HEXA';
            break;
        }

        console.log(`${answer}. Is the ${p}`);
} else {
    answer = "NO";
    console.log(`${answer}.`);
}

