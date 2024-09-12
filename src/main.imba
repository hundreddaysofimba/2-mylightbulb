global css @root
	* m:0 p:0

tag app
	background = "warm9"
	buttons = [
		"lime1"
		"teal1"
		"indigo1"
		"rose1"
		"green1"
		"amber1"
		"sky1"
		"cooler1"
		"warm9"
	]

	<self [bgc={background} ff:sans d:vcc h:100vh fs:1.5rem c:warm9]>
		<svg src="./mylightbulb-logo.svg" alt="lightbulb">
		<h1 [my:1rem]> "My Light Bulb"
		<p [my:1rem]> "Touch the controls and see the light!"
			unless background is "warm9"
				"💡"
		<%lights [d:hcc gap:1rem]> for color, index in buttons
			<button [s:3rem appearance:none bgc:{color} bd:none cursor@hover:pointer bgc@hover:{color}/70 ease:1s] @click=(background=color)>
				<svg src="./turn-off.svg" alt="figure" [s:0] [s:1.5rem]=(index is buttons.length - 1)>
				
imba.mount <app>