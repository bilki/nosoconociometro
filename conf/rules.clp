(import org.nosoconociometro.models.*)
(deftemplate Answer      (declare (from-class Answer)))
(deftemplate Tip         (declare (from-class Tip)))

(defrule question1green
 "En que medida las consecuencias de la Diabetes afecta mi vida - OK"
 (Answer {id == 1 && value >= 0 && value <= 3})
 =>
 (add (new Tip 1 "El paciente está bien" "El paciente es proactivo/emponderable" "tipclear"))
)

(defrule question1neutral
 "En que medida las consecuencias de la Diabetes afecta mi vida - NEUTRAL"
 (Answer {id == 1 && value >= 4 && value <= 6})
 =>
 (add (new Tip 1 "Respuesta rara" "Esta respuesta no es coherente" "tipneutral"))
)

(defrule question1danger
 "En que medida las consecuencias de la Diabetes afecta mi vida - DANGER"
 (Answer {id == 1 && value >= 7 && value <= 10})
 =>
 (add (new Tip 1 "El paciente está mal" "Posibles efectos hiper/hipo, complicado cambiar, no olvidar explorar y preguntar" "tipdanger"))
)

(defrule question2green
 "Cuanto tiempo cree que duran las consecuencias de la Diabetes - OK"
 (Answer {id == 2 && value >= 7 && value <= 10})
 =>
 (add (new Tip 2 "El paciente está bien" "Enhorabuena al paciente, es proactivo y entiende su enfermedad" "tipclear"))
)

(defrule question2neutral
 "Cuanto tiempo cree que duran las consecuencias de la Diabetes - NEUTRAL"
 (Answer {id == 2 && value >= 4 && value <= 6})
 =>
 (add (new Tip 2 "Respuesta rara" "Esta respuesta no es coherente" "tipneutral"))
)

(defrule question2danger
 "Cuanto tiempo cree que duran las consecuencias de la Diabetes - DANGER"
 (Answer {id == 2 && value >= 0 && value <= 3})
 =>
 (add (new Tip 2 "Empezar de cero" "El paciente no entiende su enfermedad, aplicar reeducación en todos los aspectos" "tipdanger"))
)