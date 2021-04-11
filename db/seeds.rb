
User.create!(email: "stian.a.johansen@gmail.com", password: "123456")

Fag.create!(navn: "kunst og håndverk")

Tema.create!(navn: "søm", fag: Fag.first)

Oppgaver.create!(navn: "ny oppgave", beskrivelse: "stian er best", tema: Tema.last)

Kompetansemaal.create!(navn: "test", beskrivelse: "teste som faen", fag: Fag.last)

Yrke.create!(navn: "Kostyme designer", tema: Tema.first)

Material.create!(navn: "Tråd", yrke: Yrke.last)

Saertrekk.create!(navn: "kjedelig", yrke: Yrke.last)

Verktoy.create!(navn: "nål", yrke: Yrke.last)

Teknikk.create!(navn: "symaskin", yrke: Yrke.last)

Fagutrykk.create!(navn: "test", yrke: Yrke.last)
