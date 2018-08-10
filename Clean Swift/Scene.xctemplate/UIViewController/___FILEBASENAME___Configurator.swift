//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

extension ___VARIABLE_sceneName___ViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        router?.preparePassData(segue: segue)
    }
}

class ___VARIABLE_sceneName___Configurator {
    
    static let sharedInstance = ___VARIABLE_sceneName___Configurator()
    
    private init() {}
    
    func configure(viewController: ___VARIABLE_sceneName___ViewController) {
        let interactor = ___VARIABLE_sceneName___Interactor()
        let presenter = ___VARIABLE_sceneName___Presenter()
        let router = ___VARIABLE_sceneName___Router()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }
}
