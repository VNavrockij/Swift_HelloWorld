


class Player {
    
    let name: String
    let game: String
    let age: Int

    var playerInfo: String {
        let playerInfo = """
            Player name is \(name).
            He plays in \(game).
            He is \(age) years old
            """
        return playerInfo
    }
    
    init(name: String, game: String, age: Int) {
        self.name = name
        self.game = game
        self.age = age
    }
}

class ProfessionalPlayer: Player {
    
    let experience: Int
    let retirementAge: Int
    
    init(name: String, game: String, age: Int, experience: Int, retirementAge: Int) {
        self.experience = experience
        self.retirementAge = retirementAge
        
        super.init(name: name, game: game, age: age)

    }

}

extension ProfessionalPlayer: PolitePlayer {
    var friends: [Player] {
        return [Player(name: "Kos", game: "Tennis", age: 25)]
    }
    
    var haveAFriend: Bool {
        return !friends.isEmpty
    }
    
    func smile() {
        print("Let's smile together")
    }
    
    func apologize() -> String {
        print("My apologizes!")
        return "Sorry, bro"
    }
}


protocol PolitePlayer {
    var friends: [Player] { get }
    var haveAFriend: Bool { get }
    
    func smile()
    func apologize() -> String
}

let footballPlayer = ProfessionalPlayer(name: "Egor", game: "Footbal", age: 23, experience: 5, retirementAge: 35)
print(footballPlayer.playerInfo)

footballPlayer.friends
footballPlayer.apologize()
