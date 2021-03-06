//
//  ResultDependencyResolver.swift
//  Buscardor
//
//  Created by Romina Pozzuto on 17/04/2021.
//

import Foundation

internal class ResultDependencyResolver: ResultDependencyResolverProtocol {
    
    internal func resolvePresenter() -> ResultPresenterProtocol {
        return ResultPresenter(
            interactor: resolveInteractor())
    }
    
    //    MARK: - Interactor
    internal func resolveInteractor() -> ResultInteractorProtocol {
        return ResultInteractor(
            mapper: resolveViewModelMapper())
    }
    
    //    MARK: - ViewModel Mapper
    private func resolveViewModelMapper() -> ResultViewModelMapperProtocol {
        return ResultViewModelMapper()
    }
    
}
