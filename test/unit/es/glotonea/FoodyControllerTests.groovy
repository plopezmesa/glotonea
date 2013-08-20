package es.glotonea



import org.junit.*
import grails.test.mixin.*

@TestFor(FoodyController)
@Mock(Foody)
class FoodyControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/foody/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.foodyInstanceList.size() == 0
        assert model.foodyInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.foodyInstance != null
    }

    void testSave() {
        controller.save()

        assert model.foodyInstance != null
        assert view == '/foody/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/foody/show/1'
        assert controller.flash.message != null
        assert Foody.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/foody/list'

        populateValidParams(params)
        def foody = new Foody(params)

        assert foody.save() != null

        params.id = foody.id

        def model = controller.show()

        assert model.foodyInstance == foody
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/foody/list'

        populateValidParams(params)
        def foody = new Foody(params)

        assert foody.save() != null

        params.id = foody.id

        def model = controller.edit()

        assert model.foodyInstance == foody
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/foody/list'

        response.reset()

        populateValidParams(params)
        def foody = new Foody(params)

        assert foody.save() != null

        // test invalid parameters in update
        params.id = foody.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/foody/edit"
        assert model.foodyInstance != null

        foody.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/foody/show/$foody.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        foody.clearErrors()

        populateValidParams(params)
        params.id = foody.id
        params.version = -1
        controller.update()

        assert view == "/foody/edit"
        assert model.foodyInstance != null
        assert model.foodyInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/foody/list'

        response.reset()

        populateValidParams(params)
        def foody = new Foody(params)

        assert foody.save() != null
        assert Foody.count() == 1

        params.id = foody.id

        controller.delete()

        assert Foody.count() == 0
        assert Foody.get(foody.id) == null
        assert response.redirectedUrl == '/foody/list'
    }
}
