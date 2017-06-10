package org.nosoconociometro.controllers

import javax.inject.Inject

import controllers.WebJarAssets
import org.nosoconociometro.engine.RulesEngine
import org.nosoconociometro.models.{Answer, Patient, Tip, TipLevel}

import play.api.mvc.{Action, Controller}

class Application @Inject()(webJar: WebJarAssets) extends Controller {
  val engineMarker = RulesEngine.load("rules.clp")

  val patient1 = Patient(
    1,
    "Laura",
    "Pérez Sánchez",
    "000123456789",
    "12345678X",
    35,
    "Mujer",
    6,
    20)

  val patient2 = Patient(
    2,
    "Francisco",
    "Serrano García",
    "000987654321",
    "87654321A",
    46,
    "Varón",
    8.5,
    32)

  def index(patient: Int) = Action { implicit request =>
    val p = patient match {
      case 1 => patient1
      case 2 => patient2
      case _ => patient1
    }
    Ok(org.nosoconociometro.views.html.index(webJar, p))
  }

  def receiveSurvey(patient: Int) = Action { implicit request =>

    val form = request.body.asFormUrlEncoded.getOrElse(Map.empty)

    val patientInstance = patient match {
      case 1 => patient1
      case 2 => patient2
    }

    if (form.isEmpty) {
      BadRequest("")
    } else {

      val patientHistory: Any = "History"
      val answers: Seq[Answer] = form.toSeq.map { case (s, l) => Answer(s.toInt, l.head.toInt) }

      val tips = RulesEngine.run(engineMarker, answers)

      Ok(org.nosoconociometro.views.html.results(webJar, patientInstance, patientHistory, answers, tips))
    }
  }
}
