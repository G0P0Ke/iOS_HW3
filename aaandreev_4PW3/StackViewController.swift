//
//  StackViewController.swift
//  aaandreev_4PW3
//
//  Created by  Антон Андреев on 26.10.2021.
//

import UIKit

class StackViewController: UIViewController {
    private var stack: UIStackView!
    private var scroll: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupScrollView()
        setupStackView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        scroll.contentSize = CGSize(
            width: self.scroll.frame.width,
            height: stack.frame.height
        )
        scroll.alwaysBounceVertical = true
    }
    
    private func setupStackView() {
        let stack = UIStackView(
            frame: .zero
        )
        view.addSubview(stack)
        stack.pinTop(to: view.safeAreaLayoutGuide.topAnchor)
        stack.pinBottom(to: view.safeAreaLayoutGuide.bottomAnchor)
        stack.pin(to: view, .left, .right)
        stack.backgroundColor = .gray
        self.stack = stack
    }
    
    private func setupScrollView() {
        let scroll = UIScrollView(
            frame: .zero
        )
        view.addSubview(scroll)
        scroll.pinTop(to: view.safeAreaLayoutGuide.topAnchor)
        scroll.pinBottom(to: view.safeAreaLayoutGuide.bottomAnchor)
        scroll.pin(to: view, .left, .right)
        self.scroll = scroll
    }


}
