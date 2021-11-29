//
//  dataModelKategori.swift
//  FinLit
//
//  Created by Sri Endah Ramurti on 09/11/21.
//

import Foundation
struct kategori : Identifiable{
    let id : Int
    let nama : String
    let gambar: String
    let warna : String
    let warna2 : String
    
    init (id: Int, nama : String, gambar: String, warna : String, warna2 : String){
        self.id = id
        self.nama = nama
        self.gambar = gambar
        self.warna = warna
        self.warna2 = warna2
    }
}
