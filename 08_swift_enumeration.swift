enum Houses {
    case Arryn
    case Baratheon
    case Greyjoy
    case Lannister
    case Martell
    case Stark
    case Targaryen
    case Tully
    case Tyrell
}

func displayHouseWords(family: Houses){
    switch family
    {
    case .Arryn:
        print("As High as Honor")
    case .Baratheon:
        print("Ours is the fury")
    case .Greyjoy:
        print("We Do Not Sow")
    case .Lannister:
        print("A Lannister always pays his debts")
    case .Martell:
        print("Unbowed, Unbent, Unbroken")
    case .Stark:
        print("Winter is Coming")
    case .Targaryen:
        print("Fire and Blood")
    case .Tully:
        print("Family, Duty, Honor")
    case .Tyrell:
        print("Growing Strong")
    }
}

displayHouseWords(family: Houses.Targaryen)
