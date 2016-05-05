//
//  VolumeControlClass.swift
//  TrueVolumeControls
//
//  Created by wizage on 5/4/16.
//  Copyright © 2016 wizage. All rights reserved.
//

import MediaPlayer

class VolumeControl
{
    static let sharedInstance : VolumeControl = VolumeControl()
    private var sliderView : UISlider!
    private var volumeView : MPVolumeView
    
    private init()
    {
        let controller = UIApplication.sharedApplication().delegate?.window!?.rootViewController
        
        let wrapper = UIView(frame: CGRect(x: 30,y: 200,width: 260,height: 20))
        wrapper.backgroundColor = .clearColor()
        controller!.view.addSubview(wrapper)
        
        volumeView = MPVolumeView(frame: wrapper.bounds)
        volumeView.hidden = true
        for subview in volumeView.subviews
        {
            if let slider = subview as? UISlider {
                sliderView = slider
            }
        }
        wrapper.addSubview(volumeView)
        if (sliderView == nil)
        {
            NSLog("Error: Error setting up Volume Controller")
        }
    }
    
    func setVolume(volume : Float)
    {
        if(sliderView != nil)
        {
            sliderView.setValue(volume, animated: false)
        }
    }
    
    func turnUp()
    {
        if(sliderView != nil)
        {
            sliderView.setValue(sliderView.value+0.0625, animated: false)
        }
    }
    
    func turnDown()
    {
        if(sliderView != nil)
        {
            sliderView.setValue(sliderView.value-0.0625, animated: false)
        }
    }
    
    func getCurrentVolume() -> Float
    {
        if(sliderView != nil)
        {
            return sliderView.value
        } else
        {
            return 0.0
        }
    }
}
