const height = 195;

if(height <180){
    console.log('refused');
} else if (height <=185) {
    console.log('libero');
}else if (height <=195) {
    console.log('pointer player');
}else if (height <=205) {
    console.log('side player');
}else if (height > 205) {
    console.log('central');
}