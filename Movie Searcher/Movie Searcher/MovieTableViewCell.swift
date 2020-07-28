//
//  MovieTableViewCell.swift
//  Movie Searcher
//
//  Created by Полина Кожухарь on 28.07.2020.
//  Copyright © 2020 Полина Кожухарь. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet var movieTitleLabel: UILabel!

    @IBOutlet var moviePosterImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    static let identifier = "MovieTableViewCell"

    static func nib() -> UINib {
        return UINib(nibName: "MovieTableViewCell",
                     bundle: nil)
    }

    func configure(with model: Movie) {
        self.movieTitleLabel.text = model.Title
        
        let url = model.Poster
        if let data = try? Data(contentsOf: URL(string: url)!) {
            self.moviePosterImageView.image = UIImage(data: data)
        }
    }
    
}

