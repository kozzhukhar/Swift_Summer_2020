//
//  ViewController.swift
//  MyMusic
//
//  Created by Полина Кожухарь on 28.07.2020.
//  Copyright © 2020 Полина Кожухарь. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var table: UITableView!

    var songs = [Song]()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureSongs()
        table.delegate = self
        table.dataSource = self
    }

    func configureSongs() {
        songs.append(Song(name: "Take me to church",
                          albumName: "Hozier",
                          artistName: "Hozier",
                          imageName: "cover1",
                          trackName: "song1"))
        songs.append(Song(name: "Highway to hell",
                          albumName: "Highway to hell",
                          artistName: "AC/DC",
                          imageName: "cover2",
                          trackName: "song2"))
        songs.append(Song(name: "Салют, Вера",
                          albumName: "The best",
                          artistName: "Валерий Меладзе",
                          imageName: "cover3",
                          trackName: "song3"))
        songs.append(Song(name: "Swimming pool (drank)",
                          albumName: "GKMC",
                          artistName: "Kendrick Lamar",
                          imageName: "cover4",
                          trackName: "song4"))
        songs.append(Song(name: "Start a Riot",
                          albumName: "Spider-Man: Into the Spider-Verse",
                          artistName: "DUCKWRTH & Shaboozey",
                          imageName: "cover5",
                          trackName: "song5"))
        songs.append(Song(name: "Bloody Stream",
                          albumName: "JoJo opening",
                          artistName: "Coda",
                          imageName: "cover6",
                          trackName: "song6"))
        songs.append(Song(name: "Chandelier",
                          albumName: "1000 Forms of Fear",
                          artistName: "Sia",
                          imageName: "cover7",
                          trackName: "song7"))
        songs.append(Song(name: "Boxes of Bush",
                          albumName: "Single",
                          artistName: "Bugzy Malone",
                          imageName: "cover8",
                          trackName: "song8"))
        songs.append(Song(name: "Stay",
                          albumName: "Happiness",
                          artistName: "Hurts",
                          imageName: "cover9",
                          trackName: "song9"))
    }

    // Таблица

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let song = songs[indexPath.row]
        
        cell.textLabel?.text = song.name
        cell.detailTextLabel?.text = song.albumName
        cell.accessoryType = .disclosureIndicator
        cell.imageView?.image = UIImage(named: song.imageName)
        cell.textLabel?.font = UIFont(name: "Helvetica-Bold", size: 18)
        cell.detailTextLabel?.font = UIFont(name: "Helvetica", size: 17)

        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)

        // создание плеера
        let position = indexPath.row
        guard let vc = storyboard?.instantiateViewController(identifier: "player") as? PlayerViewController else {
            return
        }
        vc.songs = songs
        vc.position = position
        present(vc, animated: true)
    }


}

struct Song {
    let name: String
    let albumName: String
    let artistName: String
    let imageName: String
    let trackName: String
}
