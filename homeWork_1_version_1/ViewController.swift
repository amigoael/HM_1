//
//  ViewController.swift
//  homeWork_1_version_1
//
//  Created by Anton Lebedev on 09.07.17.
//  Copyright © 2017 Anton Lebedev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        homeWork1()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func homeWork1() {
        
        let elementsOfArray = 1000000
        
        //Array_Append
        
        printLongSpacing()
        printDoubleSpacing()
        print ("Array_Append")
        printSpacing()
        
        var array: Array<Int>
        array = []
        printStartСollection ()
        print(array.count,"elements!")
        
        let timeCheckStartAppend = NSDate()
        
        printCheckStart()
        print(timeCheckStartAppend)
        printSpacing()
        
        for _ in 1...elementsOfArray {
            array.append(1)
        }
        
        let timeAppending = timeCheckStartAppend.timeIntervalSinceNow
        
        let timeCheckFinishAppend = NSDate()
        
        printCheckFinish()
        printFinishСollection()
        print(array.count,"elements!")
        print(timeCheckFinishAppend)
        printSpacing()
        print("Time for Appending \(timeAppending*1000) milliseconds")
        printDoubleSpacing()
        
        //Array_Middle
        
        printLongSpacing ()
        printDoubleSpacing()
        print ("Array_Middle")
        printSpacing()
        
        array = []
        
        var midleIndex: Int
        
        printStartСollection()
        print(array.count,"elements!")
        
        let timeCheckStartMiddle = NSDate()
        
        printCheckStart()
        print(timeCheckStartMiddle)
        printSpacing()
        
        for _ in 1...elementsOfArray {
            midleIndex = array.count / 2
            array.insert(1, at: midleIndex)
        }
        
        let timeMidle = timeCheckStartMiddle.timeIntervalSinceNow
        
        let timeCheckFinishMiddle = NSDate()
        
        printCheckFinish()
        printFinishСollection()
        print(array.count,"elements!")
        print(timeCheckFinishMiddle)
        printSpacing()
        print("Time for Middle \(timeMidle*1000) milliseconds")
        printDoubleSpacing()
        
        //Array_ZeroIndex
        
        printLongSpacing()
        printDoubleSpacing()
        print ("Array_ZeroIndex")
        printSpacing()
        
        array = []
        
        printStartСollection()
        print(array.count,"elements!")
        
        let timeCheckStartZeroIndex = NSDate()
        printCheckStart()
        print(timeCheckStartZeroIndex)
        printSpacing()
        
        for _ in 1...elementsOfArray {
            array.insert(1, at: 0)
        }
        
        let timeZeroIndex = timeCheckStartZeroIndex.timeIntervalSinceNow
        
        let timeCheckFinishZeroIndex = NSDate()
        
        printCheckFinish()
        printFinishСollection()
        print(array.count,"elements!")
        print(timeCheckFinishZeroIndex)
        printSpacing()
        print("Time for ZeroIndex \(timeZeroIndex*1000) milliseconds")
        printDoubleSpacing()
        
        //DeleteArray
        
        printLongSpacing()
        printSpacing()
        print ("DeleteArray")
        printSpacing()
        
        array = []
        
        for _ in 1...elementsOfArray {
            array.append(1)
        }
     
        printStartСollection()
        print(array.count,"elements!")
        
        let timeCheckStartDeleteArray = NSDate()
        
        printCheckStart()
        print(timeCheckStartDeleteArray)
        printSpacing()

        for _ in array {
            var delete = array.removeLast()
        }
        
        let timeDeleteArray = timeCheckStartDeleteArray.timeIntervalSinceNow
        
        let timeCheckFinishDeleteArray = NSDate()
        
        printCheckFinish()
        printFinishСollection()
        print(array.count,"elements!")
        print(timeCheckFinishDeleteArray)
        printSpacing()
        print("Time for DeleteArray \(timeDeleteArray*1000) milliseconds")
        printDoubleSpacing()
        
        //DeleteDictionary
        
        printLongSpacing()
        printSpacing()
        print ("DeleteDictionary")
        printSpacing()
        
        var dictionary = [Int: String]()
        
        let elementsOfDictionary = elementsOfArray
        
        var key = 1
        var keyValue = 2
        
        for _ in 1...elementsOfDictionary {
            dictionary[key] = "D+\(keyValue)"
            key += 1
            keyValue += 1
        }
        
        printStartСollection()
        print(dictionary.count,"elements!")
        
        let timeCheckStartDeleteDictionary = NSDate()
        printCheckStart()
        print(timeCheckStartDeleteDictionary)
        printSpacing()
        
        key = 1
        
        for _ in 1...dictionary.count {
            dictionary.removeValue(forKey: key)
            key += 1
        }
        
        let timeDeleteDictionary = timeCheckStartDeleteArray.timeIntervalSinceNow
        
        let timeCheckFinishDeleteDictionary = NSDate()
        
        printCheckFinish()
        printFinishСollection()
        print(array.count,"elements!")
        print(timeCheckFinishDeleteDictionary)
        printSpacing()
        print("Time for DeleteDictionary \(timeDeleteDictionary*1000) milliseconds")
        printDoubleSpacing()
        
        
        //DeleteSet
        

        printLongSpacing()
        printSpacing()
        print ("DeleteSet")
        printSpacing()
        
        var set = Set<String>()
        
        let elementsOfSet = elementsOfArray
        
        var keySet = 1
        
        for _ in 1...elementsOfSet {
            set.insert("S +\(keySet)")
            keySet += 1
        }
        
        printStartСollection()
        print(dictionary.count,"elements!")
        
        let timeCheckStartDeleteSet = NSDate()
        printCheckStart()
        print(timeCheckStartDeleteSet)
        printSpacing()
        
        keySet = 1
        
        for _ in 1...set.count {
            set.remove("S +\(keySet)")
            key += 1
        }
        
        let timeDeleteSet = timeCheckStartDeleteSet.timeIntervalSinceNow
        
        let timeCheckFinishDeleteSet = NSDate()
        
        printCheckFinish()
        printFinishСollection()
        print(array.count,"elements!")
        print(timeCheckFinishDeleteSet)
        printSpacing()
        print("Time for DeleteSet \(timeDeleteSet*1000) milliseconds")
        printDoubleSpacing()
        
        
        print("OK")
        
    }
}

