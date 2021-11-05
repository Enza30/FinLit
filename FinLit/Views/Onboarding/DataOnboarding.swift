//
//  DataOnboarding.swift
//  FinLit
//
//  Created by Kevin Chilmi Rezhaldo on 05/11/21.
//

import Foundation

let tabs = [
    Page(title:"Satu", image: "image01", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "),
    
    Page(title:"Dua", image: "image02", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 2 "),
    
    Page(title:"Tiga", image: "image03", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 3 "),
    
    Page(title:"Empat", image: "image04", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 4 "),
    
    Page(title:"Lima", image: "image05", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 5 "),
]

struct Page {
    let title: String
    let image: String
    let text: String
}
