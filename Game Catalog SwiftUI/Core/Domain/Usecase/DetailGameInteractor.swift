//
//  DetailGameInteractor.swift
//  Game Catalog SwiftUI
//
//  Created by DiazAgfa on 10/11/20.
//

import Foundation
import RxSwift

protocol DetailUseCase {

  func getGameDetail() -> Observable<GameDetailModel>

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


  func getGameDetail() -> Observable<GameDetailModel> {
    return repository.getGameDetail(game: game)
  }
  
}
