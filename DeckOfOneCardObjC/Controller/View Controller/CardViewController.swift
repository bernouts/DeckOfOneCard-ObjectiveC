import UIKit

class CardViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var suitLabel: UILabel!
    @IBOutlet weak var cardImageView: UIImageView!
    @IBOutlet weak var drawCardButton: UIButton!
    
    //MARK: - Properties
    var cards: [BJSCard] = []
    
    //MARK: - Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        self.fetchCards()
    }
    //MARK: - Actions
    @IBAction func drawCardButtonTapped(_ sender: Any) {
        self.fetchCards()
    }
    
    //MARK: - Helper Functions
    func fetchCards()
    {
        BJSCardController.drawANewCard(1) { (cards) in
            
            if let cards = cards {
                BJSCardController.fetchCardImage(cards[0]) { (image) in
                    DispatchQueue.main.async {
                        if let cardImage = image {
                        self.updateViews(card: cards[0], image: cardImage)
                        }
                    }
                }
            }
        }
    }
    
    func updateViews(card: BJSCard, image: UIImage) {
        self.cardImageView.image = image
        self.suitLabel.text = card.suit
        
    }
}//END OF CLASS
