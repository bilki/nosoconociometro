(import org.nosoconociometro.models.*)
(deftemplate Answer      (declare (from-class Answer)))
(deftemplate Tip         (declare (from-class Tip)))

(defrule question1green
 ""
 (Answer {id == 1})
 =>
 (add (new Tip 1 "resume" "my tip" "tipneutral"))
)