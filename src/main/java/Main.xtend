import ratpack.server.RatpackServer


class Main {
    def static void main(String... args) {
        RatpackServer.start([
	    handlers([
	    	get([ render('''from the foo handler: «new java.util.Date().toString()»''') ])
	    ])
	])
    }
}
