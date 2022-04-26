# frozen_string_literal: true
GameScore.destroy_all
Game.destroy_all
Team.destroy_all

ppp = Team.create(name: "Pat's Pallino Pals", abbreviation: "PPP")
blt = Team.create(name: "Bocce League Team", abbreviation: "BLT")
inc = Team.create(name: "Inchworms", abbreviation: "INC")
hot = Team.create(name: "Hot Rollers", abbreviation: "HOT")

g = Game.create(venue: "Wyman Park")
GameScore.create(game: g, team: blt, score: 9, win: false)
GameScore.create(game: g, team: hot, score: 11, win: true)

g = Game.create(venue: "Wyman Park")
GameScore.create(game: g, team: ppp, score: 9, win: false)
GameScore.create(game: g, team: inc, score: 11, win: true)
#===================
g = Game.create(venue: "Wyman Park")
GameScore.create(game: g, team: hot, score: 2, win: false)
GameScore.create(game: g, team: inc, score: 15, win: true)

g = Game.create(venue: "Wyman Park")
GameScore.create(game: g, team: blt, score: 12, win: false)
GameScore.create(game: g, team: ppp, score: 13, win: true)
#===================
g = Game.create(venue: "Wyman Park")
GameScore.create(game: g, team: ppp, score: 5, win: false)
GameScore.create(game: g, team: hot, score: 13, win: true)

g = Game.create(venue: "Wyman Park")
GameScore.create(game: g, team: blt, score: 6, win: false)
GameScore.create(game: g, team: inc, score: 15, win: true)