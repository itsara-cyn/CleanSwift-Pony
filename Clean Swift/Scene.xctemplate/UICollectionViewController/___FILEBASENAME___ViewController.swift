//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//


import UIKit

protocol ___VARIABLE_sceneName___DisplayLogic: class
{
    func displaySomething(viewModel: ___VARIABLE_sceneName___.Something.ViewModel)
}

class ___VARIABLE_sceneName___ViewController: UICollectionViewController, ___VARIABLE_sceneName___DisplayLogic
{
    var interactor: ___VARIABLE_sceneName___BusinessLogic?
    var router: (NSObjectProtocol & ___VARIABLE_sceneName___RoutingLogic & ___VARIABLE_sceneName___DataPassing)?
    
    // MARK: Object lifecycle
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        ___VARIABLE_sceneName___Configurator.sharedInstance.configure(viewController: self)
    }
    
    // MARK: View lifecycle
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        doSomething()
    }
    
    // MARK: Do something
    
    //@IBOutlet weak var nameTextField: UITextField!
    
    func doSomething()
    {
        let request = ___VARIABLE_sceneName___.Something.Request()
        interactor?.doSomething(request: request)
    }
    
    func displaySomething(viewModel: ___VARIABLE_sceneName___.Something.ViewModel)
    {
        //nameTextField.text = viewModel.name
    }
}
