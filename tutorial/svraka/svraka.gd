extends Node3D


signal shot


@export var anim_player: AnimationPlayer
@export var audio_player: AudioStreamPlayer
@export var shoot_dialogue: StringName
@export var dialogue: Label


func _process(delta: float) -> void:
	anim_player.speed_scale = 1.0/Engine.time_scale


func play_talk():
	anim_player.stop()
	for i in 3:
		anim_player.play(&"Talk")
		await anim_player.animation_finished


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if(anim_name == &"Talk"):
		anim_player.stop()
		anim_player.play(&"Idle")


func _on_hitbox_got_hit() -> void:
	shot.emit()
	audio_player.play()
	anim_player.stop()
	for i in 3:
		anim_player.play(&"Talk")
		await anim_player.animation_finished
