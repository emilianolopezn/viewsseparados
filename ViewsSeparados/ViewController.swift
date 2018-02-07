//
//  ViewController.swift
//  ViewsSeparados
//
//  Created by Maestro on 07/02/18.
//  Copyright © 2018 Maestro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var paginaActual = 1

    @IBOutlet weak var vwLibro: UIView!
    @IBAction func doTapSiguiente(_ sender: Any) {
        paginaActual += 1
        
        UIView.transition(with: vwLibro, duration: 2.0, options: [.transitionCurlDown], animations: {
            
            //limpiar vwLibro
            for vista in self.vwLibro.subviews {
                vista.removeFromSuperview()
            }
            
            switch(self.paginaActual) {
            case 1:
                self.vwLibro.addSubview(PaginaUno(frame: self.vwLibro.bounds))
            case 2:
                self.vwLibro.addSubview(PaginaDos(frame: self.vwLibro.bounds))
            default:
                break
            }
            
            
            
        }, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.transition(with: vwLibro, duration: 2.0, options: [.transitionCurlDown], animations: {
            
            //limpiar vwLibro
            for vista in self.vwLibro.subviews {
                vista.removeFromSuperview()
            }
                self.vwLibro.addSubview(PaginaUno(frame: self.vwLibro.bounds))
            
            
        }, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

