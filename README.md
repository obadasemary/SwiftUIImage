# SwiftUIImage

Applying an overlay to the existing image

    Image("paris")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .overlay(

          Text("If you are lucky enough to have lived in Paris as a young man, then wherever you go for the rest of your life it stays with you, for Paris is a moveable feast.\n\n- Ernest Hemingway")
              .fontWeight(.heavy)
              .font(.system(.headline, design: .rounded))
              .foregroundColor(.white)
              .padding()
              .background(Color.black)
              .cornerRadius(10)
              .opacity(0.8)
              .padding(),

        alignment: .top
      )
      
Darken an image and apply a text overlay      
    
    Image("paris")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .overlay(
            Rectangle()
                .foregroundColor(.black)
                .opacity(0.4)
                .overlay(
                    Text("Paris")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundColor(.white)
                        .frame(width: 200)
                )
        )
