COBC=cobc
COBCOPTS="-x"

HELLO-WORLD: HELLO-WORLD.COB
	$(COBC) $(COBCOPTS) HELLO-WORLD.COB

test: HELLO-WORLD
	@sh -c 'if (./HELLO-WORLD | grep -q "Hello, world"); then echo "All is well."; else echo "Ya dun goofed."; fi'