package org.nosoconociometro.models

import enumeratum._

object Models {
  case class Patient(
      name: String,
      apellidos: String,
      ss: String,
      nif: String,
      edad: Int,
      sexo: String)

  sealed trait TipLevel extends EnumEntry
  object TipLevel extends Enum[TipLevel] {
    val values = findValues

    case object TipWarning extends TipLevel
    case object TipNeutral extends TipLevel
    case object TipClear extends TipLevel
  }

  case class TipId(value: Int) extends AnyVal
  case class TipResume(value: String) extends AnyVal
  case class TipFull(value: String) extends AnyVal
  case class Tip(id: TipId, tipResume: TipResume, tipFull: TipFull, tipLevel: TipLevel)

  case class QuestionId(value: Int) extends AnyVal
  case class QuestionText(value: Int) extends AnyVal
  case class Question(id: QuestionId, text: QuestionText)
}
