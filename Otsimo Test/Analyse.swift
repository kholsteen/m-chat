//
//  Analyse.swift
//  OtsimoTest
//
//  Created by demirci on 16/01/2017.
//  Copyright © 2017 mdemirci. All rights reserved.
//

import Foundation
import ResearchKit
import SwiftProtobuf


let OtsimoResultVersion: Int32 = 1

class Analyse {

    var beforeID = "0:0"

    func analyseTask(result: ORKTaskResult , iresult : Otsimo_Info) -> Otsimo_Result {
        Log.debug("Analyse : AnalyseTask")
        var AnalysedResults = Otsimo_Result()
        AnalysedResults.device = Otsimo_DeviceInfo(os: "ios")
        AnalysedResults.version = OtsimoResultVersion
        print("iresult = ", iresult)

        AnalysedResults.info = iresult

        var taskResults: [Otsimo_StepResult] = []
        if let tskResult = result.results {
            for results in tskResult {

                var sResult = Otsimo_StepResult()
                var qResults: [Otsimo_QuestionResult] = []

                let sresults = results as! ORKStepResult
                if let stepResult = sresults.results {


                    for r in stepResult {

                        var qResult = Otsimo_QuestionResult()
                        let br = r as! ORKBooleanQuestionResult
                        qResult.id = br.identifier
                        if let a = br.booleanAnswer {
                            if a == 1 {
                                qResult.answer = true
                            } else if a == 0 {
                                qResult.answer = false
                            }
                            qResults.append(qResult)
                        }


                    }

                }

                sResult.stepResult = qResults

                if results.identifier != "SummaryStep" {
                    let id = parseID(id: results.identifier).0
                    let bid = parseID(id: beforeID).0

                    if id == bid {
                        print("2", "results.identifier=", results.identifier, " beforeID=", beforeID)
                        sResult.id = id
                        sResult.stepResult = qResults + taskResults.last!.stepResult
                    }
                }
                taskResults.append(sResult)
                beforeID = results.identifier
            }
        }
        AnalysedResults.stepResults = taskResults

        return AnalysedResults
    }

    func analyseInfoResult(infoResult: ORKTaskResult) -> Otsimo_Info {
        
        Log.debug("Analyse : AnalyseInfoResult")
        var iresult = Otsimo_Info()

        if let iResults = infoResult.results {
            for results in iResults {
                let sresults = results as! ORKStepResult
                if let stepResult = sresults.results {
                    if sresults.identifier == "relation" {
                        let r = stepResult[0] as! ORKChoiceQuestionResult
                        if let answers = r.choiceAnswers {
                            let choice = getTextChociesAnswer(identifier: "relation", index: answers[0] as! Int)
                            print("relation ->",choice)

                            iresult.relation = choice
                        }
                    }
                    if sresults.identifier == "gender" {
                        let r = stepResult[0] as! ORKChoiceQuestionResult
                        if let answers = r.choiceAnswers {
                            let choice = getTextChociesAnswer(identifier: "gender", index: answers[0] as! Int)
                            print("gender ->",choice)
                            iresult.gender = choice
                        }
                    }
                    if sresults.identifier == "age" {
                        let r = stepResult[0] as! ORKNumericQuestionResult
                        if let answer = r.numericAnswer {
                            print(answer)
                            iresult.age = String(answer.int64Value)
                        }


                    }

                }
            }
        }
        print("******************iresult->",iresult)
        
        return iresult
    }

    func getTextChociesAnswer(identifier: String, index: Int) -> String {

        if identifier == "relation" {
            switch index {
            case 1:
                return "Parent"
            case 2:
                return "GrandParent"
            case 3:
                return "Guardion"
            case 4:
                return "Educator"
            case 5:
                return "Healt care provider"
            case 6:
                return "other"
            default:
                break
            }
        }
        if identifier == "gender" {
            switch index {
            case 1:
                return "male"
            case 2:
                return "femaile"
            default:
                break
            }
        }
        return ""
    }

}
