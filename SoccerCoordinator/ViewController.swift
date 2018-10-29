//
//  ViewController.swift
//  SoccerCoordinator
//
//  Created by Adrian on 12/1/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
  var league = [["Name":"Joe Smith", "Height":"42", "Experience":"Yes", "Guardian":"Jim and Jan Smith"], ["Name":"Jill Tanner", "Height":"36", "Experience":"Yes", "Guardian":"Clara Tanner"], ["Name":"Bill Bon", "Height":"36", "Experience":"Yes", "Guardian":"Sara and Jenny Bon"], ["Name":"Eva Gordon", "Height":"45", "Experience":"No", "Guardian":"Wendy and Mike Gordon"], ["Name":"Matt Gill", "Height":"40", "Experience":"No", "Guardian":"Charles and Sylvia Gill"], ["Name":"Kimmy Stein", "Height":"41", "Experience":"No", "Guardian":"Bill and Hillary Stein"], ["Name":"Sammy Adams", "Height":"45", "Experience":"No", "Guardian":"Jeff Adams"], ["Name":"Karl Saygan", "Height":"42", "Experience":"Yes", "Guardian":"Heather Bledsoe"], ["Name":"Suzane Greenberg", "Height":"44", "Experience":"Yes", "Guardian":"Henrietta Dumas"], ["Name":"Sal Dali", "Height":"41", "Experience":"No", "Guardian":"Gala Dali"], ["Name":"Joe Kavalier", "Height":"39", "Experience":"No", "Guardian":"Sam and Elaine Kavalier"], ["Name":"Ben Finkelstein", "Height":"44", "Experience":"No", "Guardian":"Aaron and Jill Finkelstein"], ["Name":"Diego Soto", "Height":"41", "Experience":"Yes", "Guardian":"Robin and Sarika Soto"], ["Name":"Chloe Alaska", "Height":"47", "Experience":"No", "Guardian":"David and Jamie Alaska"], ["Name":"Arnold Willis", "Height":"43", "Experience":"No", "Guardian":"Claire Willis"], ["Name":"Phillip Helm", "Height":"44", "Experience":"Yes", "Guardian":"Thomas Helm and Eva Jones"], ["Name":"Les Clay", "Height":"42", "Experience":"Yes", "Guardian":"Wynonna Brown"], ["Name":"Herschel Krustofski", "Height":"45", "Experience":"Yes","Guardian":"Hyman and Rachel Krustofski"], ["Name":"Jean-Luc Picard", "Height":"45", "Experience":"Yes", "Guardian":"Maurice Picard and Yvette Gessard"], ["Name":"William T. Riker", "Height":"48", "Experience":"No", "Guardian":"Kyle and Betty Riker"]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dividePlayers()
        divideTeams(firstString: experiencedPlayers, secondString: inexperiencedPlayers)
//        inform(guardians: guardians, teamDragons: teamDragons, teamSharks: teamSharks, teamRaptors: teamRaptors, allPlayers: allPlayers, teamNames: teamNames, timeSlots: timeSlots)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
  
    
    var experiencedPlayersNumber = 0
    var inexperiencedPlayersNumber = 0
    
    
    
    
    
    
    
    // MARK: - Player Roster
    
    var allPlayers = [String]()
    
    var teamNames = [String]()
    
    var teamDragons = [String]()
    
    var teamSharks = [String]()
    
    var teamRaptors = [String]()
    
    var timeSlots = [String]()
    
    //   MARK: - Divide the Teams
    
    var experiencedPlayers = [String]()
    
    var inexperiencedPlayers = [String]()
    
    var guardians = [String]()
    
    func dividePlayers() {
        
        for player in league {
            
            allPlayers.append(player["Name"]!)
            
            for (key, value) in player {
                if (value == "No") {
                    
                    inexperiencedPlayers.append(player["Name"]!)
                    
                    guardians.append(player["Guardian"]!)
                } else if (value == "Yes") {
                    experiencedPlayers.append(player["Name"]!)
                    
                    guardians.append(player["Guardian"]!)
                } else {
                    print("Skip. Error.")
                }
                
                
            }
            
        }
        print("All Players")
        print(allPlayers)
        print("Experienced Players")
        print(experiencedPlayers)
    }
    
    func divideTeams(firstString: [String], secondString: [String]) {
        
        repeat {
            
            teamDragons.append(firstString[inexperiencedPlayersNumber])
            teamNames.append("Dragons")
            timeSlots.append("March 17th, @ 1 PM")
            inexperiencedPlayersNumber = inexperiencedPlayersNumber + 1
        } while teamDragons.count != ((inexperiencedPlayers.count + experiencedPlayers.count) / 6)
        
        repeat {
            
            teamRaptors.append(firstString[inexperiencedPlayersNumber])
            teamNames.append("Raptors")
            timeSlots.append("March 18th, @ 1 PM")
            inexperiencedPlayersNumber = inexperiencedPlayersNumber + 1
        } while teamRaptors.count != ((inexperiencedPlayers.count + experiencedPlayers.count) / 6)
        
        repeat {
            
            teamSharks.append(firstString[inexperiencedPlayersNumber])
            teamNames.append("Sharks")
            timeSlots.append("March 17th, @ 3 PM")
            inexperiencedPlayersNumber = inexperiencedPlayersNumber + 1
        } while teamSharks.count != ((inexperiencedPlayers.count + experiencedPlayers.count) / 6)
        
        repeat {
            
            teamDragons.append(secondString[experiencedPlayersNumber])
            teamNames.append("Dragons")
            timeSlots.append("March 17th, @ 1 PM")
            experiencedPlayersNumber = experiencedPlayersNumber + 1
        } while teamDragons.count != ((inexperiencedPlayers.count + experiencedPlayers.count) / 3)
       
        repeat {
            
            teamRaptors.append(secondString[experiencedPlayersNumber])
            teamNames.append("Raptors")
            timeSlots.append("March 18th, @ 1 PM")
            experiencedPlayersNumber = experiencedPlayersNumber + 1
        } while teamRaptors.count != ((inexperiencedPlayers.count + experiencedPlayers.count) / 3)
        
        
        repeat {
            
            teamSharks.append(secondString[experiencedPlayersNumber ])
            teamNames.append("Sharks")
            timeSlots.append("March 17th, @ 3 PM")
            experiencedPlayersNumber = experiencedPlayersNumber + 1
        } while teamSharks.count != ((inexperiencedPlayers.count + experiencedPlayers.count) / 3)
        
        if (inexperiencedPlayersNumber + experiencedPlayersNumber) != league.count && (team){
            var unevenNumber = 5
            
            while (inexperiencedPlayersNumber + experiencedPlayersNumber) != league.count && unevenNumber == 5 {
                
                teamDragons.append(firstString[experiencedPlayersNumber])
                teamNames.append("Dragons")
                timeSlots.append("March 17th, @ 1 PM")
                experiencedPlayersNumber = experiencedPlayersNumber + 1
                unevenNumber = unevenNumber - 1
            }
            
            while (inexperiencedPlayersNumber + experiencedPlayersNumber) != league.count && unevenNumber == 4  {
                
                teamRaptors.append(firstString[experiencedPlayersNumber])
                teamNames.append("Raptors")
                timeSlots.append("March 18th, @ 1 PM")
               experiencedPlayersNumber = experiencedPlayersNumber + 1
                unevenNumber = unevenNumber - 1
            }
            
            while (inexperiencedPlayersNumber + experiencedPlayersNumber) != league.count && unevenNumber == 3  {
                
                teamSharks.append(firstString[experiencedPlayersNumber])
                teamNames.append("Sharks")
                timeSlots.append("March 17th, @ 3 PM")
               experiencedPlayersNumber = experiencedPlayersNumber + 1
                unevenNumber = unevenNumber - 1
            }
            
            while (inexperiencedPlayersNumber + experiencedPlayersNumber) != league.count && unevenNumber == 2 {
                
                teamDragons.append(firstString[experiencedPlayersNumber])
                teamNames.append("Dragons")
                timeSlots.append("March 17th, @ 1 PM")
                experiencedPlayersNumber = experiencedPlayersNumber + 1
                unevenNumber = unevenNumber - 1
            }
            
            while (inexperiencedPlayersNumber + experiencedPlayersNumber) != league.count && unevenNumber == 1  {
                
                teamRaptors.append(firstString[experiencedPlayersNumber])
                teamNames.append("Raptors")
                timeSlots.append("March 18th, @ 1 PM")
                experiencedPlayersNumber = experiencedPlayersNumber + 1
                unevenNumber = unevenNumber - 1
            }
            
            while (inexperiencedPlayersNumber + experiencedPlayersNumber) != league.count && unevenNumber == 0  {
                
                teamSharks.append(firstString[experiencedPlayersNumber])
                teamNames.append("Sharks")
                timeSlots.append("March 17th, @ 3 PM")
                experiencedPlayersNumber = experiencedPlayersNumber + 1
                unevenNumber = unevenNumber - 1
            }
            
            
            experiencedPlayersNumber = 0
            inexperiencedPlayersNumber = 0
            
        }  else {
            
           
            
            
        }
        
        print("Inexperienced Players")
        print(inexperiencedPlayers)
        print("experienced Players")
        print(experiencedPlayers)
        print("Guardians")
        print(guardians)
        print("The Raptors")
        print(teamRaptors)
        print("The Sharks")
        print(teamSharks)
        print("The Dragons")
        print(teamDragons)
        print("Team Names")
        print(teamNames)
        
        
    }
    
    
    
    
    func inform(guardians letter: [String], teamDragons dragons: [String], teamSharks sharks: [String], teamRaptors raptors: [String], allPlayers: [String], teamNames: [String], timeSlots: [String]) {
        
        var iterateNumber = 0
        
        for message in letter {
            
            print("Hello, \(letter[iterateNumber]). Your child, \(allPlayers[iterateNumber]), has been placed on team \(teamNames[iterateNumber]) and you should attend. Date and time are: \(timeSlots[iterateNumber])")
            iterateNumber = iterateNumber + 1
        }
    }
    
//    dividePlayers()
//    divideTeams(firstString: experiencedPlayers, secondString: inexperiencedPlayers)
    //        inform(guardians: guardians, teamDragons: teamDragons, teamSharks: teamSharks, teamRaptors: teamRaptors, allPlayers: allPlayers, teamNames: teamNames, timeSlots: timeSlots)
    
    
    
    
    
    
    
    
    
    
    
    
    
    


    }

  










