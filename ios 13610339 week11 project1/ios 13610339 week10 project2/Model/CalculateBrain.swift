import Foundation
import UIKit // ชุดเครื่องมือ
//struct จะเป็นแบบ Pass by value คือ เหมือนก๊อปปี้แยกกันคนละอัน แก้กับอันใดกับอันอันหนึ่งไม่มีผลกับอีกอัน
//class จะเป็นแบบ Pass by Reference คือ เหมือนก๊อปปี้แยกกันคนละอัน แต่แก้กับอันใดกับอันอันหนึ่งมีผลกับอีกอัน

struct CalbalateBrain {
    
    var bmi: Float = 0.0 // 1 Value เก็บตัวเดียวนะ
    var bmiStruct : BMI? // 3 Value เก็บ 3 ตัวเป็นชุด (value, advice, color)
    //เครื่องหมาย ? คือตัวแปรชนิด Optional คือ ตัวเลือกจะมีค่าหรือไม่มีค่าก็เป็นไปได้
    //ดังนั้นมันอาจจะไม่มีค่าก็ได้
    
    func getBMIValue() -> String{
//        let bmiTo1DecimalPlace = String(format: "%.1f", bmi)
        let bmiTo1DecimalPlace = String(format: "%.1f", bmiStruct?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmiStruct?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmiStruct?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    mutating func  calculateBMI(height:Float, weight:Float){
        //bmi ตัวที่ใช้ ไม่มี var หรือ let นำหน้า คือตัวที่เป็น Global var
        //ส่วนผสม weight กับ height คือ ตัวที่ func รับค่ามาในชื่อนั้น เป็น Local var
//        bmi = weight / (height * height)
        
        let bmiValueLocal = weight / ( height * height )
        
        if bmiValueLocal < 18.5 {
            bmiStruct = BMI(value: bmiValueLocal, advice: "Eat more pies!", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        }else if bmiValueLocal < 24.9{
            bmiStruct = BMI(value: bmiValueLocal, advice: "First as a fiddle!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }else {
            bmiStruct = BMI(value: bmiValueLocal, advice: "Eat less pies!", color: #colorLiteral(red: 1, green: 0, blue: 0.1973131299, alpha: 1))
            
        }//End else
        
    }//calculateBmi
    
}//calculateBrain
