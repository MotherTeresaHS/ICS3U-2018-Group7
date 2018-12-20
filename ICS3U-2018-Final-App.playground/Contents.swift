
// Created on: Dec-2018
// Created by: Mr. Coxall
// Created for: ICS3U
// This program is the template for the ICS3U final project

// this will be commented out when code moved to Xcode
import PlaygroundSupport


import SpriteKit

class GameScene: SKScene {
    // local variables to this scene
    let splashSceneBackground = SKSpriteNode(imageNamed: "splashSceneImage.png")
    let moveToNextSceneDelay = SKAction.wait(forDuration: 3.0)
    
    override func didMove(to view: SKView) {
        // this is run when the scene loads
        
        /* Setup your scene here */
        self.backgroundColor = SKColor(red: 0.0, green:0.0, blue:0.0, alpha: 1.0)
        
        splashSceneBackground.name = "splash Scene Background"
        splashSceneBackground.position = CGPoint(x: frame.midX, y: frame.midY)
        splashSceneBackground.size = CGSize(width: frame.size.width, height: frame.size.height)
        self.addChild(splashSceneBackground)
        
        splashSceneBackground.run(moveToNextSceneDelay) {
            //run code here after 3 secs
            
            self.splashSceneBackground.removeAllActions()
            let logoScene = LogoScene(size: self.size)
            self.view?.presentScene(logoScene)
        }
    }
    
    override func  update(_ currentTime: TimeInterval) {
        //
        
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        //
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //when the screen is touched, it moves to the main menu
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
        
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
    }
}

class LogoScene: SKScene, SKPhysicsContactDelegate {
    // local variables to this scene
    let logo = SKSpriteNode(imageNamed: "IMG_4741.JPG")
    let moveToNextSceneDelay = SKAction.wait(forDuration: 3.0)
    
    override func didMove(to view: SKView) {
        // this is run when the scene loads
        
        /* Setup your scene here */
        self.backgroundColor = SKColor(red: 1.0, green: 1.0, blue:1.0, alpha: 1.0)
        logo.position = CGPoint(x: frame.midX, y: frame.midY)
        logo.size = CGSize(width: frame.size.width, height: frame.size.height)
        logo.name = "Game name"
        self.addChild(logo)
        //logo.setScale(0.65)
        
        logo.run(moveToNextSceneDelay) {
            //run code here after 3 secs
            let mainMenuScene = MainMenuScene(size: self.size)
            self.view!.presentScene(mainMenuScene)
        }
    }
    
    override func  update(_ currentTime: TimeInterval) {
        //
        
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        //
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // when the start button is touched, it moves to the main game
        
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
        
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
        
        
    }
}

class MainMenuScene: SKScene, SKPhysicsContactDelegate {
    // local variables to this scene
    
    override func didMove(to view: SKView) {
        // this is run when the scene loads
        let backgroundImage = SKSpriteNode(imageNamed: "IMG_9039.JPG")
        let startButton = SKSpriteNode(imageNamed: "startButton.jpg")
        let helpButton = SKSpriteNode(imageNamed: "helpButton.jpg")
        let creditButton = SKSpriteNode(imageNamed: "creditButton.jpg")
        let settingButton = SKSpriteNode(imageNamed: "settingButton.png")
        
        /* Setup your scene here */
        self.backgroundColor = SKColor(red: 1.0, green: 1.0, blue:1.0, alpha: 1.0)
        backgroundImage.position = CGPoint(x: frame.midX, y: frame.midY)
        backgroundImage.size = CGSize(width: frame.size.width, height: frame.size.height)
        backgroundImage.name = "menu background"
        self.addChild(backgroundImage)
        
        startButton.position = CGPoint(x: (frame.size.width / 5.5) , y: (frame.size.height / 1.5))
        startButton.name = "start button"
        self.addChild(startButton)
        startButton.setScale(0.65)
        
        helpButton.position = CGPoint(x: (frame.size.width / 5.5) , y: (frame.size.height / 2.25))
        startButton.name = "help button"
        self.addChild(helpButton)
        helpButton.setScale(0.65)
        
        creditButton.position = CGPoint(x: (frame.size.width / 5.5) , y: (frame.size.height / 4.5))
        creditButton.name = "credit button"
        self.addChild(creditButton)
        creditButton.setScale(0.65)
        
        settingButton.position = CGPoint(x: (frame.size.width / 2.8) , y:   (frame.size.height / 4.5))
        settingButton.name = "setting button"
        self.addChild(settingButton)
        settingButton.setScale(0.65)
    }
    
    override func  update(_ currentTime: TimeInterval) {
        //
        
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        //
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // when the start button is touched, it moves to the main game
        
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
        
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
        
        
    }
}





// this will be commented out when code moved to Xcode

// set the frame to be the size for your iPad

let screenSize = UIScreen.main.bounds
let screenWidth = screenSize.width
let screenHeight = screenSize.height
let frame = CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight)

let scene = GameScene(size: frame.size)
scene.scaleMode = SKSceneScaleMode.resizeFill

let skView = SKView(frame: frame)
skView.showsFPS = true
skView.showsNodeCount = true
skView.presentScene(scene)

PlaygroundPage.current.liveView = skView
