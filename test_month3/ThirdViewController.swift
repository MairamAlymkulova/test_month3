
import UIKit

class ThirdViewController: UIViewController {

    var email: String?
    private var topImage = UIImageView(image: UIImage(named: "topImage"))

    private var bgView = UIView()
    private var welcomeLabel: UILabel = {
       let welcomeLabel=UILabel()
        welcomeLabel.text = "ForgotPassword"
        welcomeLabel.font = .boldSystemFont(ofSize: 28)
        welcomeLabel.textAlignment = .center
        welcomeLabel.textColor = .white
        
        return welcomeLabel
    }()
    
    
    private var emailLabel: UILabel = {
       let emailLabel=UILabel()
        emailLabel.text = "Enter your email"
        emailLabel.font = .boldSystemFont(ofSize: 18)
        emailLabel.textAlignment = .left
        emailLabel.textColor = UIColor(red: 254/255, green: 252/255, blue: 252/255, alpha: 1)
        
        return emailLabel
    }()
    
    private var emailTF: UITextField = {
        let emailTF = UITextField()
        
        let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 18, height: 19))
        emailTF.leftView = leftPaddingView
        emailTF.leftViewMode = .always
        emailTF.layer.cornerRadius = 6
        emailTF.backgroundColor = UIColor(red: 254/255, green: 252/255, blue: 252/255, alpha: 1)
        emailTF.font = UIFont.boldSystemFont(ofSize: 16)
        emailTF.placeholder = "Email"
        
        return emailTF
    }()
    
    
    private let sendOtpBTN: UIButton = {
       let loginBTN = UIButton()
        loginBTN.backgroundColor = UIColor(red: 41/255, green: 182/255, blue: 246/255, alpha: 1)
        loginBTN.setTitle("Send OTP", for: .normal)
        loginBTN.setTitleColor(.white, for: .normal)
        loginBTN.titleLabel?.font = .boldSystemFont(ofSize: 20)
        loginBTN.layer.cornerRadius = 22
        return loginBTN
    }()
    
    private let chooseAnotherMethodLabel: UILabel = {
        let dontHaveAccountLabel = UILabel ()
        dontHaveAccountLabel.text = "Choose Another Method"
        dontHaveAccountLabel.textColor = UIColor(red: 97/255, green: 97/255, blue: 97/255, alpha: 1)
        dontHaveAccountLabel.font = .boldSystemFont(ofSize: 16)
        return dontHaveAccountLabel
    }()
    
    private let helpButton: UIButton = {
       let createButton = UIButton()
        createButton.setTitle("Need Help?", for: .normal)
        createButton.setTitleColor(UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1), for: .normal)
        createButton.titleLabel?.font = .boldSystemFont(ofSize: 16)
        return createButton
    }()
    
    override func viewDidLoad() {
        view.backgroundColor = .black
        super.viewDidLoad()

        initUI()
    }
    private func initUI(){
        configureTopImage()
        
        configureBgView()
        
        configureWelcomeLabel()
        
        configureEmailLabel()
        configureEmailTF()
        
        configureChooseAnotherMethodBTN()
        configureSendOTPbtn()
        
    }
    
    
    private func configureTopImage(){
        view.addSubview(topImage)
        topImage.snp.makeConstraints{ make in
            make.top.trailing.leading.equalToSuperview()
            make.height.equalTo(200)

        }
    }
    
    private func configureBgView(){
        bgView.backgroundColor = nil
        view.addSubview(bgView)
        bgView.snp.makeConstraints { make in
            make.leading.trailing.bottom.equalToSuperview()
            make.height.equalTo(612)
            
        }
    }
    
    private func configureWelcomeLabel(){
        bgView.addSubview(welcomeLabel)
        welcomeLabel.snp.makeConstraints{ make in
            make.top.equalTo(bgView).offset(31)
            make.centerX.equalTo(bgView)
        }
    }
    
    private func configureEmailLabel(){
        bgView.addSubview(emailLabel)
        emailLabel.snp.makeConstraints{ make in
            make.top.equalTo(welcomeLabel.snp.bottom).offset(61)
            make.leading.equalTo(bgView).offset(31)
            make.height.equalTo(48)
        }
    }
    
    private func configureEmailTF(){
        bgView.addSubview(emailTF)
        emailTF.snp.makeConstraints{ make in
            make.top.equalTo(emailLabel.snp.bottom).offset(4)
            make.leading.trailing.equalTo(bgView).inset(30)
            make.height.equalTo(48)
        }
        
        emailTF.text = email ?? ""
    }
    
    private func configureChooseAnotherMethodBTN(){
        bgView.addSubview(chooseAnotherMethodLabel)
        chooseAnotherMethodLabel.snp.makeConstraints{ make in
            make.top.equalTo(emailTF.snp.bottom).offset(11)
            make.leading.equalTo(emailTF).offset(1)
        }
        
        bgView.addSubview(helpButton)
        helpButton.snp.makeConstraints{ make in
            make.centerY.equalTo(chooseAnotherMethodLabel)
            make.trailing.equalTo(emailTF).offset(-1)
        }
        
    }
    
    
    private func configureSendOTPbtn(){
        bgView.addSubview(sendOtpBTN)
        sendOtpBTN.snp.makeConstraints{ make in
            make.top.equalTo(chooseAnotherMethodLabel.snp.bottom).offset(22)
            make.centerX.equalTo(bgView)
            make.height.equalTo(48)
            make.width.equalTo(280)
        }
    }
    
    
    


}
