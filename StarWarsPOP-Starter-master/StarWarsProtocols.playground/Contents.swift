
/*:
 Place your refactored structs below:
 */
protocol MasterSkills {
    func lightSaberSkill() -> Int
    func telekinesis() -> Int
    func prescience() -> Int
}

extension MasterSkills {
    func lightSaberSkill() -> Int { return 8 }
    func telekinesis() -> Int { return 5 }
    func prescience() -> Int { return 5 }
}

protocol DarthSkills {
    func forceChoke() -> Bool
    func forceLightning() -> Bool
}

extension DarthSkills {
    func forceChoke() -> Bool { return true }
}

protocol JediStrings {
    func introspection() -> String
    func mindControl() -> String
}

extension JediStrings {
    func introspection() -> String { return "Search your feelings." }
}

// Structs

struct MasterYoda: JediStrings {
  func lightSaberSkill() -> Int { return 8 }
  func telekinesis() -> Int { return 9 }
  func prescience() -> Int { return 5 }
  func mindControl() -> String { return "Do or do not." }
}

struct MasterObiWan: JediStrings, MasterSkills {
  func mindControl() -> String { return "These are not the droids you're looking for." }
}

struct MasterQuiGon: MasterSkills {
  func mindControl() -> String { return "Republic credits will do." }
  func introspection() -> String { return "Feel, don’t think. Trust your instincts." }
}

struct DarthVader: DarthSkills {
  func lightSaberSkill() -> Int { return 9 }
  func telekinesis() -> Int { return 8 }
  func prescience() -> Int { return 5 }
  func forceLightning() -> Bool { return false }
}

struct DarthSidious: DarthSkills {
  func lightSaberSkill() -> Int { return 8 }
  func telekinesis() -> Int { return 7 }
  func prescience() -> Int { return 6 }
  func forceLightning() -> Bool { return true }
}

struct DarthTyrannous {
  func lightSaberSkill() -> Int { return 8 }
  func telekinesis() -> Int { return 5 }
  func prescience() -> Int { return 5 }
  func forceChoke() -> Bool { return false }
  func forceLightning() -> Bool { return true }
}
