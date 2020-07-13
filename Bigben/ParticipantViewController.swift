//
//  ParticipantViewController.swift
//  Bigben
//
//  Created by apple on 03/07/20.
//  Copyright © 2020 muffi. All rights reserved.
//

import UIKit
class ParticipantViewController: UITableViewController {
    


    var participants = ["fatema_taher_jamali","salmali_soni","mariyambhinder","zainabobri","alifiya.soni.3","rangwalayakuta","mariyahmandli",
      "zainab_kanchwala_4252",  "chaaku29",  "insiyamcutpiecewala",  "adnan_b02",  "tashu_tasira", "mufaddalcollection53",
      "ruks3110", "zain_ab_..", "aliakbar27", "maryamvalabhai", "creativeartanddecors", "homemadeseed","Fatu_hatim", "amaan_gamer01",
      "khushi_rao", "amtesyedna_fatema", "contractor sakina","Mariyam.daya", "batulbhabra", "khadijamodi", "fatemashabbir", "batultaher","Colorbyfatemah",
      "sweetie", "sparks_and_mark", "tasneemsuterwala", "nafisamalvanwala", "nishreen_m_mustafa", "batulkanchwala",
      "ibrahimariya", "bohrasakina8", "arwamani676", "fatema_sathlyawala", "fatemahozefa120817", "zainab.qutub",
     "taaherghee", "tahervapi", "alefiya1922", "rashida_232", "zainab.mufaddal.786", "mustafa_0986", "lamasa_collection",
    "amatullahcollection", "littlemotherscake", "miss_jamila_aminjee", "rangwala.taher", "mariyah.patharia", "rajzainab",
    "tahera.quresh", "zainabchatri", "nema_hasnain", "mustafa badri", "zain53", "tasneemdaud25", "tashussain", "hussainadenwala100", "fatemi jetpurwala", "jenny_19", "t.....pool", "malekashinining2020", "the_craftylass_20", "taherbadri", "zainab_mufaddal", "gharakiya", "quilted_stuff_order", "sakinaummul", "thefabricstreet", "khachrod_ummulbani", "arwab0803", "sweetfatemahuzefamoti", "zainab_dudh", "frdchunawala", "mustafa_jetaji", "sakinanadir110", "mat_53", "taher_92", "miss_jamila_aminjee", "onestopshopforall53", "creativeartanddecors", "saladish", "iamabdishafiq", "alanwar_enterprises", "alanwar_bags", "al_zeenatcreations", "mariyammadraswala", "clicksbyfatema", "taaherghee", "patelsakina", "pilotpestcontrol", "mr_htc", "taharangwala", "fatema_umrethi", "nisreen.live", "n_m_jo"]
    
    override func viewDidLoad() {
           super.viewDidLoad()

      tableView.layer.cornerRadius = 20 //set corner radius here
      tableView.layer.backgroundColor = UIColor.cyan.cgColor
       
       }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
          // #warning Incomplete implementation, return the number of sections
          return participants.count
      }

      override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          // #warning Incomplete implementation, return the number of rows
          return 1
      }
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
           let v = UIView()
           v.backgroundColor = .clear
           return v
       }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cellIdentifier = "Cell"
           let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ParticipantTableViewCell

           cell.backgroundColor=UIColor(red: 165/255, green: 55/255, blue: 66/255, alpha: 1)
           cell.nameLabel.text = participants[indexPath.section]
           cell.layer.cornerRadius = 20
           cell.contentView.layer.cornerRadius = 5.0
           cell.contentView.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
           cell.contentView.layer.borderWidth = 0.5
           cell.nameLabel.layer.cornerRadius = 5.0
          
           return cell
       }
    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
           let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { (action, sourceView, completionHandler) in
               // Delete the row from the data source
               self.participants.remove(at: indexPath.section)
            self.tableView.deleteRows(at: [indexPath], with: .fade)
               
               // Call completion handler to dismiss the action button
               completionHandler(true)
           }
        deleteAction.backgroundColor = UIColor(red: 231.0/255.0, green: 76.0/255.0, blue: 60.0/255.0, alpha: 1.0)
        deleteAction.image = UIImage(named: "delete")
         let swipeConfiguration = UISwipeActionsConfiguration(actions: [deleteAction])
            
            return swipeConfiguration
        }
}
