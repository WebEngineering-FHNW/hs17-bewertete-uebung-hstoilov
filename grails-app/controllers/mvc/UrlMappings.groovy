package mvc

/***
 * Old UrlMappings
 */
/*class UrlMappings {

    static mappings = {
        // "/rooms"(resources: "room")
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
        "/"(view:"/index")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
*/

/***
 * New UrlMapping to main page
 */
class UrlMappings {
    static mappings = {
        "/$controller/$action?/$id?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller:"main")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
