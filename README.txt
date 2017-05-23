If you've never cloned a repository on github before, you should look up a
	tutorial on that before proceeding with the following instructions.

Instructions:

	1. Run "java -Xmx256M -Xms256M -jar minecraft_server.1.11.2.jar nogui"
		once in your terminal inside of this server's folder
		to make sure the jar runs correctly. If it runs correctly
		you will see a server startup dialogue. If it doesn't, you
		should replace the jar file with the one that you can find on
		" https://minecraft.net/en-us/download/server ."

	For ipv4 address:

		1. Go to your router settings page by typing your default 
			gateway into your internet browser url box.

		2. Navigate to the port forwarding page and forward port
			25565 on your computer's private ip address with
			both TCP&UDP enabled. Name it Minecraft.

		3. run ./run.sh

	For ipv6 address:

		1. open the run.sh file and follow the commented instructions
		
		2. run ./run.sh
