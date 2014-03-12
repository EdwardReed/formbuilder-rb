module Formbuilder
  class ResponseFieldSectionBreak < ResponseField

    after_initialize -> {
      @input_field = false
      @field_type = 'section_break'
    }

    def render_input(value, opts = {})
      str = """
        <div class='section-break-inner section-break-size-#{self[:field_options]['size']}'>
          <div class='section-name'>#{self[:label]}</div>
      """

      if self[:field_options]['description'].present?
        str += """#{self[:field_options]['description']}"""
      end

      str += """
        </div>
      """

      str
    end

  end
end
