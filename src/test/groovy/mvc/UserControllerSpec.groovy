package mvc

import grails.test.mixin.TestMixin
import grails.test.mixin.support.GrailsUnitTestMixin
import login.UserController
import spock.lang.*

/**
 * See the API for {@link grails.test.mixin.support.GrailsUnitTestMixin} for usage instructions
 */
@TestMixin(GrailsUnitTestMixin)
class UserControllerSpec extends Specification {

    UserController controller

    def setup() {
        controller = new UserController()
    }

    def cleanup() {
    }

    void "logged in #username with #password should be #user"(username, password, user) {
        expect:"fix me"
            true == false
    }
}