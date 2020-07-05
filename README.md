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
      
<img src="https://github.com/obadasemary/SwiftUIImage/blob/master/Simulator%20Screen%20Shot%20-%20iPhone%2011%20Pro%20Max%20-%202020-07-06%20at%2001.37.07.png" alt="HTML5 Icon" width="276" height="598">
      
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


<img src="https://github.com/obadasemary/SwiftUIImage/blob/master/Simulator%20Screen%20Shot%20-%20iPhone%2011%20Pro%20Max%20-%202020-07-06%20at%2001.37.46.png" alt="HTML5 Icon" width="276" height="598">
