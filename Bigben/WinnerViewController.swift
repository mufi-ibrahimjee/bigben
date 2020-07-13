//
//  ViewController.swift
//  Bigben
//
//  Created by apple on 04/07/20.
//  Copyright © 2020 muffi. All rights reserved.
//

import UIKit
import Foundation
import AVFoundation
import SAConfettiView

class WinnerViewController: UIViewController {

    @IBOutlet weak var confetti: UIView!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var congratsBttn: UIButton!
    @IBOutlet weak var resetBttn: UIButton!
    
    
    var winner = ["fatema_taher_jamali","salmali_soni","mariyambhinder","zainabobri","alifiya.soni.3","rangwalayakuta","mariyahmandli",
                  "zainab_kanchwala_4252",  "chaaku29",  "insiyamcutpiecewala",  "adnan_b02",  "tashu_tasira", "mufaddalcollection53",
                  "ruks3110", "zain_ab_..", "aliakbar27", "maryamvalabhai", "creativeartanddecors", "homemadeseed","Fatu_hatim", "amaan_gamer01",
                  "khushi_rao", "amtesyedna_fatema", "contractor sakina","Mariyam.daya", "batulbhabra", "khadijamodi", "fatemashabbir", "batultaher","Colorbyfatemah",
                  "sweetie", "sparks_and_mark", "tasneemsuterwala", "nafisamalvanwala", "nishreen_m_mustafa", "batulkanchwala",
                  "ibrahimariya", "bohrasakina8", "arwamani676", "fatema_sathlyawala", "fatemahozefa120817", "zainab.qutub",
                 "taaherghee", "tahervapi", "alefiya1922", "rashida_232", "zainab.mufaddal.786", "mustafa_0986", "lamasa_collection",
                "amatullahcollection", "littlemotherscake", "miss_jamila_aminjee", "rangwala.taher", "mariyah.patharia", "rajzainab",
                "tahera.quresh", "zainabchatri", "nema_hasnain", "mustafa badri", "zain53", "tasneemdaud25", "tashussain", "hussainadenwala100", "fatemi jetpurwala", "jenny_19", "t.....pool", "malekashinining2020", "the_craftylass_20", "taherbadri", "zainab_mufaddal", "gharakiya", "quilted_stuff_order", "sakinaummul", "thefabricstreet", "khachrod_ummulbani", "arwab0803", "sweetfatemahuzefamoti", "zainab_dudh", "frdchunawala", "mustafa_jetaji", "sakinanadir110", "mat_53", "taher_92", "miss_jamila_aminjee", "onestopshopforall53", "creativeartanddecors", "saladish", "iamabdishafiq", "alanwar_enterprises", "alanwar_bags", "al_zeenatcreations", "mariyammadraswala", "clicksbyfatema", "taaherghee", "patelsakina", "pilotpestcontrol", "mr_htc", "taharangwala", "fatema_umrethi", "nisreen.live", "n_m_jo"]
    
    var winner3 = ["fatema_taher_jamali",  "mariyambhinder", "zainabobri",  "rangwalayakuta",  "chaaku29",  "insiyamcutpiecewala",  "adnan_b02",  "tashu_tasira",  "mufaddalcollection53", "ruks3110", "zain_ab_..", "Colorbyfatemah","Mariyam.daya", "Fatu_hatim"]
    
    var i=0;
   
 
    var audioplayer = AVAudioPlayer()
    let frame1 = CGRect(x: 0, y: 0, width: 0, height: 0)
    //var confettiView: SAConfettiView
    
    var confettiView = SAConfettiView(frame: CGRect())
    override func viewDidLoad() {
        super.viewDidLoad()
        
        confettiView = SAConfettiView(frame: self.view.bounds)
        confettiView.type = .Diamond
       
        congratsBttn.setImage(UIImage.init(named: "g.png"), for: .normal)
        
        do {
            audioplayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "bensound-ukulele", ofType: "mp3")!))
            self.audioplayer.prepareToPlay()
        } catch {
           print("couldnt play sound")
        }
    }
    
    
   
   func firstWinner1() {
       usleep(150000)
       
       while(i<40){
       DispatchQueue.main.async {
           //self.myLabel.text = "Some text4"
           let a = self.winner.randomElement()
           self.myLabel.text = a
           
       }
           i+=1
           firstWinner1()
       }
     
   }
   func firstWinner2()
   {
       usleep(150000)
       DispatchQueue.main.async {
        
        //self.confettiView.startConfetti()
        self.audioplayer.play()
        self.congratsBttn.setImage(UIImage.init(named: "Untitled-4.png"), for: .normal)
        
        
             self.myLabel.text = "mustafa_0986"
        self.view.addSubview(self.confettiView)
        self.confettiView.startConfetti()
       
        

       }
   }
    
    func secondWinner1() {
           usleep(150000)
           
           while(i<40){
           DispatchQueue.main.async {
               //self.myLabel.text = "Some text4"
               let a = self.winner.randomElement()
               self.myLabel.text = a
               
           }
               i+=1
               secondWinner1()
           }
         
       }
       func secondWinner2()
       {
           usleep(150000)
           DispatchQueue.main.async {
            
            self.audioplayer.play()
            self.congratsBttn.setImage(UIImage.init(named: "Untitled-4.png"), for: .normal)
                 self.myLabel.text = "sparks_and_mark"
           }
       }
    
    func thirdWinner1() {
          usleep(150000)
          
          while(i<40){
          DispatchQueue.main.async {
              let a = self.winner.randomElement()
              self.myLabel.text = a
              
          }
              i+=1
            thirdWinner1()
          }
        
      }
      func thirdWinner2()
      {
          usleep(150000)
          DispatchQueue.main.async {
            if(self.winner3.count != 0)
            {
          self.audioplayer.play()
          let a = self.winner3.randomElement()
        self.congratsBttn.setImage(UIImage.init(named: "Untitled-4.png"), for: .normal)
          self.myLabel.text = a
          let k = self.winner3.index(of: a!)
          self.winner3.remove(at: k!)
            }
            else{
               self.myLabel.text = "Error"
            }
          }
      }
    
    
   


    
    @IBAction func firstbuttonTapped(_ sender: UIButton) {
        i=0
        congratsBttn.setImage(UIImage.init(named: "g.png"), for: .normal)
        myLabel.text = "Winner"
        DispatchQueue.global(qos: .background).async {
            
            if self.audioplayer.isPlaying{
                self.audioplayer.stop()
                self.audioplayer.currentTime = 0
            }
            
            self.firstWinner1()
            self.firstWinner2()
            
            
        
         }
    }
    
    @IBAction func secondbuttonTapped(_ sender: UIButton) {
        
        i=0
        congratsBttn.setImage(UIImage.init(named: "g.png"), for: .normal)
        myLabel.text = "Winner"
        DispatchQueue.global(qos: .background).async {
            
         if self.audioplayer.isPlaying{
                self.audioplayer.stop()
                self.audioplayer.currentTime = 0
            }
            self.secondWinner1()
            self.secondWinner2()
            
            
        
         }
        
           
            
    }
    
    @IBAction func thirdbuttonTapped(_ sender: UIButton) {
        i=0
        congratsBttn.setImage(UIImage.init(named: "g.png"), for: .normal)
        myLabel.text = "Winner"
        DispatchQueue.global(qos: .background).async {
          if self.audioplayer.isPlaying{
               self.audioplayer.stop()
               self.audioplayer.currentTime = 0
           }
            self.thirdWinner1()
            self.thirdWinner2()
            
            
        
         }
    }
    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
