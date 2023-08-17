//
//  ViewController.swift
//  Demo_021
//
//  Created by 鄭淳澧 on 2021/8/5.
//

import UIKit

class ViewController: UIViewController {
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        print("VC init.")
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        print("VC did load.")
        
        let bodyPath = UIBezierPath()
        bodyPath.move(to: CGPoint(x: 170, y: 70))
        bodyPath.addQuadCurve(to: CGPoint(x: 234, y: 70), controlPoint: CGPoint(x: 202, y: 55))
        bodyPath.addLine(to: CGPoint(x: 269, y: 110))
        bodyPath.addQuadCurve(to: CGPoint(x: 253, y: 180), controlPoint: CGPoint(x: 280, y: 153))
        bodyPath.addLine(to: CGPoint(x: 152, y: 180))
        bodyPath.addQuadCurve(to: CGPoint(x: 135, y: 110), controlPoint: CGPoint(x: 125, y: 153))
        bodyPath.close()
        //右耳
        let rightEarPath = UIBezierPath(ovalIn: CGRect(x: 98, y: 41, width: 74, height: 69))
        bodyPath.append(rightEarPath)
        //左耳
        let leftEarPath = UIBezierPath(ovalIn: CGRect(x: 232, y: 41, width: 74, height: 69))
        bodyPath.append(leftEarPath)
        //本體上色
        let bodyLayer = CAShapeLayer()
        bodyLayer.fillColor = UIColor.black.cgColor
        bodyLayer.path = bodyPath.cgPath
        view.layer.addSublayer(bodyLayer)
        //臉
        let facePath = UIBezierPath()
        facePath.move(to: CGPoint(x: 152, y: 180))
        facePath.addQuadCurve(to: CGPoint(x: 155, y: 148), controlPoint: CGPoint(x: 131, y: 145))
        facePath.addQuadCurve(to: CGPoint(x: 203, y: 106), controlPoint: CGPoint(x: 162, y: 70))
        facePath.addQuadCurve(to: CGPoint(x: 253, y: 148), controlPoint: CGPoint(x: 238, y: 70))
        facePath.addQuadCurve(to: CGPoint(x: 253, y: 180), controlPoint: CGPoint(x: 273, y: 145))
        facePath.addQuadCurve(to: CGPoint(x: 152, y: 180), controlPoint: CGPoint(x: 203, y: 210))
        facePath.close()
        let faceLayer = CAShapeLayer()
        faceLayer.fillColor = CGColor(srgbRed: 254/255, green: 218/255, blue: 195/255, alpha: 1)
        faceLayer.path = facePath.cgPath
        view.layer.addSublayer(faceLayer)
        //五官features
        let leftEyePath = UIBezierPath(ovalIn: CGRect(x: 172,y: 141, width: 12, height: 17))
        let rightEyePath = UIBezierPath(ovalIn:CGRect(x: 220, y: 141, width: 12, height: 17))
        let nosePath = UIBezierPath(ovalIn: CGRect(x: 196, y: 158, width: 14, height: 11))
        leftEyePath.append(rightEyePath)
        leftEyePath.append(nosePath)
        let featuresLayer = CAShapeLayer()
        featuresLayer.fillColor = UIColor.black.cgColor
        featuresLayer.path = leftEyePath.cgPath
        view.layer.addSublayer(featuresLayer)
        //腮紅blush
        let blushLeft = UIBezierPath(ovalIn: CGRect(x: 147, y: 154, width: 18, height: 12))
        let blushRight = UIBezierPath(ovalIn: CGRect(x: 238, y: 154, width: 18, height: 12))
        blushLeft.append(blushRight)
        let blushLayer = CAShapeLayer()
        blushLayer.fillColor = CGColor(srgbRed: 244/255, green: 173/255, blue: 171/255, alpha: 1)
        blushLayer.path = blushLeft.cgPath
        view.layer.addSublayer(blushLayer)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("VC will appear.")
    }
    
    override func viewWillLayoutSubviews() {
        print("VC will layout subviews.")
    }
    override func viewDidLayoutSubviews() {
        print("VC did layout subviews.")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("VC did appear.")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("VC will disappear.")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("VC did disappear.")
    }
    
    
    deinit {
        print("VC deinit.")
    }
    

    

}

