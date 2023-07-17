//
//  BubbleGumTutorialView.swift
//  MC3Team18
//
//  Created by Minkyung Kim on 2023/07/11.
//

import SwiftUI

struct BubbleGumTutorialView: View {
    
    @Binding var bubbleGumStatus: BubbleGumStatus
    @State var isNeverShowingTutorial: Bool = false
    
    var body: some View {
        
        ZStack(){
            Color(.black).opacity(0.5)
            
            VStack(){
                HStack {
                    Spacer()
                    Button {
                        bubbleGumStatus = .waiting
                    } label: {
                        Image(systemName:  "xmark")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 24, height: 24)
                    }
                }
                
                Spacer().frame(height: 79)
                
                VStack(spacing: 24){
                    Text("풍선껌 크게 불기")
                        .pretendardSemiBold32()
                        .foregroundColor(.Yellow)
                        .fontWeight(.bold)
                        .shadow(color: .black.opacity(0.25), radius: 12, x: 1, y: 2)
                    Text("최대한 오래 혀를 구르거나\n입술을 털어보세요.\n풍선껌이 커집니다!")
                        .pretendardSemiBold20()
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .lineSpacing(1)
                        .shadow(color: .black.opacity(0.25), radius: 12, x: 1, y: 2)
                    Text("• 혀굴리기 :  아rrrr\n• 입술털기 :  푸rrrr")
                        .font(.custom("Pretendard", size: 13))
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                Spacer()
                Button {
                    isNeverShowingTutorial.toggle()
                } label: {
                    HStack{
                        Image(systemName: isNeverShowingTutorial ? "checkmark.square.fill" : "square")
                            .font(.system(size: 22))
                            .pretendardSemiBold20().bold()
                            .foregroundColor(.white)
                        
                        Text("다시 보지 않기")
                            .pretendardRegular20()
                        .foregroundColor(.white)
                        
                    }
                }
            }
            .padding(.top, 48)
            .padding(.bottom, 50)
            .padding(.horizontal, 26)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct BubbleGumTutorialView_Previews: PreviewProvider {
    static var previews: some View {
        BubbleGumTutorialView(bubbleGumStatus: .constant(.tutorial), isNeverShowingTutorial: true)
    }
}
