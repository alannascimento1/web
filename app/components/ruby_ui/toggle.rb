# frozen_string_literal: true

module RubyUI
  class Toggle < Base
    SIZES = {
      default: "h-10 px-3 min-w-10",
      sm: "h-9 px-2.5 min-w-9",
      lg: "h-11 px-5 min-w-11",
    }

    BACKGROUND = {
      default: "bg-transparent",
      outline: "border border-input bg-transparent hover:bg-accent hover:text-accent-foreground",
    }

    def initialize(variant: :default, size: :default, **args)
      @variant = variant
      @size = size
      super(**args)
    end

    def view_template(&)
      button(**attrs, &)
    end

    private

    def default_attrs
      {
        class: [
          "inline-flex items-center justify-center rounded-md text-sm font-medium ring-offset-background transition-colors hover:bg-muted hover:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 data-[state=on]:bg-accent data-[state=on]:text-accent-foreground [&_svg]:pointer-events-none [&_svg]:size-4 [&_svg]:shrink-0 gap-2",
          SIZES[@size],
          BACKGROUND[@variant],
        ],
        aria_pressed: "false",
        data_state: "off",
        data: {
          controller: "ruby-ui--toggle",
          ruby_ui__toggle_target: "button",
          action: "click->ruby-ui--toggle#changeState"
        }
      }
    end
  end
end
