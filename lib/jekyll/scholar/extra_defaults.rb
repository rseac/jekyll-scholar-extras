module Jekyll
  class ScholarExtras
    @extra_defaults = {
      'slides'                  => '_slides',
      'parse_extra_fields'      => {
        'award' => "award"
      }
    }.freeze

    class << self
      attr_reader :extra_defaults
    end
  end
end
