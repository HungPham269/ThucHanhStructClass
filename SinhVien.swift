//
//  SinhVien.swift
//  ThucHanhStructClass
//
//  Created by Phương Hùng on 01/10/2022.
//

import Foundation


struct SinhVien{
    
    
    //Propẻties
    var maSv: String
    var tenSv: String
    var diemToan: Float
    var diemLy: Float
    var diemHoa: Float
    var diemTB: Float
    
    
    
    init(maSv: String, tenSv: String, diemToan: Float, diemLy: Float, diemHoa: Float) {
        self.maSv = maSv
        self.tenSv = tenSv
        self.diemToan = diemToan
        self.diemLy = diemLy
        self.diemHoa = diemHoa
        self.diemTB = (diemLy+diemHoa+diemToan)/3
    }
    //Một phương thức mutating có thể thay đổi giá trị
    mutating func saveDiemToan(newToan: Float){
        self.diemToan = newToan
        self.diemTB = (diemToan+diemLy+diemHoa)/3
    }
    
}
