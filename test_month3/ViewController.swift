import UIKit
import SnapKit

class ViewController: UIViewController {

    private var topImage = UIImageView(image: UIImage(named: "topImage"))
    private var google = UIImageView(image: UIImage(named: "google"))
    private var instagram = UIImageView(image: UIImage(named: "instagram"))
    private var facebook = UIImageView(image: UIImage(named: "facebook"))

    private var bgView = UIView()
    private var welcomeLabel: UILabel = {
       let welcomeLabel=UILabel()
        welcomeLabel.text = "Welcome"
        welcomeLabel.font = .boldSystemFont(ofSize: 28)
        welcomeLabel.textAlignment = .center
        welcomeLabel.textColor = .white
        
        return welcomeLabel
    }()
    
    private var loginLabel: UILabel = {
       let loginLabel=UILabel()
        loginLabel.text = "Login to your account"
        loginLabel.font = .boldSystemFont(ofSize: 20)
        loginLabel.textAlignment = .center
        loginLabel.textColor = UIColor(red: 196/255, green: 196/255, blue: 196/255, alpha: 1)
        
        return loginLabel
    }()
    
    private var emailLabel: UILabel = {
       let emailLabel=UILabel()
        emailLabel.text = "Email"
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
    
    private var passwordLabel: UILabel = {
       let passwordLabel=UILabel()
        passwordLabel.text = "Password"
        passwordLabel.font = .boldSystemFont(ofSize: 18)
        passwordLabel.textAlignment = .left
        passwordLabel.textColor = UIColor(red: 254/255, green: 252/255, blue: 252/255, alpha: 1)
        
        return passwordLabel
    }()
    
    private var passwordTF: UITextField = {
        let passwordTF = UITextField()
        
        let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 18, height: 19))
        passwordTF.leftView = leftPaddingView
        passwordTF.leftViewMode = .always
        passwordTF.layer.cornerRadius = 6
        passwordTF.backgroundColor = UIColor(red: 254/255, green: 252/255, blue: 252/255, alpha: 1)
        passwordTF.font = UIFont.boldSystemFont(ofSize: 16)
        passwordTF.placeholder = "Password"
        passwordTF.isSecureTextEntry = true
        
