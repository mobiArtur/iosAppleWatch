//
//  InterfaceController.swift
//  iosAppleWatch WatchKit Extension
//
//  Created by admin on 18.11.2015.
//  Copyright © 2015 admin. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet var sldSlider: WKInterfaceSlider!
    @IBOutlet var pkPicker: WKInterfacePicker!
    @IBOutlet var lbLabel: WKInterfaceLabel!
    
    
    var pickerItem0 = WKPickerItem()
    var pickerItem1 = WKPickerItem()
    var pickerItem2 = WKPickerItem()
    var pickerItem3 = WKPickerItem()
    
    var itemArray = ["CPU", "GPU", "HDD", "SSD"]
    
    var sliderNumber : Float = 0
    var pickerNumber : Int = 0
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        addPickerItems()
        // Configure interface objects here.
    }

    @IBAction func addPikeritem() {
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    
    @IBAction func sliderAction(value: Float) {
        sliderNumber = value
        changerPickerSlider()
    }
    
    @IBAction func pickerAction(value: Int) {
        pickerNumber = value
        changerLabelPicker()
    }
    
    func addPickerItems(){
        pickerItem0.title = String(itemArray[0])
        pickerItem1.title = String(itemArray[1])
        pickerItem2.title = String(itemArray[2])
        pickerItem3.title = String(itemArray[3])
        
        pkPicker.setItems([pickerItem0,pickerItem1,pickerItem2,pickerItem3])

    }
    
    func changerPickerSlider(){
        pkPicker.setSelectedItemIndex(Int(sliderNumber))
        changeLabelSlider()
    }
    
    func changeLabelSlider(){
        lbLabel.setText("\(itemArray[Int(sliderNumber)])")
    }

    func changerLabelPicker(){
        lbLabel.setText("\(itemArray[pickerNumber])")
    }
    
}
