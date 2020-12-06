//
//  DetailGameInteractor.swift
//  Game Catalog SwiftUI
//
//  Created by DiazAgfa on 10/11/20.
//

import Foundation
import RxSwift
import Combine

protocol DetailUseCase {

  func getGameDetailRemote() -> AnyPublisher<GameDetailModel, Error>

  func getGameDetail() -> GameDetailModel

}

class DetailInteractor: DetailUseCase {

  private let repository: GameRepositoryProtocol
  private let game: GameModel

  required init(
    repository: GameRepositoryProtocol,
    game: GameModel
  ) {
    self.repository = repository
    self.game = game
  }

  func getGameDetailRemote() -> AnyPublisher<GameDetailModel, Error> {
    return repository.getGameDetail(game: game)
  }

    func getGameDetail() -> GameDetailModel {
        return GameDetailModel(id: game.id, name: game.name, rating: game.rating, released: game.released, background: game.background, description: "N/A", backgroundAdditional: "", website: "N/A")
    }

}
