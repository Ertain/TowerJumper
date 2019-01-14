extends Timer

var slow_down_scaler = 0.1

func _process(delta):
	if is_active():
		# print("Time for slow down!")
		# print("Slow down scaler value: %s." % str(slow_down_scaler))
		# slow_down_scaler += 0.1
		# slow_down_scaler = clamp(slow_down_scaler, 0.1, 1.0)
		OS.set_time_scale(slow_down_scaler)
	else:
		slow_down_scaler = 0.1