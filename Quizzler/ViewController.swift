import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    
    let allQuestions  = QuestionBank();
    var pressed : Bool = true;
    var questionNumber : Int = 0;
    var score: Int = 0;
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion();
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if(sender.tag==1){
            pressed = true;
        }
        else{
            pressed = false;
        }
        checkAnswer();
        questionNumber = questionNumber + 1;
        nextQuestion();
    }
    
    
    func updateUI() {
        scoreLabel.text = "Score: \(score)";
        progressLabel.text = "\(questionNumber+1)/13";
        progressBar.frame.size.width = (view.frame.size.width/13) * CGFloat (questionNumber + 1);
    }
    

    func nextQuestion() {
        if(questionNumber <= 12){
            questionLabel.text = allQuestions.list[questionNumber].question
            
            updateUI();
        }
        else{
            let alert = UIAlertController(title: "Quiz Complete", message: "Restart the Quiz", preferredStyle: .alert);
            
            alert.addAction(UIAlertAction(title: "Restart", style: .default, handler: {(alert: UIAlertAction!) in self.startOver()}));
            
            self.present(alert, animated: true, completion: nil);
        }
    }
    
    
    func checkAnswer() {
        let correctAns = allQuestions.list[questionNumber].answer;
        if(correctAns == pressed){
            ProgressHUD.showSuccess("Correct");
            score += 1;
        }
        else{
            ProgressHUD.showError("Incorrect");
        }
    }
    
    
    func startOver() {
        questionNumber = 0;
        score = 0;
        nextQuestion();
    }
    

    
}
