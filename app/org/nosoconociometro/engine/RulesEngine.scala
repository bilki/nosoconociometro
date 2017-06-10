package org.nosoconociometro.engine

import jess._
import org.nosoconociometro.models.{Answer, Tip}

import scala.collection.JavaConverters._

object RulesEngine {
  val engine: Rete = new Rete()

  def load(filePath: String): WorkingMemoryMarker = {
    engine.reset()

    engine.batch(filePath)

    engine.mark()
  }

  def run(workingMemoryMarker: WorkingMemoryMarker, answers: Seq[Answer]): List[Tip] = {
    engine.resetToMark(workingMemoryMarker)

    engine.addAll(answers.asJavaCollection)

    engine.run()

    val engineObjects = engine.getObjects(new Filter.ByClass(classOf[Tip]))

    val tips: java.util.Iterator[Tip] = engineObjects.asInstanceOf[java.util.Iterator[Tip]]

    tips.asScala.toList
  }
}
