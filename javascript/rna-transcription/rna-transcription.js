class DnaTranscriber {
    toRna(dna){
        // return if string is empty;
        if(!dna || dna.length < 0) return;

        // array to push value found on switch case statement
        let rnaArry = [];

        // convert to uppercase for switch match
        dna = dna.toUpperCase();

        for(var i=0; i < dna.length; i++){
            switch (dna[i]) {
                case 'G':
                    rnaArry.push('C');
                break;
                case 'C':
                    rnaArry.push('G');
                break;
                case 'T':
                    rnaArry.push('A');
                break;
                case 'A':
                    rnaArry.push('U');
                break;
                default:
                // throw error if the input don't match the formula
                    throw new Error("Invalid input");
                break;
            }
        }
        // return string of value from array
        if(rnaArry.length > 0) return rnaArry.join("");
    }
}

module.exports = DnaTranscriber;