extends Control

const ICON_STATES : int = 2

@export var scheduleIcon : Node
@export var friendIcon : Node
@export var groupIcon : Node

@export var background : Node

@export var scheduleHollowTexture : Resource
@export var scheduleSolidTexture : Resource

@export var friendHollowTexture : Resource
@export var friendSolidTexture : Resource

@export var groupHollowTexture : Resource
@export var groupSolidTexture : Resource


@export var pageIndex : int = 0


var icons : Array[Node]
var textures : Array[Resource]


var interactable : bool = true

func _ready():
	icons = [scheduleIcon, friendIcon, groupIcon]
	textures = [scheduleHollowTexture, scheduleSolidTexture, friendHollowTexture, friendSolidTexture, groupHollowTexture, groupSolidTexture]
	
	correctIconTextures()

func updatePage(pageIndex : int):
	if self.pageIndex != pageIndex:
		get_parent().changePage(pageIndex)
		updateBar(pageIndex)

func updateBar(pageIndex : int):
	setPageIndex(pageIndex)
	correctIconTextures()
	
	background.region_rect.position.x = pageIndex * background.region_rect.size.x

func setPageIndex(pageIndex : int):
	self.pageIndex = pageIndex

func correctIconTextures():
	for i in range(len(icons)):
		icons[i].texture = textures[i * ICON_STATES + (1 if (pageIndex == i) else 0)]


func _on_schedules_button_pressed() -> void:
	updatePage(0)

func _on_friends_button_pressed() -> void:
	updatePage(1)

func _on_groups_button_pressed() -> void:
	updatePage(2)
