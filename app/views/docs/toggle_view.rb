# frozen_string_literal: true

class Docs::ToggleView < ApplicationView
  def view_template
    component = "Toggle"

    div(class: "max-w-2xl mx-auto w-full py-10 space-y-10") do
      render Docs::Header.new(title: "Toggle", description: "A two-state button that can be either on or off.")

      Heading(level: 2) { "Usage" }

      render Docs::VisualCodeExample.new(title: "Default", context: self) do
        <<~RUBY
          Toggle(variant: :default) do
            beta_icon
          end
        RUBY
      end

      render Docs::VisualCodeExample.new(title: "Outline", context: self) do
        <<~RUBY
          Toggle(variant: :outline) do
            italic_icon
          end
        RUBY
      end

      render Docs::VisualCodeExample.new(title: "With text", context: self) do
        <<~RUBY
          Toggle(variant: :outline) do
            italic_icon
            span do
              "Italic"
            end
          end
        RUBY
      end

      render Docs::VisualCodeExample.new(title: "Small", context: self) do
        <<~RUBY
          Toggle(size: :sm) do
            italic_icon
          end
        RUBY
      end

      render Docs::VisualCodeExample.new(title: "Large", context: self) do
        <<~RUBY
          Toggle(size: :lg) do
            italic_icon
          end
        RUBY
      end

      render Docs::VisualCodeExample.new(title: "Disabled", context: self) do
        <<~RUBY
          Toggle(disabled: true) do
            underline_icon
          end
        RUBY
      end

      render Components::ComponentSetup::Tabs.new(component_name: component)

      render Docs::ComponentsTable.new(component_files(component))
    end
  end

  private
  def beta_icon
    svg(
      xmlns: "http://www.w3.org/2000/svg",
      viewbox: "0 0 24 24",
      fill: "none",
      stroke: "currentColor",
      stroke_width: "2",
      stroke_linecap: "round",
      stroke_linejoin: "round",
      class: "lucide lucide-bold h-4 w-4",
    ) do |s|
      s.path(
        d: "M14 12a4 4 0 0 0 0-8H6v8"
      )
      s.path(
        d: "M15 20a4 4 0 0 0 0-8H6v8Z"
      )
    end
  end

  def italic_icon
    svg(
      xmlns: "http://www.w3.org/2000/svg",
      viewbox: "0 0 24 24",
      fill: "none",
      stroke: "currentColor",
      stroke_width: "2",
      stroke_linecap: "round",
      stroke_linejoin: "round",
      class: "lucide lucide-bold h-4 w-4",
    ) do |s|
      s.line(
        x1: "19", x2: "10", y1: "4", y2: "4"
      )
      s.line(
        x1: "14", x2: "5", y1: "20", y2: "20"
      )
      s.line(
        x1: "15", x2: "9", y1: "4", y2: "20"
      )

    end
  end

  def underline_icon
    svg(
      xmlns: "http://www.w3.org/2000/svg",
      viewbox: "0 0 24 24",
      fill: "none",
      stroke: "currentColor",
      stroke_width: "2",
      stroke_linecap: "round",
      stroke_linejoin: "round",
      class: "lucide lucide-bold h-4 w-4",
    ) do |s|
      s.path(
        d: "M6 4v6a6 6 0 0 0 12 0V4"
      )
      s.line(
        x1: "4", x2: "20", y1: "20", y2: "20"
      )
    end
  end
end
