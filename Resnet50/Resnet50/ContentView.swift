//  ContentView.swift
//  Resnet50
//  Created by 國分悠輔 on 2022/01/17.

import SwiftUI
import CoreML
import Vision

struct ContentView: View {
    
    @State var classificationLabel = ""
    
    // リクエスト作成
    func createClassifyRequest() -> VNCoreMLRequest {
        do {
            let configuration = MLModelConfiguration()
            
            let model = try VNCoreMLModel(  // VNCoreMLModelはモデルが読み込まれずにエラー投げることあり
                for: Resnet50(configuration: configuration).model
            )
            
            let request = VNCoreMLRequest(model: model, completionHandler: {
                request, error in
                    performClassification(request: request)
            })
            
            return request
            
        } catch {  // アプリ強制終了
            fatalError("modlが読み込めません。")
        }
    }
    
    func performClassification(request: VNRequest) {
        guard let results = request.results else {
            return
        }
        
        let classification = results as! [VNClassificationObservation]
        
        classificationLabel = classification[0].identifier
    }
    
    // 画像分類
    func classifyImage(image: UIImage) {
        // 入力画像の型をUIImageからCIImageに変換
        guard let ciImage = CIImage(image: image) else {
            fatalError("CIImageに変換できませんでした。")
        }
        
        // handler作成
        let handler = VNImageRequestHandler(ciImage: ciImage)
        
        // request作成
        let classifyRequest = createClassifyRequest()
        
        // handler実行
        do {
            try handler.perform([classifyRequest])
        } catch {
            fatalError("画像分類に失敗しました。")
        }
    }
    
    var body: some View {
        VStack {
            Text(classificationLabel)
                .padding()
                .font(.title)
            Image("cat2")
                .resizable()
                .frame(width: 300, height: 300)
            
            Button(action: {
                classifyImage(image: UIImage(named: "cat2")!)
            }, label: {
                Text("この画像は何の画像？")
                    .padding()
                    .foregroundColor(Color.green)
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
