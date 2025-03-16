extends Control

@export var schedulesPageScene : PackedScene
@export var friendsPageScene : PackedScene
@export var groupsPageScene : PackedScene

var currentPage : Node = null
@export var navBar : Node

var pageScenes : Array[PackedScene]



func _ready():
	pageScenes = [schedulesPageScene, friendsPageScene, groupsPageScene]
	
	changePage(0)

func changePage(pageIndex : int):
	if (currentPage != null):
		currentPage.queue_free()
	
	currentPage = pageScenes[pageIndex].instantiate()
	add_child(currentPage) 	
