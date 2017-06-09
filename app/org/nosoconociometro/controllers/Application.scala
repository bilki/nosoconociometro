package org.nosoconociometro.controllers

import javax.inject.Inject

import controllers.WebJarAssets

import play.api.mvc.{Action, Controller}

class Application @Inject()(webJar: WebJarAssets) extends Controller {

  def index = Action { implicit request =>
    Ok(org.nosoconociometro.views.html.index(webJar))
  }
}
