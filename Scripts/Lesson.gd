extends Node
class_name Lesson

const DEFAULT_MESSAGE = "Open the script and check the console"

export (String) var topic
export (String,MULTILINE) var instructions := DEFAULT_MESSAGE setget set_instructions
export var show_instructions_panel := true

var content := Label.new()

func _ready():
	if show_instructions_panel:
		add_panel()

func set_instructions(text:String):
	instructions = text
	content.text = instructions
	
func add_panel():
	var canvas = CanvasLayer.new()
	canvas.layer = -1
	add_child(canvas)
	
	var panel = Panel.new()
	canvas.add_child(panel)
	panel.set_anchor(MARGIN_BOTTOM,1)
	panel.set_anchor(MARGIN_RIGHT,1)
	panel.rect_size = get_viewport().size
	
	var title = Label.new()
	var offset = 20
	title.text = name if !topic else name + ": " + topic
	title.margin_left = offset
	title.margin_top = offset
	canvas.add_child(title)
	
	content = Label.new()
	content.set_anchor(MARGIN_BOTTOM,1)
	content.set_anchor(MARGIN_RIGHT,1)
	content.align = Label.ALIGN_CENTER
	content.valign = Label.VALIGN_CENTER
	content.text = instructions
	canvas.add_child(content)
