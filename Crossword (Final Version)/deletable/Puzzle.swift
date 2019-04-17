//
//  Puzzle.swift
//  deletable
//
//  Created by DANIEL MIRANDA on 4/2/19.
//  Copyright © 2019 Daniel Miranda. All rights reserved.
//

import Foundation
import UIKit

class Puzzle: NSObject {
    var downWordsArray : [String] = [] //array of all the words in a downward direction
    var acrossArray : [String] = [] //array of all the words in the across direction
    var charArray : [Character] = []  //an array with each element being a character in the puzzle when read from left to right and moving downward row by row.
    var downWordLocationDictionary : [String: [Int]] = [:] //Dictionary containing a word in the down direction and its corresponding indices for the fields that word occuppies
    var acrossWordLocationDictionary : [String: [Int]] = [:] //Dictionary containing a word in the across direction and its corresponding indices for the fields that word occuppies
    var downWordCellToWordDictionary: [Int: String] = [:]
    var acrossWordCellToWordDictionary: [Int: String] = [:]
    var downString : String = ""
    var acrossString : String = ""
    var acrossClues : [String: String]
    var downClues : [String: String]
    
//    func printColumns(){
//        for i in 0 ... 12 {
//            for i in stride(from: i, to: 169, by: 13) {
//                print(i)
//            }
//            print("\n\n")
//        }
//    }
	
    init(_ rawPuzzle: (String, [String : String], [String : String])){
        self.acrossString = rawPuzzle.0
        self.acrossClues =  rawPuzzle.1
        self.downClues =  rawPuzzle.2
        var tempString = ""
        
        for index in rawPuzzle.0.indices{
            charArray.append(rawPuzzle.0[index])
        }
        var indexArray : [Int] = [] //array will hold the the locations of of the letters for a given word in the overall puzzle.
        
        //for loop to create an array of across words
        for i in 0..<charArray.count{
            if charArray[i] != "."{ //while we have a letter (and not a period) do this
                tempString.append(charArray[i]) //append current letter to string
                indexArray.append(i) //append current index to the array that will be used to locate where the word is
                    if (i + 1) % 13 == 0 && i != 0 { //checking to see if it has reached the end of the row, so it knows to end the word even if no "." is encountered
                        self.acrossArray.append(tempString) //add word to the word array
                        self.acrossWordLocationDictionary[tempString] = indexArray // map array of indices for each letter of the word to the word in the dictionary
                        indexArray = [] //reinitialize the array to prepare it for the next word
                        tempString = "" // clear the string to begin creation of new word
                    }
            }
            else {
                if tempString == ""{
                    tempString = ""
                }
                else {
                    self.acrossArray.append(tempString)
                    self.acrossWordLocationDictionary[tempString] = indexArray
                    indexArray = []
                    tempString = ""
                }
            }
        }
        
        tempString = ""
        //for loop to create an array of down words
        indexArray = []
        for i in 0 ... 12 {
            for j in stride(from: i, to: 169, by: 13) {
                self.downString.append(charArray[j])
                //case for building a word character by character until a "." is reached (representing a blank in the puzzle)
                if charArray[j] != "."{
                    tempString.append(charArray[j])
                    indexArray.append(j)
                }
                //checking if the end of the column has been reached to mark the end of the word
                if (i + 156) == j && tempString != ""{
                    self.downWordsArray.append(tempString)
                    self.downWordLocationDictionary[tempString] = indexArray
                    indexArray = []
                    tempString = ""
                }
                //marking the end of a word by encountering a "." in the raw string
                if charArray[j] == "." && tempString != ""{
                    self.downWordsArray.append(tempString)
                    self.downWordLocationDictionary[tempString] = indexArray
                    indexArray = []
                    tempString = ""
                }
            }
        }
        for entry in self.downWordLocationDictionary{
//            print("\(entry.key) : \(entry.value)")
            for i in entry.value{
                downWordCellToWordDictionary[i] = entry.key
//                print("\(i) : \(downWordCellToWordDictionary[i]!)")
            }
        }
//        print("__________________________________")
        for entry in self.acrossWordLocationDictionary{
//            print("\(entry.key) : \(entry.value)")
            for i in entry.value{
                acrossWordCellToWordDictionary[i] = entry.key
//                print("\(i) : \(acrossWordCellToWordDictionary[i]!)")
            }
        }
        super.init()
    }
}
