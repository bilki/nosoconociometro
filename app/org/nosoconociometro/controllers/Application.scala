package org.nosoconociometro.controllers

import play.api.mvc.{Action, Controller}

class Application extends Controller {

  def index = Action { implicit request =>
    Ok(org.nosoconociometro.views.html.index())
  }
}
