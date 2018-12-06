//
//  FeedParser.swift
//  Project08-SimpleRSSReader
//
//  Created by LinkE on 2018/12/4.
//  Copyright © 2018年 dev. All rights reserved.
//

import Foundation

class FeedParser: NSObject, XMLParserDelegate {
    fileprivate var rssItems = [(title: String, description: String, pubDate: String)]()
    fileprivate var currentElement = ""
    fileprivate var currentTitle = "" {
        didSet {
            currentTitle = currentTitle.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        }
    }
    
    
    fileprivate var currentDescription = "" {
        didSet {
            currentDescription = currentDescription.trimmingCharacters(in: .whitespacesAndNewlines)
        }
    }
    
    fileprivate var currentPubDate = "" {
        didSet {
            currentPubDate = currentPubDate.trimmingCharacters(in: .whitespacesAndNewlines)
        }
    }
    
    fileprivate var parseCompletionHandler: (([(title: String, description: String, pubDate: String)]) -> Void)?
    
    func parseFeed(feedURL: String, completionHandler: (([(title: String, description: String, pubDate: String)]) -> Void)?) -> Void {
        parseCompletionHandler = completionHandler
        
        guard let feedURL = URL(string: feedURL) else {
            print("feed URL is invalid")
            return
        }
        URLSession.shared.dataTask(with: feedURL) { (data, response, error) in
            if let error = error {
                print(error)
                return
            }
            
            let s = String(data: data!, encoding: .utf8)
            print(s)
            
            guard let data = data else {
                print("No data Fetched")
                return
            }
            
            let parser = XMLParser(data: data)
            parser.delegate = self
            parser.parse()
        }.resume()
    }
    
    
    //MARK: - XMLparser Delegate
    func parserDidStartDocument(_ parser: XMLParser) {
        rssItems.removeAll()
    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        currentElement = elementName
        
        if currentElement == "item" {
            currentTitle = ""
            currentDescription = ""
            currentPubDate = ""
        }
    }
    
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        switch currentElement {
        case "title":
            currentTitle += string
        case "description":
            currentDescription += string
        case "pubDate":
            currentPubDate += string
        default:
            break
        }
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        if elementName == "item" {
            let rssItem = (title: currentTitle, description: currentDescription, pubDate: currentPubDate)
            rssItems.append(rssItem)
        }
    }
    
    
    func parserDidEndDocument(_ parser: XMLParser) {
        parseCompletionHandler?(rssItems)
    }
    
    func parser(_ parser: XMLParser, parseErrorOccurred parseError: Error) {
        print(parseError.localizedDescription)
    }
    
}
