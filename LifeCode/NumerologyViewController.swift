//
//  NumerologyViewController.swift
//  LifeCode
//
//  Created by 施馨檸 on 16/10/2017.
//  Copyright © 2017 施馨檸. All rights reserved.
//

import UIKit

class NumerologyViewController: UIViewController {
   
    @IBOutlet var numberButtons: [UIButton]!
    
    @IBOutlet weak var lifeCodeLabel: UILabel!
    
    
    var lifeCode1 = 0
    var lifeCode2 = 0
    var lifeCode3 = 0
    
    var buttonTag: Int = 0
    
    @IBAction func getButtonTag(_ sender: UIButton) {
        buttonTag = sender.tag
    }
    
    var detailArray = [numberDetail.init(number: "1", intro: "如果你擁有數字1，你是天生的領導者。堅持自己做決定的權利，要求思考與行動的自由。你充滿決心，不屈不撓。會履行責任，保護你所愛的人，一旦決定目標之後，不會讓任何人事阻擋你。生命數字是1的人，只要能充分利用自己的動力、創造力、原創性與創始的精神，通常能在生命中成就許多事，前提是你要能擔任領導者的角色，並用自己的方式做事。"),
                       numberDetail.init(number: "2", intro: "你的天性關鍵字是「調停者」。你擁有藝術家的靈魂，極度細膩、易感，還有點害羞。這些特質是你的長處，也是你的弱點。你擁有強烈感知自身與他人情感的能力，這種敏感性格可能會讓你退縮並壓抑自己強大的天份。你擁有許多美好特質，感性與感知能力只是其中的兩項。由於你直覺就能知道人們要什麼，知道他們有什麼感受，所以你很能融入團體，並且在分歧的意見中，想辦法讓大家和諧共處。"),
                       numberDetail.init(number: "3", intro: "你擁有絕佳創造力與自我表達的天份。你聰明機智、很能侃侃而談，而且喜愛鎂光燈。由於你擁有表達自我的天份，可能成為眾所矚目的焦點，大家注意力都放在你身上。然而，你很容易變成到處社交的花蝴蝶，浪費自己的天份。必須保持專心並維持紀律。你正面的運用表達天份時，可以帶動整個世界的氣氛，讓別人開心起來，並且為自己帶來許多成功與快樂的時刻。"),
                       numberDetail.init(number: "4", intro: "生命數字4的人實際、腳踏實地，擁有強烈的對錯感。一絲不狗，井井有條，做什麼事都有方法，掌控一切。解決問題時擁有決斷力，而且能夠一步一步採取理性的步驟。你為人可靠，值得信賴，是社群中的基石。由於天性喜歡有條有理，容易變得僵化、固守傳統，可能會再必須改變時過度小心，導致機會現身卻未能掌握。你勇敢、奮鬥到底。努力工作、腳踏實地、擁有傳統的美德，你會因為這些特質，得到自己尋求與應有的獎賞。"),
                       numberDetail.init(number: "5", intro: "你的性格關鍵是自由。你熱愛旅遊、冒險、變化，認識新朋友，擁有貓一般的好奇心，可望體驗生命的一切。你很容易就交到朋友，性格歡樂，可能吸引到各行各業的人士。生命數字是5的人，有時不能掌控自己自由自在與渴望冒險的性格，引發藥物濫用、大吃大喝或過度縱慾等問題。你的挑戰來自於學會自由的真諦。你會遇到支持你、幫助你的朋友與同事，他們會讓你踏上成功之路。"),
                       numberDetail.init(number: "6", intro: "你擁有強大的憐憫心，喜歡服務他人，關心弱者與受壓迫的人。你可以治癒和幫助他人，並且安慰貧苦之人，常把肩膀借給人哭泣。你人生的任務是培養真正能幫助他人的方法，而不只是同情聆聽。負責是你的天性，天生穩定和諧，你慷慨、仁慈、富有吸引力。你所面對的誘惑與危險，在於你會把自己看成救世主，把別人的重擔扛在自己身上。"),
                       numberDetail.init(number: "7", intro: "生命數字7是真相的追求者與追尋者。你清楚且強烈的感受到自己是靈魂的產物，因此你的生命歷程會致力於探訪未知的事物，會尋找生命秘密的答案。你擁有處理人生課題得天賦。機智聰明，長於分析式與抽象式思考，能夠維持高專注力。你的人生挑戰是保持獨立，但又不感到孤單與無足輕重。你必須緊緊守住自己獨特的世界觀，同時開闊自己的心胸，接受人群與別人提供的知識。"),
                       numberDetail.init(number: "8", intro: "你是天生的領導者，擁有累積龐大財富的能力。你的管理才能不在於簿記或瑣碎的管理，而在於宏大的願景、目的，以及長遠的目標。你有能力鼓舞他人加入你的追尋之旅，然而，別人通常看不到你所看見的東西。因此，你身邊的人需要你不斷地引導、鼓勵。你的數字踏在危險的權利道路上，墮落與腐敗也等在那裡。你必須學習從失敗與挫折中站起來，要小心不能變得過於固執、傲慢、缺乏耐心。"),
                       numberDetail.init(number: "9", intro: "你是慈善家與人道主義者，關懷社會，重視世界情勢。擁有深厚的同情心，是個理想主義者。你會奉獻自己的金錢、時間與精力讓世界變得更美好。你的關鍵性格是你感到必須犧牲奉獻。你必須學會放棄物質財產與人際關係。你的人生課題不論是何事，只要握太緊就會帶來痛苦。你有能力遠距離、客觀的檢視自己的人生，你要對自己誠實負責。你願意敞開心胸面對自己的缺點與長處時，將會身心平衡，也能更愛自己、愛整個人生，對自己與生活有近一步的了解。")]
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if lifeCode1 < 10 {
            lifeCodeLabel.text = "\(lifeCode1)"
        } else if lifeCode2 < 10 {
            lifeCodeLabel.text = "\(lifeCode2)"
        } else if lifeCode3 < 10 {
            lifeCodeLabel.text = "\(lifeCode3)"
        }
         
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let controller = segue.destination as! DetailViewController
        controller.detail = detailArray[buttonTag]
        
        
    }
    

}
