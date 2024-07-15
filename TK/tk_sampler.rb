require 'tk'

# Create a Tk root window
root = TkRoot.new { title "Ruby TK Example" }

# Create a label widget
label = TkLabel.new(root) do
  text "Hello, Ruby TK!"
  pack { padx 15; pady 15; side 'left' }
end

# Create a button widget with event handler
button = TkButton.new(root) do
  text "Click Me!"
  pack { padx 15; pady 15; side 'left' }
  command proc {
    # Event handler for button click
    Tk.messageBox(
      'type'    => "ok",
      'icon'    => "info",
      'title'   => "Message",
      'message' => "Button Clicked!"
    )
  }
end

# Start the Tk main loop
Tk.mainloop
