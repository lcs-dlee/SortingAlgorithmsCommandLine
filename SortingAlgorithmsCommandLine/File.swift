//
//  main.swift
//  SortingAlgorithmsCommandLine
//
//  Created by Gordon, Russell on 2018-02-26.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// --------------- Convenience functions ---------------

// Generates a random number between the minimum and maximum values given (inclusive)
func random(between min: UInt32, and max: UInt32) -> Int {
    return Int(arc4random_uniform(max - min + 1) + min)
}

// ----------- Start of main part of program -----------

// Ask the user if they are ready to begin
print("Press any key to generate the unsorted list.", terminator: "")

// Wait for a key to be pressed
let input = readLine()

// Make an empty array / list
var numbers : [Int] = []

// Populate the array
for _ in 1...10 {
    numbers.append( random(between: 1, and: 50) )
}

// Show the user the contents of the array
print("-----")
print("The contents of the unsorted list:")
for i in 0...numbers.count - 1 {
    print("Index \(i), value: \(numbers[i])")
}
print("-----")

// ----------- Write code to sort the array here -----------


var sortedNumbers : [Int] = []
var lowest = 0
var indexLowest = 0

//
for _ in 0...numbers.count - 1 {
    
    // The first number in the array is put into a variable
    lowest = numbers[0]
    
    // The first variable is compaired to each other index in the array
    for i in 0...numbers.count - 1{
        
        // if the initial lowest number is bigger than a value then the value becomes the new lowest
        if lowest >= numbers[i] {
            lowest = numbers[i]
            
            indexLowest = i
            
        }
        
    }
    
    
    // Removes the lowest value from the initial array after appending it to a new array
    sortedNumbers.append(lowest)
    numbers.remove(at: indexLowest)
    
    
}




// ----------- Final part of the program, show the sorted list -----------
print("-----")
print("The contents of the sorted list:")
for i in 0...numbers.count - 1 {
    print("Index \(i), value: \(numbers[i])")
}
print("-----")
