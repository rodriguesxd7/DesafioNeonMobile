class Navigator
    def tap_button
        find_element(class: "android.widget.ImageButton").click
    end

    def list
        find_element(id: "br.com.dudstecnologia.cadastrodeclientes:id/floating_novo").click
    end 
end
