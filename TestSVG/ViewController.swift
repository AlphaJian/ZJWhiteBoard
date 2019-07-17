//
//  ViewController.swift
//  TestSVG
//
//  Created by ken.zhang on 2019/6/19.
//  Copyright © 2019 ken.zhang. All rights reserved.
//

import UIKit
import FantasticSnowflake
import Reindeers
import SnapKit

class ViewController: UIViewController {
    var index = 0
    let btnList = [["title":"线", "value": "<path d=\"M 269 124 L 269 124 L 271 124 L 274 124 L 279 125 L 285 128 L 291 130 L 298 133 L 304 135 L 309 138 L 316 141 L 322 144 L 328 147 L 333 150 L 338 153 L 340 157 L 344 159 L 347 160 L 349 161 L 350 163 L 352 163 L 352 164 L 353 165 L 355 165 L 355 165 L 357 166 L 359 167 L 359 167 L 359 167 L 360 168 L 360 168 L 361 168 L 361 168 L 362 169 L 362 169 L 364 170 L 367 173 L 369 175 L 372 177 L 374 179 L 377 182 L 379 184 L 381 187 L 383 190 L 386 195 L 388 198 L 389 203 L 391 207 L 391 211 L 394 216 L 395 220 L 396 222 L 397 224 L 398 225 L 398 227 L 399 228 L 399 230 L 400 232 L 401 234 L 401 236 L 403 238 L 403 241 L 405 244 L 406 245 L 407 246 L 408 248 L 409 248 L 409 249 L 410 249 L 412 249 L 413 250 L 418 251 L 419 251 L 422 252 L 427 253 L 432 253 L 438 253 L 446 253 L 455 253 L 461 253 L 465 253 L 469 253 L 472 253 L 475 252 L 477 251 L 479 251 L 480 250 L 480 250 L 480 249 L 481 249 L 482 248 L 482 247 L 483 246 L 483 245 L 484 244 L 484 244 L 484 243 L 484 243 L 485 243 L 485 242 L 485 242 L 485 241 L 485 241\" transform=\"translate(0,0)\" stroke-linecap=\"round\" id=\"pencil_11\" event-root=\"true\" tool-name=\"pencil\" style=\"stroke:#FF0900;fill:none;stroke-width:7;\"></path>"],
                   ["title":"空心圆","value":"<ellipse cx=\"623\" cy=\"173\" rx=\"61\" ry=\"54\" id=\"ellipse_12\" event-root=\"true\" tool-name=\"ellipse\" style=\"stroke:#FF0900;fill:none;stroke-width:7;\"></ellipse>"],
                   ["title":"空心矩", "value": "<rect x=\"762\" y=\"135\" width=\"77\" height=\"79\" id=\"rect_13\" event-root=\"true\" tool-name=\"rect\" style=\"stroke:#FF0900;fill:none;stroke-width:7;\"></rect>"],
                   ["title":"箭头", "value":"<line x1=\"901\" y1=\"235\" x2=\"1019\" y2=\"166\" marker-end=\"url(#arrow_marker_1)\"></line>"],
                   ["title":"直线", "value":"<line x1=\"228\" y1=\"291\" x2=\"317\" y2=\"376\" style=\"fill: none;stroke-width:6;stroke:rgba(255, 9, 0, 0.5);\"></line><line x1=\"227\" y1=\"290\" x2=\"318\" y2=\"376\"></line>"],
                   ["title":"实心圆","value":"<ellipse cx=\"458.25\" cy=\"354.75\" rx=\"59.75\" ry=\"35.25\" id=\"fellipse_16\" event-root=\"true\" tool-name=\"fellipse\" fill=\"#FF0900\" style=\"stroke: rgb(255, 9, 0); stroke-width: 7;\"></ellipse>"],
                   ["title":"实心矩","value":"<rect x=\"572\" y=\"314\" width=\"98\" height=\"63\" id=\"frect_17\" event-root=\"true\" tool-name=\"frect\" fill=\"#FF0900\" style=\"stroke: rgb(255, 9, 0); stroke-width: 7;\"></rect>"],
                   ["title":"双箭头","value":"<line x1=\"788\" y1=\"363\" x2=\"930\" y2=\"329\" marker-end=\"url(#da_end_0)\" marker-start=\"url(#da_start_0)\"></line>"],
                   ["title":"透明","value":"<path d=\"M 291 443 L 291 443 L 302 442 L 318 442 L 328 443 L 344 446 L 360 448 L 385 450 L 401 451 L 411 451 L 418 451 L 421 451 L 422 451 L 422 451\" transform=\"translate(0,0)\" stroke-linecap=\"round\" id=\"marker_19\" event-root=\"true\" tool-name=\"marker\" stroke-opacity=\"0.4\" style=\"fill: none; stroke: rgb(255, 9, 0); stroke-width: 7;\"></path>"],
                   ["title":"文字", "value":"<g init-x=\"271\" init-y=\"451.0571428571429\" init-height=\"38.4\" id=\"text_20\" event-root=\"true\" tool-name=\"text\" stroke-width=\"0.5\" font-weight=\"bold\" stroke=\"white\" fill=\"#FF0900\" style=\"font-size: 32px; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; white-space: pre;\"><text x=\"271\" y=\"483\">asd</text></g>"]]

