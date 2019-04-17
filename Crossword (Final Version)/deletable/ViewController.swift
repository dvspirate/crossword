//
//  ViewController.swift
//  deletable
//
//  Created by DANIEL MIRANDA on 3/25/19.
//  Copyright © 2019 Daniel Miranda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var activeTextField = UITextField()
    var lastEditedTextField = UITextField()
    var textFieldArray : [UITextField?] = []
    var textFieldCharCount: Int = 0
    var currentAcrossWord: String = ""
    var currentDownWord: String = ""
    var cycleArray: [Int] = []
    var nextField: Int = 0
    var hintCount = 10
    var whichPuzzle: Int = 1
    var myPuzzle: Puzzle = Puzzle((".........................................................................................................................................................................", [:], [:]))
    
    
    @IBOutlet weak var winner: UIImageView!
    
    
    @IBOutlet weak var clue: UITextField!
    
    @IBOutlet weak var toggleAcross_DownButton: UIButton!
    @IBAction func toggleAcross_Down(_ sender: UIButton) {
        if toggleAcross_DownButton.titleLabel!.text == "Down" {
            if let tempWord = myPuzzle.downWordCellToWordDictionary[lastEditedTextField.tag]{
                if let array = myPuzzle.downWordLocationDictionary[tempWord]{
                    for i in array {
                        if textFieldArray[i]?.backgroundColor != .green{
                            textFieldArray[i]?.backgroundColor = .white
                        }
                    }
                }
            }
        }
        else {
            if let tempWord = myPuzzle.acrossWordCellToWordDictionary[lastEditedTextField.tag]{
                if let array = myPuzzle.acrossWordLocationDictionary[tempWord]{
                    for i in array {
                        if textFieldArray[i]?.backgroundColor != .green{
                            textFieldArray[i]?.backgroundColor = .white
                        }
                    }
                }
            }
        }
        
        if toggleAcross_DownButton.titleLabel!.text == "Across"{
            if let tempWord = myPuzzle.downWordCellToWordDictionary[activeTextField.tag]{
                if let array = myPuzzle.downWordLocationDictionary[tempWord]{
                    for i in array {
                        textFieldArray[i]?.backgroundColor = .lightGray
                    }
                }
            }
        }
        else {
            if let tempWord = myPuzzle.acrossWordCellToWordDictionary[activeTextField.tag]{
                if let array = myPuzzle.acrossWordLocationDictionary[tempWord]{
                    for i in array {
                        textFieldArray[i]?.backgroundColor = .lightGray
                    }
                }
            }
        }
        
        if toggleAcross_DownButton.titleLabel!.text == "Across" {
            toggleAcross_DownButton.setTitle("Down", for: .normal)
            if let tempWord = myPuzzle.downWordCellToWordDictionary[activeTextField.tag]{
                clue.text = myPuzzle.downClues[tempWord]
            }
            clue.allowsEditingTextAttributes = false
        }
        else {
            toggleAcross_DownButton.setTitle("Across", for: .normal)
            if let tempWord = myPuzzle.acrossWordCellToWordDictionary[activeTextField.tag]{
                clue.text = myPuzzle.acrossClues[tempWord]
            }
            clue.allowsEditingTextAttributes = false
        }
    }
    
    @IBOutlet weak var field0: UITextField!
    @IBOutlet weak var field1: UITextField!
    @IBOutlet weak var field2: UITextField!
    @IBOutlet weak var field3: UITextField!
    @IBOutlet weak var field4: UITextField!
    @IBOutlet weak var field5: UITextField!
    @IBOutlet weak var field6: UITextField!
    @IBOutlet weak var field7: UITextField!
    @IBOutlet weak var field8: UITextField!
    @IBOutlet weak var field9: UITextField!
    @IBOutlet weak var field10: UITextField!
    @IBOutlet weak var field11: UITextField!
    @IBOutlet weak var field12: UITextField!
    @IBOutlet weak var field13: UITextField!
    @IBOutlet weak var field14: UITextField!
    @IBOutlet weak var field15: UITextField!
    @IBOutlet weak var field16: UITextField!
    @IBOutlet weak var field17: UITextField!
    @IBOutlet weak var field18: UITextField!
    @IBOutlet weak var field19: UITextField!
    @IBOutlet weak var field20: UITextField!
    @IBOutlet weak var field21: UITextField!
    @IBOutlet weak var field22: UITextField!
    @IBOutlet weak var field23: UITextField!
    @IBOutlet weak var field24: UITextField!
    @IBOutlet weak var field25: UITextField!
    @IBOutlet weak var field26: UITextField!
    @IBOutlet weak var field27: UITextField!
    @IBOutlet weak var field28: UITextField!
    @IBOutlet weak var field29: UITextField!
    @IBOutlet weak var field30: UITextField!
    @IBOutlet weak var field31: UITextField!
    @IBOutlet weak var field32: UITextField!
    @IBOutlet weak var field33: UITextField!
    @IBOutlet weak var field34: UITextField!
    @IBOutlet weak var field35: UITextField!
    @IBOutlet weak var field36: UITextField!
    @IBOutlet weak var field37: UITextField!
    @IBOutlet weak var field38: UITextField!
    @IBOutlet weak var field39: UITextField!
    @IBOutlet weak var field40: UITextField!
    @IBOutlet weak var field41: UITextField!
    @IBOutlet weak var field42: UITextField!
    @IBOutlet weak var field43: UITextField!
    @IBOutlet weak var field44: UITextField!
    @IBOutlet weak var field45: UITextField!
    @IBOutlet weak var field46: UITextField!
    @IBOutlet weak var field47: UITextField!
    @IBOutlet weak var field48: UITextField!
    @IBOutlet weak var field49: UITextField!
    @IBOutlet weak var field50: UITextField!
    @IBOutlet weak var field51: UITextField!
    @IBOutlet weak var field52: UITextField!
    @IBOutlet weak var field53: UITextField!
    @IBOutlet weak var field54: UITextField!
    @IBOutlet weak var field55: UITextField!
    @IBOutlet weak var field56: UITextField!
    @IBOutlet weak var field57: UITextField!
    @IBOutlet weak var field58: UITextField!
    @IBOutlet weak var field59: UITextField!
    @IBOutlet weak var field60: UITextField!
    @IBOutlet weak var field61: UITextField!
    @IBOutlet weak var field62: UITextField!
    @IBOutlet weak var field63: UITextField!
    @IBOutlet weak var field64: UITextField!
    @IBOutlet weak var field65: UITextField!
    @IBOutlet weak var field66: UITextField!
    @IBOutlet weak var field67: UITextField!
    @IBOutlet weak var field68: UITextField!
    @IBOutlet weak var field69: UITextField!
    @IBOutlet weak var field70: UITextField!
    @IBOutlet weak var field71: UITextField!
    @IBOutlet weak var field72: UITextField!
    @IBOutlet weak var field73: UITextField!
    @IBOutlet weak var field74: UITextField!
    @IBOutlet weak var field75: UITextField!
    @IBOutlet weak var field76: UITextField!
    @IBOutlet weak var field77: UITextField!
    @IBOutlet weak var field78: UITextField!
    @IBOutlet weak var field79: UITextField!
    @IBOutlet weak var field80: UITextField!
    @IBOutlet weak var field81: UITextField!
    @IBOutlet weak var field82: UITextField!
    @IBOutlet weak var field83: UITextField!
    @IBOutlet weak var field84: UITextField!
    @IBOutlet weak var field85: UITextField!
    @IBOutlet weak var field86: UITextField!
    @IBOutlet weak var field87: UITextField!
    @IBOutlet weak var field88: UITextField!
    @IBOutlet weak var field89: UITextField!
    @IBOutlet weak var field90: UITextField!
    @IBOutlet weak var field91: UITextField!
    @IBOutlet weak var field92: UITextField!
    @IBOutlet weak var field93: UITextField!
    @IBOutlet weak var field94: UITextField!
    @IBOutlet weak var field95: UITextField!
    @IBOutlet weak var field96: UITextField!
    @IBOutlet weak var field97: UITextField!
    @IBOutlet weak var field98: UITextField!
    @IBOutlet weak var field99: UITextField!
    @IBOutlet weak var field100: UITextField!
    @IBOutlet weak var field101: UITextField!
    @IBOutlet weak var field102: UITextField!
    @IBOutlet weak var field103: UITextField!
    @IBOutlet weak var field104: UITextField!
    @IBOutlet weak var field105: UITextField!
    @IBOutlet weak var field106: UITextField!
    @IBOutlet weak var field107: UITextField!
    @IBOutlet weak var field108: UITextField!
    @IBOutlet weak var field109: UITextField!
    @IBOutlet weak var field110: UITextField!
    @IBOutlet weak var field111: UITextField!
    @IBOutlet weak var field112: UITextField!
    @IBOutlet weak var field113: UITextField!
    @IBOutlet weak var field114: UITextField!
    @IBOutlet weak var field115: UITextField!
    @IBOutlet weak var field116: UITextField!
    @IBOutlet weak var field117: UITextField!
    @IBOutlet weak var field118: UITextField!
    @IBOutlet weak var field119: UITextField!
    @IBOutlet weak var field120: UITextField!
    @IBOutlet weak var field121: UITextField!
    @IBOutlet weak var field122: UITextField!
    @IBOutlet weak var field123: UITextField!
    @IBOutlet weak var field124: UITextField!
    @IBOutlet weak var field125: UITextField!
    @IBOutlet weak var field126: UITextField!
    @IBOutlet weak var field127: UITextField!
    @IBOutlet weak var field128: UITextField!
    @IBOutlet weak var field129: UITextField!
    @IBOutlet weak var field130: UITextField!
    @IBOutlet weak var field131: UITextField!
    @IBOutlet weak var field132: UITextField!
    @IBOutlet weak var field133: UITextField!
    @IBOutlet weak var field134: UITextField!
    @IBOutlet weak var field135: UITextField!
    @IBOutlet weak var field136: UITextField!
    @IBOutlet weak var field137: UITextField!
    @IBOutlet weak var field138: UITextField!
    @IBOutlet weak var field139: UITextField!
    @IBOutlet weak var field140: UITextField!
    @IBOutlet weak var field141: UITextField!
    @IBOutlet weak var field142: UITextField!
    @IBOutlet weak var field143: UITextField!
    @IBOutlet weak var field144: UITextField!
    @IBOutlet weak var field145: UITextField!
    @IBOutlet weak var field146: UITextField!
    @IBOutlet weak var field147: UITextField!
    @IBOutlet weak var field148: UITextField!
    @IBOutlet weak var field149: UITextField!
    @IBOutlet weak var field150: UITextField!
    @IBOutlet weak var field151: UITextField!
    @IBOutlet weak var field152: UITextField!
    @IBOutlet weak var field153: UITextField!
    @IBOutlet weak var field154: UITextField!
    @IBOutlet weak var field155: UITextField!
    @IBOutlet weak var field156: UITextField!
    @IBOutlet weak var field157: UITextField!
    @IBOutlet weak var field158: UITextField!
    @IBOutlet weak var field159: UITextField!
    @IBOutlet weak var field160: UITextField!
    @IBOutlet weak var field161: UITextField!
    @IBOutlet weak var field162: UITextField!
    @IBOutlet weak var field163: UITextField!
    @IBOutlet weak var field164: UITextField!
    @IBOutlet weak var field165: UITextField!
    @IBOutlet weak var field166: UITextField!
    @IBOutlet weak var field167: UITextField!
    @IBOutlet weak var field168: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let textFieldArray = [field0, field1, field2, field3, field4, field5, field6, field7, field8, field9, field10, field11, field12, field13, field14, field15, field16, field17, field18, field19, field20, field21, field22, field23, field24, field25, field26, field27, field28, field29, field30, field31, field32, field33, field34, field35, field36, field37, field38, field39, field40, field41, field42, field43, field44, field45, field46, field47, field48, field49, field50, field51, field52, field53, field54, field55, field56, field57, field58, field59, field60, field61, field62, field63, field64, field65, field66, field67, field68, field69, field70, field71, field72, field73, field74, field75, field76, field77, field78, field79, field80, field81, field82, field83, field84, field85, field86, field87, field88, field89, field90, field91, field92, field93, field94, field95, field96, field97, field98, field99, field100, field101, field102, field103, field104, field105, field106, field107, field108, field109, field110, field111, field112, field113, field114, field115, field116, field117, field118, field119, field120, field121, field122, field123, field124, field125, field126, field127, field128, field129, field130, field131, field132, field133, field134, field135, field136, field137, field138, field139, field140, field141, field142, field143, field144, field145, field146, field147, field148, field149, field150, field151, field152, field153, field154, field155, field156, field157, field158, field159, field160, field161, field162, field163, field164, field165, field166, field167, field168]
        
        for i in 0...168{
            textFieldArray[i]?.addTarget(self, action: #selector(ViewController.textFieldDidChange(_:)), for: UIControl.Event.editingChanged)
        }

        self.textFieldArray = textFieldArray
        //sets a tag for each of the 169 textfields, so that they can be easily accessed.
        for i in 0...168 {
            if let textField = textFieldArray[i]{
                textField.tag = i
            }
        }
        let puzzle1 = ("CABARET.EERIEA.A...O.R.E.NRADAR.UPRIGHTR.G.A.C.O.U.EINERTIA.RULERE...I.N...A..DESPOT.CLERIC..U...C.O...AAMPLE.HAGGARDI.P.A.A.I.V.ESPORRAN.CROWNL.R.L.C...I.ZENTRY.ECHIDNA", ["CABARET":"FLOORSHOW", "EERIE":"SPOOKY", "RADAR":"DETECTION DEVICE", "UPRIGHT":"VERTICAL", "INERTIA":"INACTIVITY", "RULER":"MEASURING TOOL", "DESPOT":"DICTATOR", "CLERIC":"ECCLESIASTIC", "AMPLE":"COPIOUS", "HAGGARD":"DRAWN", "SPORRAN":"POUCH WORN WITH A KILT", "CROWN":"DIADEM", "ENTRY":"ADMITTANCE", "ECHIDNA":"SPINY ANTEATER"], ["CARRIED":"TRANSPORTED", "BADGE":"EMBLEM", "TOUCAN":"TROPICAL BIRD", "ERROR":"MISTAKE", "REGULAR":"DEPENDABLE FOLLOWER" ,"ENTER":"GO IN", "RATIO":"MAGNITUDE RELATION", "SUPPORT":"REINFORCEMENT", "LOGIC":"REASONED JUDGEMENT", "CADENZA":"MUSICAL PASSAGE", "CHANCE":"OPPORTUNITY", "AISLE":"PART OF A CHURCH", "EARLY":"AHEAD OF SCHEDULE", "AVOID":"OBVEATE"])
        
        let puzzle2 = ("MANSION.FACTSA.O.N.O.A.A.TGAINS.MACABREN.S.I.A.E.B.RAVENGED.TRAINT...H.S...G..ENMITY.ADHERE..A...C.E...XALLOW.EARNESTM.A.H.A.I.A.RANIMALS.DOGMAS.S.R.E.E.L.CSHELF.DESSERT", ["MANSION":"LARGE HOUSE", "FACTS":"TRUE PIECES OF INFORMATION", "GAINS":"PROFITS", "MACABRE":"GRUESOME", "AVENGED":"RETALIATED", "TRAIN":"FORM OF TRANSPORT, TYPICALLY FOR FREIGHT", "ENMITY":"HOSTILITY", "ADHERE":"STICK TO SOMETHING", "ALLOW":"PERMIT", "EARNEST":"SINCERE", "ANIMALS":"CREATURES", "DOGMA":"DOCTRINE", "SHELF":"PLANK FOR STORAGE OR DISPLAYING", "DESSERT":"AFTER DINNER SWEET"], ["MAGNATE":"TYCOON", "NOISE":"SOUNDS WAVES, OR INTERFERENCE", "INSIGHT":"PERCEPTIVENESS", "NOMADS":"WANDERERS", "FACET":"CUT SIDE OF A GEM", "CABBAGE":"VEGETABLE USED IN COLESLAW", "STERN":"AUSTERE", "MALAISE":"DISCOMFORT", "DERIDES":"TO MOCK", "EXTRACT":"PULL OUT OF", "CEASED":"STOPPED", "AMASS":"ACCUMULATE", "WHARF":"DOCK", "EAGLE":"BIRD OF PREY"])
        
        let puzzle3 = ("WHARF.PAINFULA.P.L.I.M.L.IGARBAGE.PSALME.I.G.C.E.M.IROCKS.EARNEST..O...S.I...EACTUAL.FLAWEDB...B.D...O..SAMURAI.AGREEO.O.I.R.O.R.RLIVID.EARLIERV.E.G.C.T.E.OEASIEST.ADDER", ["WHARF":"DOCK", "PAINFUL":"HURTS TO THE TOUCH", "GARBAGE":"RUBBISH", "PSALM":"SACRED SONG/BOOK OF THE BIBLE", "ROCKS":"BOULDERS", "EARNEST":"SINCERE", "ACTUAL":"REAL", "FLAWED":"BLEMISHED", "SAMURAI":"ANCIENT JAPANESE WARRIOR", "AGREE":"CONCUR", "LIVID":"ANGRY", "EARLIER":"BEFORE", "EASIEST":"LEAST DIFFICULT", "ADDER":"VIPER"], ["WAGER":"BET", "APRICOT":"FRUIT (AxxIxxT)", "FLAGS":"COUNTRY'S CLOTH EMBLEM(S)", "PIECES":"FRAGMENTS", "IMPERIL":"ENDANGER", "FLAME":"FIRE", "LIMITED":"RESTRICTED", "ABSOLVE":"RELIEVE OF BLAME", "ABRIDGE":"ABBREVIATE", "WORRIED":"CONCERNED", "DIRECT":"STRAIGHFORWARD", "MOVES":"RELOCATES", "AORTA":"MAIN ARTERY", "ERROR":"MISTAKE"])
        
        let puzzle4 = ("CABARET.EERIEA.A...O.R.E.NRADAR.UPRIGHTR.G.A.C.O.U.EINERTIA.RULERE...I.N...A..DESPOT.CLERIC..U...C.O...AAMPLE.HAGGARDI.P.A.A.I.V.ESPORRAN.CROWNL.R.L.C...I.ZENTRY.ECHIDNA", ["CABARET":"FLOORSHOW", "EERIE":"SPOOKY", "RADAR":"DETECTION DEVICE", "UPRIGHT":"VERTICAL", "INERTIA":"INACTIVITY", "RULER":"MEASURING TOOL", "DESPOT":"DICTATOR", "CLERIC":"ECCLESIASTIC", "AMPLE":"COPIOUS", "HAGGARD":"DRAWN", "SPORRAN":"POUCH WORN WITH A KILT", "CROWN":"DIADEM", "ENTRY":"ADMITTANCE", "ECHIDNA":"SPINY ANTEATER"], ["CARRIED":"TRANSPORTED", "BADGE":"EMBLEM", "TOUCAN":"TROPICAL BIRD", "ERROR":"MISTAKE", "REGULAR":"DEPENDABLE FOLLOWER" ,"ENTER":"GO IN", "RATIO":"MAGNITUDE RELATION", "SUPPORT":"REINFORCEMENT", "LOGIC":"REASONED JUDGEMENT", "CADENZA":"MUSICAL PASSAGE", "CHANCE":"OPPORTUNITY", "AISLE":"PART OF A CHURCH", "EARLY":"AHEAD OF SCHEDULE", "AVOID":"OBVEATE"])
        
        
        func createLayout(_ aPuzzle: String){
            var counter = 0
            for index in puzzle3.0.indices{
                if puzzle3.0[index] == "."{
                    textFieldArray[counter]?.isHidden = true
                    counter += 1
                } else{
                    counter += 1
                }
            }
        }
        
        createLayout(puzzle3.0)
        
        //Initiallize an instance of Puzzle
        self.myPuzzle = Puzzle(puzzle3)

        for i in 0...168 {
            if let textField = textFieldArray[i]{
                textField.delegate = self
            }
        }
    }
    
    @IBOutlet weak var hintButton: UIButton!
    
    
    @IBAction func hint(_ sender: UIButton) {
        var randNum: Int
        var freebie = ""
        createAutoAdvanceArray()
        if hintCount > 0 {
            if cycleArray.isEmpty{
                randNum = Int.random(in: 0 ... 2)
            }
            else {
                randNum = Int.random(in: 0 ..< cycleArray.count)
            }
            freebie = String(myPuzzle.charArray[cycleArray[randNum]])
            var counter = 0
            while textFieldArray[cycleArray[randNum]]!.text != "" {
                randNum = Int.random(in: 0 ..< cycleArray.count)
                freebie = String(myPuzzle.charArray[cycleArray[randNum]])
                if counter >= cycleArray.count{
                    break
                }
                counter += 1
            }
        }
        else {
            return
        }
        textFieldArray[cycleArray[randNum]]!.text = freebie
        activeTextField.resignFirstResponder()
        hintCount -= 1
        hintButton.setTitle("Hint(s): \(hintCount)", for: .normal)
    }
    
    func createAutoAdvanceArray(){
        if toggleAcross_DownButton.titleLabel!.text == "Across"{
            if let textField = myPuzzle.acrossWordCellToWordDictionary[activeTextField.tag]{
                if let cycle = myPuzzle.acrossWordLocationDictionary[textField]{
                    cycleArray = cycle
                }
            }
        }
        else {
            if let textField = myPuzzle.downWordCellToWordDictionary[activeTextField.tag]{
                if let cycle = myPuzzle.downWordLocationDictionary[textField]{
                    cycleArray = cycle
                }
            }
        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let currentText = textField.text ?? ""
        guard let stringRange = Range(range, in: currentText) else { return false }
        
        let updatedText = currentText.replacingCharacters(in: stringRange, with: string)
        
        return updatedText.count <= 1
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        createAutoAdvanceArray()

        if (textField.text?.count)! >= 1 {
            var lastCell: Bool = false
            for i in cycleArray{
                if activeTextField.tag == cycleArray[cycleArray.count - 1]{
                    lastCell = true
                    continue
                }
                if activeTextField.tag >= i || textFieldArray[i]!.text != ""{
                    continue
                }
                else{
                    if i == cycleArray.last{
                        textFieldArray[i]!.resignFirstResponder()
                    }
                    nextField = i
                    break
                }
            }
            textFieldArray[nextField]?.becomeFirstResponder()
            if lastCell{
                activeTextField.resignFirstResponder()
            }
        }
    }
}




