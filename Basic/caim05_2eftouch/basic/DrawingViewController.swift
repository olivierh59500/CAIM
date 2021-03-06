//
// DrawingViewController.swift
// CAIM Project
//   http://kengolab.net/CreApp/wiki/
//
// Copyright (c) Watanabe-DENKI Inc.
//   http://wdkk.co.jp/
//
// This software is released under the MIT License.
//   http://opensource.org/licenses/mit-license.php
//
import UIKit

class DrawingViewController : CAIMViewController
{
    // view_allを画面いっぱいのピクセル領域(screenPixelRect)の大きさで用意
    var view_all:CAIMView = CAIMView(pixelFrame: CAIM.screenPixelRect)
    // 画像データimg_allを画面のピクセルサイズ(screenPixelSize)に合わせて用意
    var img_all:CAIMImage = CAIMImage(size: CAIM.screenPixelSize)
  
    
    // ... パーティクル情報を扱うプログラムをここに書く ... //
    
    
    // 準備
    override func setup() {
        // img_allを白で塗りつぶす
        img_all.fillColor( CAIMColor.white )
        // view_allの画像として、img_allを設定する
        view_all.image = img_all
        // view_allを画面に追加
        self.view.addSubview( view_all )
    }
    
    // ポーリング
    override func update() {
        // 毎フレームごと、はじめにimg_allを白で塗りつぶす
        img_all.fillColor( CAIMColor.white )
  
        
        // ... タッチ情報に合わせてパーティクルを追加・削除したり、画面に描画する処理を書く ... //
        
        
        // 画像が更新されている可能性があるので、view_allを再描画して結果を表示
        view_all.redraw()
    }
}