        return passwordTF
    }()
    
    private let showPasswordButton: UIButton = {
       let showPasswordButton = UIButton()
        showPasswordButton.setImage(UIImage(systemName: "eye"), for: .normal)
        showPasswordButton.tintColor = UIColor(red: 204/255, green: 204/255, blue: 204/255, alpha: 1)
        return showPasswordButton
    }()
    
    
    private let forgotPasswordButton: UIButton = {
       let forgotPasswordButton = UIButton()
        forgotPasswordButton.setTitle("Forgot Password?", for: .normal)
        forgotPasswordButton.setTitleColor(UIColor(red: 234/255, green: 67/255, blue: 53/255, alpha: 1), for: .normal)
        forgotPasswordButton.titleLabel?.font = .boldSystemFont(ofSize: 16)
        return forgotPasswordButton
    }()
    
    private let loginBTN: UIButton = {
       let loginBTN = UIButton()
        loginBTN.backgroundColor = UIColor(red: 41/255, green: 182/255, blue: 246/255, alpha: 1)
        loginBTN.setTitle("Login", for: .normal)
        loginBTN.setTitleColor(.white, for: .normal)
        loginBTN.titleLabel?.font = .boldSystemFont(ofSize: 20)
        loginBTN.layer.cornerRadius = 22
        return loginBTN
    }()
    
    private let dontHaveAccountLabel: UILabel = {
        let dontHaveAccountLabel = UILabel ()
        dontHaveAccountLabel.text = "Don't have account ?"
        dontHaveAccountLabel.textColor = UIColor(red: 97/255, green: 97/255, blue: 97/255, alpha: 1)
        dontHaveAccountLabel.font = .boldSystemFont(ofSize: 16)
        return dontHaveAccountLabel
    }()
    
    private let createButton: UIButton = {
       let createButton = UIButton()
        createButton.setTitle("Create Now", for: .normal)
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
        configureLoginLabel()
        
        configureEmailLabel()
        configureEmailTF()
        
        configurePasswordLabel()
        configurePasswordTF()
        configureShowPassword()
        
        configureForgotBTN()
        
        configureIcons()
        
        configureLoginBTN()
        configureDontHaveAccountButton()
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
            make.top.equalTo(bgView).offset(51)
            make.centerX.equalTo(bgView)
        }
    }
    
    private func configureLoginLabel(){
        bgView.addSubview(loginLabel)
        loginLabel.snp.makeConstraints{ make in
            make.top.equalTo(welcomeLabel.snp.bottom).offset(-6)
            make.centerX.equalTo(welcomeLabel)
        }
    }
    
    private func configureEmailLabel(){
        bgView.addSubview(emailLabel)
        emailLabel.snp.makeConstraints{ make in
            make.top.equalTo(loginLabel.snp.bottom).offset(25)
            make.leading.equalTo(bgView).offset(30)
        }
    }
    
    private func configureEmailTF(){
        bgView.addSubview(emailTF)
        emailTF.snp.makeConstraints{ make in
            make.top.equalTo(emailLabel.snp.bottom).offset(6)
            make.leading.trailing.equalTo(bgView).inset(30)
            make.height.equalTo(48)
        }
    }

    private func configurePasswordLabel(){
        bgView.addSubview(passwordLabel)
        passwordLabel.snp.makeConstraints{ make in
            make.top.equalTo(emailTF.snp.bottom).offset(6)
            make.leading.equalTo(emailTF)
        }
    }
    
    private func configurePasswordTF(){
        bgView.addSubview(passwordTF)
        passwordTF.snp.makeConstraints{ make in
            make.top.equalTo(passwordLabel.snp.bottom).offset(4)
            make.leading.trailing.equalTo(emailTF)
            make.height.equalTo(48)
        }
    }
    
    private func configureShowPassword(){
        bgView.addSubview(showPasswordButton)
        showPasswordButton.snp.makeConstraints{ make in
            make.centerY.equalTo(passwordTF.snp.centerY)
            make.trailing.equalTo(emailTF).offset(-15)
            make.height.equalTo(24)
            make.width.equalTo(27)
        }
        
        showPasswordButton.addTarget(self, action: #selector(showPasswordButtonPressed), for: .touchUpInside)
        
    }
    @objc private func showPasswordButtonPressed() {
        passwordTF.isSecureTextEntry.toggle()
        
        if passwordTF.isSecureTextEntry {
            showPasswordButton.setImage(UIImage(systemName: "eye"), for: .normal)
        }else{
            showPasswordButton.setImage(UIImage(named: "crossedEye"), for: .normal)

        }
        
    }
    
    private func configureForgotBTN(){
        bgView.addSubview(forgotPasswordButton)
        forgotPasswordButton.snp.makeConstraints{ make in
            make.top.equalTo(passwordTF.snp.bottom).offset(7)
            make.trailing.equalTo(passwordTF)
        }
        
        forgotPasswordButton.addTarget(self, action: #selector(forgotBTNPressed), for: .touchUpInside)
        
    }
    @objc private func forgotBTNPressed() {
        let vc = self.storyboard?.instantiateViewController(identifier: "ThirdViewController") as! ThirdViewController
        vc.email = emailTF.text
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    private func configureLoginBTN(){
        bgView.addSubview(loginBTN)
        loginBTN.snp.makeConstraints{ make in
            make.bottom.equalTo(facebook.snp.top).offset(-87)
            make.top.equalTo(forgotPasswordButton.snp.bottom).offset(29)
            make.centerX.equalToSuperview()
            make.width.equalTo(295)
            make.height.equalTo(48)
        }
        loginBTN.addTarget(self, action: #selector(loginBTNPressed), for: .touchUpInside)
        
    }
    @objc private func loginBTNPressed() {
        
        if checkFilledFeilds() {
            let vc = self.storyboard?.instantiateViewController(identifier: "ThirdViewController") as! ThirdViewController
            vc.email = emailTF.text
            navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    
    
    
    private func configureIcons(){
        bgView.addSubview(facebook)
        facebook.snp.makeConstraints{ make in
            make.bottom.equalTo(bgView).offset(-80)
            make.centerX.equalTo(bgView)
            make.height.equalTo(30)
            make.width.equalTo(31)
        }
        bgView.addSubview(google)
        google.snp.makeConstraints{ make in
            make.centerY.equalTo(facebook.snp.centerY)
            make.trailing.equalTo(facebook.snp.leading).offset(-43)
            make.height.equalTo(30)
            make.width.equalTo(31)
        }
        bgView.addSubview(instagram)
        instagram.snp.makeConstraints{ make in
            make.centerY.equalTo(facebook.snp.centerY)
            make.leading.equalTo(facebook.snp.trailing).offset(43)
            make.height.equalTo(30)
            make.width.equalTo(31)

        }
    }
    
   
    private func configureDontHaveAccountButton(){
        bgView.addSubview(dontHaveAccountLabel)
        dontHaveAccountLabel.snp.makeConstraints{ make in
            make.top.equalTo(loginBTN.snp.bottom).offset(14)
            make.leading.equalTo(loginBTN).offset(20)
        }

        bgView.addSubview(createButton)
        createButton.snp.makeConstraints{ make in
            make.centerY.equalTo(dontHaveAccountLabel)
            make.trailing.equalTo(loginBTN).offset(-20)

        }
        
        createButton.addTarget(self, action: #selector(createAccountBTNPressed), for: .touchUpInside)

        
    }
    
    @objc private func createAccountBTNPressed() {
        let vc = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    private func isFilled(tf: UITextField) -> Bool {
        if tf.text?.isEmpty ?? true {
            tf.layer.borderColor = UIColor.red.cgColor
            tf.layer.borderWidth = 1
            tf.placeholder = "Fill in the text field please"
            
            return false
        } else {
            tf.layer.borderWidth = 0
            return true
        }
        
    }
    
    private func checkFilledFeilds()->Bool{
        let name=isFilled(tf: emailTF)
        let password = isFilled(tf: passwordTF)
        if  name && password {
            return true
        } else {
            return false
        }
    }
        
}

