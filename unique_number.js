/*Write a function called findUnique which returns the only unique number from an array.
 #All numbers in the unsorted array are present twice, except the one you have to find.
 #The numbers are always valid integer values between 1 and 2147483647, so no need for
 #type and error checking. The array contains at least one number and may contain millions
 #of numbers. So make sure your solution is optimized for speed.
 #Example
 #Input:
 #[ 1, 8, 4, 4, 6, 1, 8 ]
 #Expected output:
 #6*/

function findUnique(numbers) {
    if(numbers.length == 1){
        return numbers[0]
    }else{
        numbers.sort(function(x,y){return x-y})
        for(var i = 0; i<numbers.length-2;i++){
            if (numbers[i]!=numbers[i+1]){
                return numbers[i]
            }else{
                i++;
            }
        }
    }
}

/*
 function findUnique(numbers) {
 return numbers.reduce((a, b) => a ^ b);
 }
 */