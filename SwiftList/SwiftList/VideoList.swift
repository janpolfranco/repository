//
//  VideoList.swift
//  SwiftList
//
//  Created by John Paul M. Franco on 6/15/21.
//

import SwiftUI

struct Video: Identifiable {
    var id = UUID()
    let imageName: String
    let title: String
    let description: String
    let viewCount: Int
    let uploadDate: String
    let url: URL
}

struct VideoList {
    
    static let Videos = [
        Video(imageName: "vlog-1",
              title: "Palaka: Unang Vlog ko",
              description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer",
              viewCount: 56,
              uploadDate: "Jun 17, 2020",
              url: URL(string: "https://www.youtube.com/watch?v=mfBxwaMIJGg")!),
        Video(imageName: "vlog-2",
              title: "Vlog 2",
              description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer",
              viewCount: 63,
              uploadDate: "Jun 19, 2020",
              url: URL(string: "https://www.youtube.com/watch?v=EGk8rhkk6IU")!),
        Video(imageName: "vlog-3",
              title: "Vlog 3: Mukbang Pancit Canton!",
              description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer",
              viewCount: 52,
              uploadDate: "Jun 30, 2020",
              url: URL(string: "https://www.youtube.com/watch?v=o7xrsFgEjd8")!),
        Video(imageName: "vlog-dji",
              title: "DJI Osmo Mobile 3 Unboxing",
              description: "Unboxing my first gimbal, the DJI OSMO MOBILE 3.",
              viewCount: 150,
              uploadDate: "Jul 3, 2020",
              url: URL(string: "https://www.youtube.com/watch?v=kKiBjy2OjW4")!),
        Video(imageName: "vlog-prumosyonal",
              title: "Vlog 4: Prumosyonal Bidyo",
              description: "Doing some promotional video. But the construction is hindering me.",
              viewCount: 59,
              uploadDate: "Jul 6, 2020",
              url: URL(string: "https://www.youtube.com/watch?v=Xq3CVyslnF0")!),
        Video(imageName: "vlog-dji-setup",
              title: "*TAGALOG* How to Setup DJI Osmo Mobile 3 (Mounting, Basic Features, Buttons, etc)",
              description: "Today I'm gonna teach you how to mount your phone to your DJI Osmo Mobile 3. (Tagalog Version) I'm also gonna be teaching you how to use the DJI Mimo App.",
              viewCount: 440,
              uploadDate: "Jul 12, 2020",
              url: URL(string: "https://www.youtube.com/watch?v=O9-VjMv76XU")!),
        Video(imageName: "vlog-5",
              title: "Vlog 5: Costal/River clean up drive",
              description: "Coastal/ River Clean-up drive last August 8, 2020.",
              viewCount: 16,
              uploadDate: "Aug 16, 2020",
              url: URL(string: "https://www.youtube.com/watch?v=0n0cK6R6Rhc")!),
        Video(imageName: "vlog-new-camera",
              title: "Testing my new camera setup",
              description: "Testing out my new vlogging camera set up.",
              viewCount: 61,
              uploadDate: "Aug 16, 2020",
              url: URL(string: "https://www.youtube.com/watch?v=C1quKlv4is8")!),
        Video(imageName: "vlog-cover-buwan",
              title: "Pork Sinigang Covers: Buwan by JK Labajo",
              description: "This is my first time to cover songs :D Magpapraktis pa ako para mas marami ako maicover na kanta :D Wag niyo seryosohin masyado covers ko. Pampamilyang channel pa rin tayo dito.",
              viewCount: 34,
              uploadDate: "Oct 13, 2020",
              url: URL(string: "https://www.youtube.com/watch?v=TMy2EncGOBI")!),
    ]
}
