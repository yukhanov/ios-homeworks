//
//  ProfileView.swift
//  Tools for interface
//
//  Created by Сергей Юханов on 22.02.2022.
//

import UIKit

class ProfileView: UIView {

    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthDateLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var decriptionLabel: UITextView!
    
    override init(frame: CGRect) {
            super.init(frame: frame)
            self.setupView()
        }

        required init?(coder: NSCoder) {
            super.init(coder: coder)
            self.setupView()
        }

        private func setupView() {
            let view = self.loadViewFromXib()
            self.addSubview(view)
            view.frame = self.bounds
            view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        }

        private func loadViewFromXib() -> UIView {
            guard let view = Bundle.main.loadNibNamed("ProfileView", owner: self, options: nil)?.first as? UIView else { return UIView() }
            
            return view
        }
    

}
