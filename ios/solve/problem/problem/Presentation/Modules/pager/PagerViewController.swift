//
//  ViewController.swift
//  problem
//
//  Created by Fernando Salom Carratala on 7/8/23.
//

import UIKit

class PagerViewController: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    var pageControllers = [PageViewController]()
    var index = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.delegate = self
        self.dataSource = self
        self.modalTransitionStyle = .crossDissolve
        self.modalPresentationStyle = .overCurrentContext
        self.setViewControllers([pageControllers[self.index]], direction: .forward, animated: true)

    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        if index + 1 > pageControllers.count - 1 {
            return nil
        }
        index += 1
        return pageControllers[index]
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        if index - 1 < 0 {
            return nil
        }
        index -= 1
        return pageControllers[index]
    }
}


