
import UIKit

class SecondViewController: UIViewController {
    private var topImage = UIImageView(image: UIImage(named: "topImage"))

    private var bgView = UIView()
    private var welcomeLabel: UILabel = {
       let welcomeLabel=UILabel()
        welcomeLabel.text = "Register"
        welcomeLabel.font = .boldSystemFont(ofSize: 28)
        welcomeLabel.textAlignment = .center
        welcomeLabel.textColor = .white
        
        return welcomeLabel
    }()
    
    private var loginLabel: UILabel = {
       let loginLabel=UILabel()
        loginLabel.text = "Create a new account"
        loginLabel.font = .boldSystemFont(ofSize: 20)
        loginLabel.textAlignment = .center
        loginLabel.textColor = UIColor(red: 196/255, green: 196/255, blue: 196/255, alpha: 1)
        
        return loginLabel
    }()
    
    private var userNameLabel: UILabel = {
       let userNameLabel=UILabel()
        userNameLabel.text = "Username"
        userNameLabel.font = .boldSystemFont(ofSize: 18)
        userNameLabel.textAlignment = .left
        userNameLabel.textColor = UIColor(red: 254/255, green: 252/255, blue: 252/255, alpha: 1)
        
        return userNameLabel
    }()
    
    private var userNameTF: UITextField = {
        let userNameTF = UITextField()
        
        let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 18, height: 19))
        userNameTF.leftView = leftPaddingView
        userNameTF.leftViewMode = .always
        userNameTF.layer.cornerRadius = 6
        userNameTF.backgroundColor = UIColor(red: 254/255, green: 252/255, blue: 252/255, alpha: 1)
        userNameTF.font = UIFont.boldSystemFont(ofSize: 16)
        userNameTF.placeholder = "Username"
        
        return userNameTF
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
    
    
    private var MobileNumberLabel: UILabel = {
       let MobileNumberLabel=UILabel()
        MobileNumberLabel.text = "Mobile Number"
        MobileNumberLabel.font = .boldSystemFont(ofSize: 18)
        MobileNumberLabel.textAlignment = .left
        MobileNumberLabel.textColor = UIColor(red: 254/255, green: 252/255, blue: 252/255, alpha: 1)
        
        return MobileNumberLabel
    }()
    
    private var mobileNumberTF: UITextField = {
        let mobileNumberTF = UITextField()
        
        let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 18, height: 19))
        mobileNumberTF.leftView = leftPaddingView
        mobileNumberTF.leftViewMode = .always
        mobileNumberTF.layer.cornerRadius = 6
        mobileNumberTF.backgroundColor = UIColor(red: 254/255, green: 252/255, blue: 252/255, alpha: 1)
        mobileNumberTF.font = UIFont.boldSystemFont(ofSize: 16)
        mobileNumberTF.placeholder = "Mobile Number"
        
        return mobileNumberTF
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
    
   
    private let loginBTN: UIButton = {
       let loginBTN = UIButton()
        loginBTN.backgroundColor = UIColor(red: 41/255, green: 182/255, blue: 246/255, alpha: 1)
        loginBTN.setTitle("Login", for: .normal)
        loginBTN.setTitleColor(.white, for: .normal)
        loginBTN.titleLabel?.font = .boldSystemFont(ofSize: 20)
        loginBTN.layer.cornerRadius = 22
        return loginBTN
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
        
        configureUserNameLabel()
        configureUserNameTF()
        
        configureEmailLabel()
        configureEmailTF()
        
        configureMobileNumberLabel()
        configureMobileNumberTF()
        
        configurePasswordLabel()
        configurePasswordTF()
        configureShowPassword()
        
   
        configureLoginBTN()
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
            make.top.equalTo(bgView)
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
    
    private func configureUserNameLabel(){
        bgView.addSubview(userNameLabel)
        userNameLabel.snp.makeConstraints{ make in
            make.top.equalTo(loginLabel.snp.bottom).offset(25)
            make.leading.equalTo(bgView).offset(30)
        }
    }
    
    private func configureUserNameTF(){
        bgView.addSubview(userNameTF)
        userNameTF.snp.makeConstraints{ make in
            make.top.equalTo(userNameLabel.snp.bottom).offset(6)
            make.leading.trailing.equalTo(bgView).inset(30)
            make.height.equalTo(48)
        }
    }

    private func configureEmailLabel(){
        bgView.addSubview(emailLabel)
        emailLabel.snp.makeConstraints{ make in
            make.top.equalTo(userNameTF.snp.bottom).offset(6)
            make.leading.equalTo(userNameTF)
        }
    }
    
    private func configureEmailTF(){
        bgView.addSubview(emailTF)
        emailTF.snp.makeConstraints{ make in
            make.top.equalTo(emailLabel.snp.bottom).offset(4)
            make.leading.trailing.equalTo(userNameTF)
            make.height.equalTo(48)
        }
    }
    
    private func configureMobileNumberLabel(){
        bgView.addSubview(MobileNumberLabel)
        MobileNumberLabel.snp.makeConstraints{ make in
            make.top.equalTo(emailTF.snp.bottom).offset(6)
            make.leading.equalTo(emailTF)
        }
    }
    
    private func configureMobileNumberTF(){
        bgView.addSubview(mobileNumberTF)
        mobileNumberTF.snp.makeConstraints{ make in
            make.top.equalTo(MobileNumberLabel.snp.bottom).offset(4)
            make.leading.trailing.equalTo(emailTF)
            make.height.equalTo(48)
        }
    }
    
    private func configurePasswordLabel(){
        bgView.addSubview(passwordLabel)
        passwordLabel.snp.makeConstraints{ make in
            make.top.equalTo(mobileNumberTF.snp.bottom).offset(6)
            make.leading.equalTo(mobileNumberTF)
        }
    }
    
    private func configurePasswordTF(){
        bgView.addSubview(passwordTF)
        passwordTF.snp.makeConstraints{ make in
            make.top.equalTo(passwordLabel.snp.bottom).offset(4)
            make.leading.trailing.equalTo(mobileNumberTF)
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
    
    
    private func configureLoginBTN(){
        bgView.addSubview(loginBTN)
        loginBTN.snp.makeConstraints{ make in
            make.top.equalTo(passwordTF.snp.bottom).offset(30)
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
        let userName=isFilled(tf: userNameTF)
        let name=isFilled(tf: emailTF)
        let mobileNumber=isFilled(tf: mobileNumberTF)
        let password = isFilled(tf: passwordTF)
        
        if  name && password && mobileNumber && userName{
            return true
        } else {
            return false
        }
    }
}
