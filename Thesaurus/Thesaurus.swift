//
//  Thesaurus.swift
//  Thesaurus
//
//  Created by Frank Faustino on 6/20/18.
//  Copyright © 2018 Frank Faustino. All rights reserved.
//

import Foundation

func getSynonyms(for string: String) -> [String]? {
    var results: [String] = []

    if let result = synonyms[string] {
        return result
    } else {
        for (key, value) in synonyms where value.contains(string) {
            results.append(key)
            for word in value where word != string {
                results.append(word)
            }
        }
        return results.isEmpty ? nil : results
    }
}
