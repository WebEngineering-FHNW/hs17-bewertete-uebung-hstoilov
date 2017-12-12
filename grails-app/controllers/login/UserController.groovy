package login

class UserController {

    def index() { }

    /***
     * CUSTOM EXTERNAL SOURCES: Logic inspired from:
     *
     * https://de.slideshare.net/moniguna/grails-simple-login-presentation -->
     */
    def login = {
        if(params.username == "admin" && params.password == "pass") {

            session.user = "Admin"
        } else {
            flash.message = "Login failed."
        }

        redirect(action: 'index')
    }

    def logout = {
        session.user = null
        redirect(action: 'index')
    }
}
