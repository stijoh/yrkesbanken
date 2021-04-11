
User.create!(email: "stian.a.johansen@gmail.com", password: "123456")

Subject.create!(title: "kunst og håndverk")

Topic.create!(title: "søm", subject: Subject.first)

Task.create!(title: "ny oppgave", description: "stian er best", topic: Topic.last)

Goal.create!(title: "test", description: "teste som faen", subject: Subject.last)

Profession.create!(title: "Kostyme designer", topic: Topic.first)

Material.create!(title: "Tråd", profession: Profession.last)

Feature.create!(title: "kjedelig", profession: Profession.last)

Tool.create!(title: "nål", profession: Profession.last)

Technique.create!(title: "symaskin", profession: Profession.last)

Term.create!(title: "test", profession: Profession.last)
