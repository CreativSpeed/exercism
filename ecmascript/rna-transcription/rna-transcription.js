class Transcriptor {

  toRna(dna) {
    return dna.toUpperCase()
      .split("")
      .map((strand) => this
        .converter(strand))
      .join("")
  }

  converter(strand) {
    switch (strand) {
      case 'G': {
        return 'C'
        break;
      }
      case 'C': {
        return 'G'
        break;
      }
      case 'T': {
        return 'A'
      }
      case 'A': {
        return 'U'
      }
      default: {
        throw new Error("Invalid input DNA.")
        break;
      }
    }
  }
}

export default Transcriptor;