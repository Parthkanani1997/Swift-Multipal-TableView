//
//  ViewController.swift
//  MaltipaleTableView
//
//  Created by om technology on 30/04/19.
//  Copyright © 2019 Panini Academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var abdata:[AhemdabadModal]=[]
    var mudata:[mumbaiModal]=[]
    var kardata:[karnatakaModal]=[]
    var haidata:[haidrabadModal]=[]
    var rajdata:[rajasthanModal]=[]
    
    @IBOutlet var tableView: UITableView!
    @IBOutlet var segOut: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
          tableView.delegate=self
        tableView.dataSource=self
        abdata=[AhemdabadModal(city: "city:Ahemdabad", festival: "Festival: navratri", image:#imageLiteral(resourceName: "1518863295-21558762_1712796308754526_8327874534734008282_n.jpg")),
                AhemdabadModal(city: "city:Ahemdabad", festival: "festival:rathyatra", image: #imageLiteral(resourceName: "Rath_Yatra_Puri_07-11027.jpg")),
                AhemdabadModal(city: "city:Ahemdabad", festival: "Festival : Janmastmi", image: #imageLiteral(resourceName: "krishna-janmashtami-india-1535952018.jpeg")),
                AhemdabadModal(city: "city:Ahemdabad", festival: "Festival:Kite Festival", image: #imageLiteral(resourceName: "Washington_State_International_Kite_Festival_2008.jpg")),
                AhemdabadModal(city: "city:Ahemdabad", festival: "Festival:Ran utsav", image: #imageLiteral(resourceName: "main-slider-8.jpg"))]
        
        mudata=[mumbaiModal(city: "City:Mumbai", festival: "Festival:Ganesh chaturthi", image: #imageLiteral(resourceName: "Ganesh-Chaturthi-Celebration-in-India.jpg")),
                mumbaiModal(city: "City:Mumbai", festival: "Festival:Holi", image: #imageLiteral(resourceName: "DP1.jpg")),
                mumbaiModal(city: "City:Mumbai", festival: "Festival:Eid", image: #imageLiteral(resourceName: "eid-festival-in-london_eid-festival-in-trafalgar-square-images-courtesy-of-the-gla_e4705172c2e82c3478d3c258b8b4f78a.jpg")),
                mumbaiModal(city: "City:Mumbai", festival: "Festival:Good Friday", image: #imageLiteral(resourceName: "1-5.jpg")),
                mumbaiModal(city: "City:Mumbai", festival: "Festival:Dussehra", image: #imageLiteral(resourceName: "dussehra1.jpg"))]
        
        kardata=[karnatakaModal(city: "City:Karnataka", festival: "Festival:Ugadi", image: #imageLiteral(resourceName: "Ugadi-Pachadi-1.jpg")),
                 karnatakaModal(city: "City:Karnataka", festival: "Festival:Durga Pooja", image:#imageLiteral(resourceName: "816587078-Durga_6.jpg")),
                 karnatakaModal(city: "City:Karnataka", festival: "Festival:Mahamastakabhisheka", image: #imageLiteral(resourceName: "bahubali759.jpg")),]
        
        haidata=[haidrabadModal(city:"City:haidrabad", festival: "Festival:Muharram", image: #imageLiteral(resourceName: "Muharram-Photo-3.png")),
                haidrabadModal(city:"City:haidrabad", festival: "Festival:Ramzan", image: #imageLiteral(resourceName: "1526544877-Ramzan1.jpg")),
                haidrabadModal(city:"City:haidrabad", festival: "Festival:Rakhi", image:#imageLiteral(resourceName: "0012.jpg")),
                haidrabadModal(city:"City:haidrabad", festival: "Festival:Sankranthi", image: #imageLiteral(resourceName: "LOHRISONG.jpg"))]
        
        rajdata=[rajasthanModal(city: "City:Rajasthan", festival: "Festival:Desert Festival", image: #imageLiteral(resourceName: "Camel.jpg")),
                 rajasthanModal(city: "City:Rajasthan", festival: "Festival:Pushkar Camel Fair", image:#imageLiteral(resourceName: "Desert-Festival.jpg"))]
        
    }
    
    @IBAction func SegOnClick(_ sender: UISegmentedControl)
    {
        self.tableView.reloadData()
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        var value = 0
        switch segOut.selectedSegmentIndex {
        case 0:
            value=abdata.count
            break
        case 1:
            value=mudata.count
            break
        case 2:
            value=kardata.count
            break
        case 3:
            value=haidata.count
            break
        case 4:
            value=rajdata.count
            break
        default:
            break
        }
        return value
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        let img:UIImageView = cell.viewWithTag(101) as! UIImageView
        let lblCity:UILabel = cell.viewWithTag(102) as! UILabel
        let lblFectival:UILabel = cell.viewWithTag(103) as! UILabel
        switch segOut.selectedSegmentIndex {
        case 0:
             img.image = abdata[indexPath.row].image
             lblCity.text = abdata[indexPath.row].city
             lblFectival.text = abdata[indexPath.row].festival
            break
        case 1:
            img.image = mudata[indexPath.row].image
            lblCity.text = mudata[indexPath.row].city
            lblFectival.text = mudata[indexPath.row].festival
            break
        case 2:
            img.image = kardata[indexPath.row].image
            lblCity.text = kardata[indexPath.row].city
            lblFectival.text = kardata[indexPath.row].festival
            break
        case 3:
            img.image = haidata[indexPath.row].image
            lblCity.text = haidata[indexPath.row].city
            lblFectival.text = haidata[indexPath.row].festival
            break
        case 4:
            img.image = rajdata[indexPath.row].image
             lblCity.text = rajdata[indexPath.row].city
            lblFectival.text = rajdata[indexPath.row].festival
            break
        default:
            break
        }
        
        cell.contentView .addSubview(img)
        cell.contentView .addSubview(lblCity)
        cell.contentView .addSubview(lblFectival)
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }
}