    var st: UIStackView!

    var board: UIView = UIView(frame: CGRect.zero)
    var v: UIView! = nil


    let str = "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"no\"?><svg width=\"500px\" height=\"500px\" viewBox=\"0 0 300 300\"  version=\"1.1\"xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:sketch=\"http://www.bohemiancoding.com/sketch/ns\"><g id=\"Page-1\" stroke=\"#fff000\" stroke-width=\"5px\" fill=\"none\" fill-rule=\"evenodd\" sketch:type=\"MSPage\"><circle cx=\"30px\" cy=\"50px\" r=\"20px\"></circle></g></svg>"

    let str1 = "<path d=\"M 180 284 L 180 284 L 185 280 L 192 275 L 204 266 L 219 258 L 238 249 L 257 241 L 278 234 L 286 232 L 308 228 L 325 227 L 342 227 L 355 227 L 371 227 L 384 228 L 398 234 L 409 239 L 420 247 L 427 255 L 435 264 L 440 273 L 443 282 L 443 286 L 443 302 L 443 314 L 441 336 L 435 344 L 426 360 L 417 375 L 394 403 L 377 419 L 357 435 L 348 441\" transform=\"translate(0,0)\" stroke-linecap=\"round\" id=\"pencil_2\" event-root=\"true\" tool-name=\"pencil\" style=\"stroke:#FF0900;fill:none;stroke-width:7;\"></path>"

    func aa() {
//        let boundingBox = (la.path?.boundingBox)!
//        let containingSize = la.bounds
//        let boundingBoxAspectRatio = boundingBox.width/boundingBox.height
//        let viewAspectRatio = containingSize.width/containingSize.height
//
//        let scaleFactor: CGFloat
//        if (boundingBoxAspectRatio > viewAspectRatio) {
//            // Width is limiting factor
//            scaleFactor = containingSize.width/boundingBox.width
//        } else {
//            // Height is limiting factor
//            scaleFactor = containingSize.height/boundingBox.height
//        }
//
//        let scaleTransform = CATransform3DMakeScale(scaleFactor, scaleFactor, 1.0)
//        la.transform = scaleTransform
//        la.anchorPoint = CGPoint(x: 0.5, y: 0.5)
//        la.position = CGPoint(x:v.layer.bounds.midX,  y:v.layer.bounds.midY)
//        la.boundingBox = (la.path?.boundingBox)!
//        la.resizeToFit(v.bounds)
//        la.position = v.center
//        let boundingBox = la.path?.boundingBox
//        let xScaleFactor = containingSize.width  / boundingBox!.width
//        let yScaleFactor = containingSize.height / boundingBox!.height
//        let scaleTransform = CATransform3DMakeScale(xScaleFactor, yScaleFactor, 1.0)
//        la.transform = scaleTransform
//        la.contentsGravity = .center

    }

