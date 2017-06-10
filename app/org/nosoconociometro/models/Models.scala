package org.nosoconociometro.models

import enumeratum._

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

  case object TipDanger extends TipLevel
  case object TipNeutral extends TipLevel
  case object TipClear extends TipLevel
}

case class Tip(id: Int, tipResume: String, tipFull: String, tipLevelLiteral: String) {
  val tipLevel: TipLevel = TipLevel.lowerCaseNamesToValuesMap(tipLevelLiteral)

  def getId(): Int = id
  def getTipResume(): String = tipResume
  def getTipFull(): String = tipFull
  def getTipLevelLiteral(): String = tipLevelLiteral
}

case class QuestionId(value: Int) extends AnyVal
case class QuestionText(value: Int) extends AnyVal
case class Question(id: QuestionId, text: QuestionText)

case class Answer(id: Int, value: Int) {
  def getId(): Int = id
  def getValue(): Int = value
}
