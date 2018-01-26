package todolist

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        /*"/"(view:"/index")*/
        "/" (controller:'Task')
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
