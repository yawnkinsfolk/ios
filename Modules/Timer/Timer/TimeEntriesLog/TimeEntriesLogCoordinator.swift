import UIKit
import Architecture

public final class TimeEntriesLogCoordinator: BaseCoordinator {
    
    private var store: Store<TimeEntriesLogState, TimeEntriesLogAction>
    public init(store: Store<TimeEntriesLogState, TimeEntriesLogAction>) {
        self.store = store
    }
    
    public override func start() {
        let viewController = TimeEntriesLogViewController.instantiate()
        viewController.store = store
        self.rootViewController = viewController
    }
}
