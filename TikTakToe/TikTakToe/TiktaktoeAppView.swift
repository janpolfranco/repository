//
//  TiktaktoeAppView.swift
//  TikTakToe
//
//  Created by John Paul M. Franco on 6/16/21.
//

import SwiftUI

struct TiktaktoeAppView: View {
    
    @StateObject private var viewModel = GameViewModel()
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                ScoreBoard(humanScore: viewModel.humanScore, computerScore: viewModel.computerScore, proxy: geometry)
                LazyVGrid(columns: viewModel.columns, spacing: 5) {
                    ForEach(0..<9) { i in
                        ZStack {
                            CirclesGrid(proxy: geometry)
                            CircleMovesIndicator(systemImageName: viewModel.moves[i]?.indicator ?? "")
                        }
                        .onTapGesture {
                            viewModel.determinePlayerActions(forIndex: i)
                        }
                    }
                }
                Spacer()
                ResetScoreButton(viewModel: viewModel)
                
            }
            .disabled(viewModel.isGameboardDisabled)
            .padding()
            .alert(item: $viewModel.alertItem, content: { alertItem in
                Alert(title: alertItem.title, message: alertItem.message, dismissButton: .default(alertItem.buttonTitle, action: {
                    let winner: Player? = alertItem.winner
                    if winner == .human {
                        viewModel.humanScore+=1
                    } else if winner == .computer {
                        viewModel.computerScore+=1
                    }
                    viewModel.resetGame()
                }))
            })
        }
    }
}

enum Player {
    case human, computer
}

struct Move {
    let player: Player
    let boardIndex: Int
    
    var indicator: String {
        return player == .human ? "xmark" : "circle"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TiktaktoeAppView()
    }
}

struct ScoreBoard: View {
    var humanScore: Int
    var computerScore: Int
    var proxy: GeometryProxy
    var body: some View {
        VStack(spacing: 10) {
            Text("Score")
                .font(.system(size: 40, weight: .semibold))
            HStack(spacing: 30) {
                VStack {
                    Text("You")
                        .font(.system(size: 25))
                        .frame(width: proxy.size.width/3)
                        .multilineTextAlignment(.center)
                    Text("\(humanScore)")
                        .font(.system(size: 50, weight: .bold))
                }
                .padding(.trailing, 20)
                VStack {
                    Text("Computer")
                        .font(.system(size: 25))
                        .frame(width: proxy.size.width/3)
                        .multilineTextAlignment(.center)
                    Text("\(computerScore)")
                        .font(.system(size: 50, weight: .bold))
                }
                .padding(.leading, 20)
            }
            .padding(.vertical, 40)
        }
    }
}

struct CirclesGrid: View {
    var proxy: GeometryProxy
    var body: some View {
        Circle()
            .foregroundColor(.blue).opacity(0.5)
            .frame(width: proxy.size.width/3 - 25, height: proxy.size.width/3 - 25)
    }
}

struct CircleMovesIndicator: View {
    var systemImageName: String
    var body: some View {
        Image(systemName: systemImageName)
            .resizable()
            .frame(width: 40, height: 40)
            .foregroundColor(.white)
    }
}

struct ResetScoreButton: View {
    var viewModel: GameViewModel
    var body: some View {
        Button("Reset Score") {
            viewModel.humanScore = 0
            viewModel.computerScore = 0
        }
        .frame(width: 250, height: 50)
        .foregroundColor(.white)
        .background(Color(.red))
        .font(.system(size: 25, weight: .semibold))
        .cornerRadius(10)
        .padding(.bottom, 20)
    }
}
