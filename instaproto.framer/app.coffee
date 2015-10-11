# This imports all the layers for "Instaproto" into instaprotoLayers
sk = Framer.Importer.load "imported/Instaproto"

# Set the default animation curve
Framer.Defaults.Animation = {
	curve: "spring(350, 40, 0)"
}

# Create a mask to cover the content
mask = new Layer
	width: Screen.width
	height: Screen.height
	backgroundColor: "#000000"
	opacity: 0
	superLayer: sk.content

# Add a zoomed state for the hero photo
sk.keyPhoto.states.add
	default:
		scale: 1
	zoom:
		scale: 3

# Add states for the opacity of the mask
mask.states.add
	default:
		opacity: 0
	hidden:
		opacity: 1

# Create an even to change states when the hero photo is clicked
sk.keyPhoto.on Events.Click,->
	sk.keyPhoto.states.next("zoom", "default")
	mask.states.next("hidden", "default")
