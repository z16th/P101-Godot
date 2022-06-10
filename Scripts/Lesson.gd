extends Node
class_name Lesson

const DEFAULT_MESSAGE = "Open the Script and start coding"

export (String,MULTILINE) var instructions := DEFAULT_MESSAGE setget set_instructions

var content := Label.new()

func _ready():
	var panel = Panel.new()
	add_child(panel)
	panel.set_anchor(MARGIN_BOTTOM,1)
	panel.set_anchor(MARGIN_RIGHT,1)
	panel.rect_size = get_viewport().size
	
	var title = Label.new()
	title.text = name
	add_child(title)
	
	content = Label.new()
	content.set_anchor(MARGIN_BOTTOM,1)
	content.set_anchor(MARGIN_RIGHT,1)
	content.align = Label.ALIGN_CENTER
	content.valign = Label.VALIGN_CENTER
	content.text = instructions
	add_child(content)

func set_instructions(text:String):
	instructions = text
	content.text = instructions
	
