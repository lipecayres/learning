const sequence1 = ">>>>>>><";
const imgs = [1,2,3,4,5,6,7];

solution(sequence1);

function solution(sequence) {
    let thisImage = 0;

    for (let i =0;i<sequence.length; i++){
        if (sequence[i] == ">"){
            thisImage++;
        } else if (sequence[i] == "<") {
            thisImage--;
        } 

        if (thisImage >6){
            thisImage = 0;
        } else if (thisImage <0) {
            thisImage = 6;
        }
    }

    console.log(thisImage);
}