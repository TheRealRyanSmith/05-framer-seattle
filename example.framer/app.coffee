# layers
# animations
# events

# set a default animation
Framer.Defaults.Animation = {
	curve: "spring(350, 40, 0)"
}

# create a layer
circle = new Layer
	width: 400
	height: 400
	borderRadius: 200
	backgroundColor: "red"
circle.centerX()

# ONE WAY TO CREATE AND START AN ANIMATION
# circleAni = new Animation
# 	layer: circle
# 	properties:
# 		y:934
#
# circle.on Events.Click,->
# 	circleAni.start()

# ANOTHER WAY: STATE BASED ANIMATIONS
circle.states.add
	start: 
		y: 0
	end: 
		y: 934

# Event to advance states
circle.on Events.Click,->
	circle.states.next("start", "end")
	
	
	