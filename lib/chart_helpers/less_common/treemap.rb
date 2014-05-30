module Treemap

    def treemap( data_url, element='.treemap' )
      TreemapGenerator.new.generate( element, data_url )
      treemap_inputs =  radio_input( 'size', true )
      treemap_inputs << radio_input( 'count', false )
      treemap_form   =  content_tag( :form, treemap_inputs )
      content_tag( :div, treemap_form, class: element[1..-1] )
    end

    def radio_input value, checked
      data = radio_button_tag( :mode, value, checked )
      data << value
      content_tag( :label, data, class: 'radio inline')
    end
end