    override var prefersStatusBarHidden: Bool { return true }
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation { return .landscapeLeft }
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask { return .landscape }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.

        var btnViews: [UIView] = [UIView]()
        for item in btnList {
            let btn = UIButton(type: .system)
            btn.setTitle(item["title"], for: .normal)
            btn.addTarget(self, action: #selector(ViewController.btnTapped), for: .touchUpInside)
            btnViews.append(btn)
        }

        st = UIStackView(arrangedSubviews: btnViews)
        st.spacing = 10
        st.distribution = .fillEqually
        st.alignment = .leading
        st.backgroundColor = UIColor.gray
        st.axis = .horizontal



        self.view.addSubview(st)
        st.snp.makeConstraints { (make) in
            make.leading.top.trailing.equalToSuperview()
            make.height.equalTo(50)
        }

        self.view.addSubview(board)
        board.snp.makeConstraints { (make) in
            make.leading.trailing.bottom.equalToSuperview()
            make.top.equalTo(st.snp.bottom)
        }
        board.backgroundColor = UIColor.green
    }

    @objc func btnTapped(sender: UIButton) {
        let title = sender.titleLabel?.text ?? ""

        let dic = btnList.first { $0["title"] == title}
        draw(str: dic!["value"] as! String)

    }

    func drawLine() {
        let str = ""
        draw(str: str)

    }

    func drawCycle() {
        let str = ""
        draw(str: str)

    }

    func drawSquare() {
        let str = ""
        draw(str: str)

    }

    func drawArrow() {
        let str = ""
        draw(str: str)

    }

    func drawLine2() {
        let str = ""
        draw(str: str)

    }

    func drawCycle2() {
        let  str = ""
    }

    func drawSquare2() {
        let str = ""
        draw(str: str)

    }

    func drawArrow2() {
        let str = ""
        draw(str: str)

    }

    func drawAlpha() {
        let str = ""
        draw(str: str)

    }
    func drawText() {
        let str = ""
        draw(str: str)
    }

    func draw(str: String) {
        let doc = try? Document(string: str)
        if let attr = doc?.rootElement.attributes {
            var path: ShapeAware!
            var layer = CAShapeLayer()
            if let name = doc?.rootElement.name, name == "ellipse" {
                path = Ellipse(attributes: attr)
                layer = path.layer()
            } else if let name = doc?.rootElement.name, name == "path" {
                path = Path(attributes: attr)
                layer = path.layer()
            } else if let name = doc?.rootElement.name, name == "rect" {
                path = Rectangle(attributes: attr)
                layer = path.layer()
            } else if let name = doc?.rootElement.name, name == "line" {
//                path = Line(attributes: attr)
//                layer = path.layer()

                for i in 0 ... 10000 {
                    var str = "<rect x=\"\(i)\" y=\"135\" width=\"77\" height=\"79\" id=\"rect_13\" event-root=\"true\" tool-name=\"rect\" style=\"stroke:#FF0900;fill:none;stroke-width:7;\"></rect>"
                    draw(str: str)
                }




            } else if let name = doc?.rootElement.name, name == "g" {
                let child = doc?.rootElement.children()[0]
//                let group = Group(element: doc!.rootElement) as! Group
                let group = Group(element: doc!.rootElement)
                for item in group.items {
                    if let item = item as? Text {
                        let layer2 = item.layer()
                        layer2.frame = board.bounds
                        board.layer.addSublayer(layer2)
                    }
                }

                return

            }
            layer.frame = board.bounds
            board.layer.addSublayer(layer)
        }
    }


}


