//
//  main.swift
//  ThucHanhStructClass
//
//  Created by Phương Hùng on 01/10/2022.
//

import Foundation

//nhập vào 1 mảng sinh viên
//1.In ra danh sách sinh viên
//2.In ra những sinh viên có điểm trung bình > 8
//3. tìm sinh viên theo mã sinh viên
//4. Sắp xếp danh sách sinh viên

//print("Nhập số sinh viên: ")
let n = Int(readLine() ?? "") ?? 0
//tạo mảng chứa n sinh viên
var arrSinhvien: [SinhVien] = []
for i in 0..<n{
    //print("Nhập sinh viên thứ \(i+1)")
    //print("Nhập mã SV: ")
    let maSV = readLine() ?? ""
    //print("Nhập tên SV: ")
    var tenSV = readLine() ?? ""
   //print("Nhập điểm toán: ")
    var diemToan = Float(readLine() ?? "") ?? 0
    //print("Nhập điểm Lý: ")
    let diemLy = Float(readLine() ?? "") ?? 0
    //
    print("Nhập điểm Hóa: ")
    let diemHoa = Float(readLine() ?? "") ?? 0
    
    let newSV = SinhVien(maSv: maSV, tenSv: tenSV, diemToan: diemToan, diemLy: diemLy, diemHoa: diemHoa)
    arrSinhvien.append(newSV)
    
}
// In ra danh sách tên và điểm TB sinh viên
for sv in arrSinhvien {
    print(sv.tenSv, " có điểm tb là", sv.diemTB)
}

//Tạo 1 mảng các sinh viên sẵn
var arraySV: [SinhVien] = [
    SinhVien(maSv: "01", tenSv: "Nam", diemToan: 8, diemLy: 6, diemHoa: 5),
    SinhVien(maSv: "02", tenSv: "Vu", diemToan: 6.5, diemLy: 8, diemHoa:7),
    SinhVien(maSv: "03", tenSv: "Ha", diemToan: 6, diemLy: 7.5, diemHoa: 8),
    SinhVien(maSv: "04", tenSv: "Hoang", diemToan: 5, diemLy: 6.5, diemHoa: 9),
    SinhVien(maSv: "04", tenSv: "Linh", diemToan: 7, diemLy: 8, diemHoa: 8.5)

]

for sv in arraySV{
    print(sv.tenSv, " Có Điểm TB là", sv.diemTB)

}


//In ra những sinh viên có điểm trung bình lớn hơn 8
for sv in arraySV{
    if sv.diemTB > 6{
        print("\(sv.tenSv) có điểm TB lớn hơn 6: \(sv.diemTB)")
    }

}

//Tìm sinh viên theo mã SV
print("Sinh viên có mã 01 là: ")
for sv in arraySV{
    if sv.maSv.contains("01"){
        print(sv.tenSv, sv.maSv)
        break
    }
}


//Sắp xếp ds sv theo điểm TB tăng dần
let sortArr = arraySV.sorted{
    svTruoc, svSau in
    //Diều kiện để sắp xếp
    svTruoc.diemTB < svSau.diemTB
}
print("Sắp xếp theo điểm TB")
sortArr.forEach{ sv in
    
    print(sv.tenSv, sv.diemTB)
    
}
//Sửa thôgn tin của sv có mã 02
for index in 0..<arraySV.count{
    if arraySV[index].maSv.contains("02"){
        arraySV[index].tenSv = " Hoang van A"
        arraySV[index].diemToan = 10
        break
    }
}
print("Sau khi thay đổi: ")
arraySV.forEach{
    sv in
    print(sv.tenSv, sv.diemToan)
}
