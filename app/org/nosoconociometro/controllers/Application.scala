package org.nosoconociometro.controllers

import javax.inject.Inject

import controllers.WebJarAssets
import org.nosoconociometro.models.Models.Patient

import play.api.mvc.{Action, Controller}

class Application @Inject()(webJar: WebJarAssets) extends Controller {

  val patient1 = Patient(
    "Laura",
    "Pérez Sánchez",
    "000123456789",
    "12345678X",
    35,
    "Mujer")

  val patient2 = Patient(
    "Francisco",
    "Serrano García",
    "000987654321",
    "87654321A",
    46,
    "Varón")

  def index(patient: Int) = Action { implicit request =>
    val p = patient match {
      case 1 => patient1
      case 2 => patient2
      case _ => patient1
    }
    Ok(org.nosoconociometro.views.html.index(webJar, p))
  }
}
