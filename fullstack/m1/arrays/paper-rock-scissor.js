const move1 = 'paper';
const move2 = 'paper';

if(move1 === move2) {
    console.log('tie');
} else if (move1 === 'rock' && move2 === 'scissor' ){
    console.log('rock wins');
} else if (move1 === 'scissor' && move2 === 'rock' ){
    console.log('rock wins');
} else if (move1 === 'rock' && move2 === 'paper' ){
    console.log('paper wins');
} else if (move1 === 'paper' && move2 === 'rock' ){
    console.log('paper wins');
} else if (move1 === 'paper' && move2 === 'scissor' ){
    console.log('scissor wins');
} else if (move1 === 'scissor' && move2 === 'paper' ){
    console.log('scissor wins');
}
 