extension ViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        activeTextField.resignFirstResponder()
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        createAutoAdvanceArray()
        activeTextField = textField
        lastEditedTextField = textField
        if toggleAcross_DownButton.titleLabel!.text == "Down"{
            if let tempWord = myPuzzle.downWordCellToWordDictionary[activeTextField.tag]{
                if let array = myPuzzle.downWordLocationDictionary[tempWord]{
                    for i in array {
                        textFieldArray[i]?.backgroundColor = .lightGray
                    }
                }
            }
        }
        else {
            if let tempWord = myPuzzle.acrossWordCellToWordDictionary[activeTextField.tag]{
                if let array = myPuzzle.acrossWordLocationDictionary[tempWord]{
                    for i in array {
                        textFieldArray[i]?.backgroundColor = .lightGray
                    }
                }
            }
        }
        textField.clearsOnBeginEditing = true
        self.activeTextField = textField
        if let tempWord = myPuzzle.acrossWordCellToWordDictionary[activeTextField.tag]{
            self.currentAcrossWord = tempWord
        }
        if let tempWord = myPuzzle.downWordCellToWordDictionary[activeTextField.tag]{
            self.currentDownWord = tempWord
        }
        print("Across: ", currentAcrossWord, "\nDown: ", currentDownWord)
        if toggleAcross_DownButton.titleLabel!.text == "Across"{
            if let hint = myPuzzle.acrossWordCellToWordDictionary[activeTextField.tag]{
                clue.text = myPuzzle.acrossClues[hint]
            }
            else {
                clue.text = ""
            }
            clue.allowsEditingTextAttributes = false
        }
        else{
            if let hint = myPuzzle.downWordCellToWordDictionary[activeTextField.tag]{
                clue.text = myPuzzle.downClues[hint]
            }
            else {
                clue.text = ""
            }
            clue.allowsEditingTextAttributes = false
        }
        
        print(cycleArray)
    }
    
    func checkAnswer() {
        var checkWord: String = ""
        
        if let word = myPuzzle.acrossWordLocationDictionary[self.currentAcrossWord]{
            for i in word {
                if String(myPuzzle.charArray[i]) == self.textFieldArray[i]!.text{
                    checkWord.append(self.textFieldArray[i]!.text!)
                    if let word = myPuzzle.acrossWordCellToWordDictionary[self.lastEditedTextField.tag]{
                        if checkWord == word{
                            for i in myPuzzle.acrossWordLocationDictionary[checkWord]!{
                                self.textFieldArray[i]!.backgroundColor = .green
                                //                        self.textFieldArray[i]!.isUserInteractionEnabled = false
                            }
                        }
                    }
                }
            }
        }

        checkWord = ""
        if let word = myPuzzle.downWordLocationDictionary[self.currentDownWord]{
            for i in word {
                if String(myPuzzle.charArray[i]) == self.textFieldArray[i]!.text{
                    checkWord.append(self.textFieldArray[i]!.text!)
                    if let word = myPuzzle.downWordCellToWordDictionary[self.lastEditedTextField.tag]{
                        if checkWord == word{
                            for i in myPuzzle.downWordLocationDictionary[checkWord]!{
                                self.textFieldArray[i]!.backgroundColor = .green
                                //                        self.textFieldArray[i]!.isUserInteractionEnabled = false
                            }
                        }
                    }
                }
            }
        }
    }
    
    func checkForSolved(){
        for i in 0...168{
            if myPuzzle.charArray[i] == "."{
                continue
            }
            if String(myPuzzle.charArray[i]) == textFieldArray[i]?.text{
                if i == 168{
                    winner.image = UIImage(named: "Winner")
                    winner.isHidden = false
                    print("Puzzle SOLVED!")
                    break
                }
                else {
                    continue
                }
            }
            else {
                print("Puzzle not solved")
                break
            }
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.lastEditedTextField = textField
        if toggleAcross_DownButton.titleLabel!.text == "Down" {
            if let tempWord = myPuzzle.downWordCellToWordDictionary[lastEditedTextField.tag]{
                if let array = myPuzzle.downWordLocationDictionary[tempWord]{
                    for i in array {
                        if textFieldArray[i]?.backgroundColor != .green{
                            textFieldArray[i]?.backgroundColor = .white
                        }
                    }
                }
            }
        }
        else {
            if let tempWord = myPuzzle.acrossWordCellToWordDictionary[lastEditedTextField.tag]{
                if let array = myPuzzle.acrossWordLocationDictionary[tempWord]{
                    for i in array {
                        if textFieldArray[i]?.backgroundColor != .green{
                            textFieldArray[i]?.backgroundColor = .white
                        }
                    }
                }
            }
        }
        checkAnswer()
        checkForSolved()
    }
}
