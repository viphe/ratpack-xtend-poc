import ratpack.handling.Context
import ratpack.handling.Handler
import ratpack.launch.HandlerFactory
import ratpack.launch.LaunchConfig

import static ratpack.handling.Handlers.*

class AppHandlerFactory implements HandlerFactory {
    override Handler create(LaunchConfig launchConfig) throws Exception {
        chain(
            path("foo", [ render('''from the foo handler: «new java.util.Date().toString()»''') ]),
            path("bar", [ render("from the bar handler") ])
        )
    }
}
