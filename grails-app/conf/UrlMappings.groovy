class UrlMappings {

	static mappings = {
		"/user"(resources:"user")
		"/bid"(resources:"bid")
		"/deal"(resources:"deal")
		"/operator"(resources:"operator")
		"/property"(resources:"property")
        "/$controller/$action?/$id?(.${format})?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "500"(view:'/error')

	}
}
