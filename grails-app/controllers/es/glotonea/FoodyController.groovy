package es.glotonea

import org.springframework.dao.DataIntegrityViolationException

class FoodyController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [foodyInstanceList: Foody.list(params), foodyInstanceTotal: Foody.count()]
    }

    def create() {
        [foodyInstance: new Foody(params)]
    }

    def save() {
        def foodyInstance = new Foody(params)
        if (!foodyInstance.save(flush: true)) {
            render(view: "create", model: [foodyInstance: foodyInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'foody.label', default: 'Foody'), foodyInstance.id])
        redirect(action: "show", id: foodyInstance.id)
    }

    def show(Long id) {
        def foodyInstance = Foody.get(id)
        if (!foodyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'foody.label', default: 'Foody'), id])
            redirect(action: "list")
            return
        }

        [foodyInstance: foodyInstance]
    }

    def edit(Long id) {
        def foodyInstance = Foody.get(id)
        if (!foodyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'foody.label', default: 'Foody'), id])
            redirect(action: "list")
            return
        }

        [foodyInstance: foodyInstance]
    }

    def update(Long id, Long version) {
        def foodyInstance = Foody.get(id)
        if (!foodyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'foody.label', default: 'Foody'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (foodyInstance.version > version) {
                foodyInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'foody.label', default: 'Foody')] as Object[],
                          "Another user has updated this Foody while you were editing")
                render(view: "edit", model: [foodyInstance: foodyInstance])
                return
            }
        }

        foodyInstance.properties = params

        if (!foodyInstance.save(flush: true)) {
            render(view: "edit", model: [foodyInstance: foodyInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'foody.label', default: 'Foody'), foodyInstance.id])
        redirect(action: "show", id: foodyInstance.id)
    }

    def delete(Long id) {
        def foodyInstance = Foody.get(id)
        if (!foodyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'foody.label', default: 'Foody'), id])
            redirect(action: "list")
            return
        }

        try {
            foodyInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'foody.label', default: 'Foody'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'foody.label', default: 'Foody'), id])
            redirect(action: "show", id: id)
        }
    }
}
