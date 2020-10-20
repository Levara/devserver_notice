class DevServerNotice
  def self.show(background: "red", color: "white")
    "<div style='color: white; 
                 padding: 0.625rem;
                 width: 100%;
                 font-size: 0.875rem;'>
        Development server
     </div>

     <div style='background: #{background}; 
                 color: #{color}; 
                 text-align: center; 
                 padding: 0.625rem;
                 bottom: 0;
                 left: 0;
                 width: 100%;
                 font-size: 0.875rem;
                 position: fixed;
    '>
      Development server - for development and testing purposes only!
    </div>"
  end
end
