//
// This source file is part of the Web3Swift.io open source project
// Copyright 2018 The Web3Swift Authors
// Licensed under Apache License v2.0
//
// MappedCollectionTests.swift
//
// Created by Timofey Solonin on 10/05/2018
//

import Nimble
import Quick
@testable import Web3Swift

final class MappedCollectionTests: XCTestCase {

    func testElementsAreMappedCorrectly() {
        expect{
            try MappedCollection(
                origin: GeneratedCollection(
                    element: { index in index },
                    times: 4
                ),
                mapping: { index in
                    String(
                        index + 1
                    )
                }
            ).value()
        }.to(
            equal(
                [
                    "1",
                    "2",
                    "3",
                    "4"
                ]
            )
        )
    }

}
