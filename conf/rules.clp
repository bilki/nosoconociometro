(import org.nosoconociometro.models.*)
(deftemplate Answer      (declare (from-class Answer)))
(deftemplate Tip         (declare (from-class Tip)))

(defrule question1green
 "En que medida las consecuencias de la diabetes afecta mi vida - OK"
 (Answer {id == 1 && value >= 0 && value <= 3})
 =>
 (add (new Tip 1 "El paciente está bien" "El paciente es proactivo/empoderable" "tipclear"))
)

(defrule question1neutral
 "En que medida las consecuencias de la diabetes afecta mi vida - NEUTRAL"
 (Answer {id == 1 && value >= 4 && value <= 6})
 =>
 (add (new Tip 1 "Respuesta rara" "Esta respuesta no es coherente" "tipneutral"))
)

(defrule question1danger
 "En que medida las consecuencias de la diabetes afecta mi vida - DANGER"
 (Answer {id == 1 && value >= 7 && value <= 10})
 =>
 (add (new Tip 1 "El paciente está mal" "Posibles efectos hiper/hipo, complicado cambiar, no olvidar explorar y preguntar" "tipdanger"))
)

(defrule question2green
 "Cuanto tiempo cree que duran las consecuencias de la diabetes - OK"
 (Answer {id == 2 && value >= 7 && value <= 10})
 =>
 (add (new Tip 2 "El paciente está bien" "Enhorabuena al paciente, es proactivo y entiende su enfermedad" "tipclear"))
)

(defrule question2neutral
 "Cuanto tiempo cree que duran las consecuencias de la diabetes - NEUTRAL"
 (Answer {id == 2 && value >= 4 && value <= 6})
 =>
 (add (new Tip 2 "Respuesta rara" "Esta respuesta no es coherente" "tipneutral"))
)

(defrule question2danger
 "Cuanto tiempo cree que duran las consecuencias de la diabetes - DANGER"
 (Answer {id == 2 && value >= 0 && value <= 3})
 =>
 (add (new Tip 2 "Empezar de cero" "El paciente no entiende su enfermedad, aplicar reeducación en todos los aspectos" "tipdanger"))
)

(defrule question3green
 "¿Qué grado de control tiene sobre las posibles consecuencias que producen las subidas y bajadas de la glucemia (azúcar en sangre)? - OK"
 (Answer {id == 3 && value >= 7 && value <= 10})
 =>
 (add (new Tip 3 "Niveles de insulina adecuados" "Enhorabuena, sigue así" "tipclear"))
)

(defrule question3neutral
 "¿Qué grado de control tiene sobre las posibles consecuencias que producen las subidas y bajadas de la glucemia (azúcar en sangre)? - NEUTRAL"
 (Answer {id == 3 && value >= 4 && value <= 6})
 =>
 (add (new Tip 3 "Respuesta rara" "Esta respuesta no es coherente" "tipneutral"))
)

(defrule question3danger
 "¿Qué grado de control tiene sobre las posibles consecuencias que producen las subidas y bajadas de la glucemia (azúcar en sangre)? - DANGER"
 (Answer {id == 4 && value >= 0 && value <= 3})
 =>
 (add (new Tip 3 "Necesita educación" "Empezar de cero, necesita educación sobre hipo e hiper glucemia, enseñar a usar el glucómetro" "tipdanger"))
)

(defrule question4green
 "Cree que la dieta, ejercicio fisico, tratamiento con pastillas o pinchado son utiles para controlar la diabetes - OK"
 (Answer {id == 4 && value >= 7 && value <= 10})
 =>
 (add (new Tip 4 "El paciente está bien" "Enhorabuena al paciente, seguir con las recomendaciones habituales" "tipclear"))
)

(defrule question4neutral
 "Cree que la dieta, ejercicio fisico, tratamiento con pastillas o pinchado son utiles para controlar la diabetes - NEUTRAL"
 (Answer {id == 4 && value >= 4 && value <= 6})
 =>
 (add (new Tip 4 "Respuesta rara" "Esta respuesta no es coherente" "tipneutral"))
)

(defrule question4danger
 "Cree que la dieta, ejercicio fisico, tratamiento con pastillas o pinchado son utiles para controlar la diabetes - DANGER"
 (Answer {id == 4 && value >= 0 && value <= 3})
 =>
 (add (new Tip 4 "Empezar de cero" "El paciente no entiende su enfermedad, aplicar reeducación en todos los aspectos" "tipdanger"))
)

(defrule question5green
 "¿Nota molestias o síntomas relacionados directamente con la Diabetes? - OK"
 (Answer {id == 5 && value >= 0 && value <= 3})
 =>
 (add (new Tip 5 "Posible proactivo" "Empoderable" "tipclear"))
)

(defrule question5neutal
 "¿Nota molestias o síntomas relacionados directamente con la Diabetes? - NEUTRAL"
 (Answer {id == 5 && value >= 4 && value <= 6})
 =>
 (add (new Tip 5 "Respuesta rara" "Esta respuesta no es coherente" "tipneutral"))
)

(defrule question5danger
 "¿Nota molestias o síntomas relacionados directamente con la Diabetes? - DANGER"
 (Answer {id == 5 && value >= 7 && value <= 10})
 =>
 (add (new Tip 5 "Preguntar posibles efectos secundarios" "Hiper o hipo glucemia no olvidar explorar y preguntar por complicaciones, complicado cambio" "tipdanger"))
)

(defrule question6green
 "¿Hasta qué punto comprende y conoce la Diabetes y sus consecuencias a largo plazo? - OK"
 (Answer {id == 6 && value >= 6 && value <= 10})
 =>
 (add (new Tip 6 "Enhorabuena, paciente subsidiario de cambio o proactivo" "Sigue así" "tipclear"))
)

(defrule question6neutral
 "¿Hasta qué punto comprende y conoce la Diabetes y sus consecuencias a largo plazo? - NEUTRAL"
 (Answer {id == 6 && value >= 4 && value <= 6})
 =>
 (add (new Tip 6 "Respuesta rara" "Esta respuesta no es coherente" "tipneutral"))
)

(defrule question6danger
 "¿Hasta qué punto comprende y conoce la Diabetes y sus consecuencias a largo plazo? - DANGER"
 (Answer {id == 6 && value >= 0 && value <= 3})
 =>
 (add (new Tip 6 "Empezar de cero, que no entiende" "Educar conocimiento de la enfermedad, dieta, ejercicio físico y por la medicación" "tipdanger"))
)

(defrule question7green
 "¿Tener Diabetes me afecta emocionalmente? Me preocupa - OK"
 (Answer {id == 7 && value >= 0 && value <= 3})
 =>
 (add (new Tip 7 "Paciente estable" "La enfermedad estará presente toda su vida pero no es preocupante, se muestra proactivo y empoderado" "tipclear"))
)

(defrule question7neutral
 "¿Hasta qué punto comprende y conoce la Diabetes y sus consecuencias a largo plazo? - NEUTRAL"
 (Answer {id == 7 && value >= 4 && value <= 6})
 =>
 (add (new Tip 7 "Respuesta rara" "Esta respuesta no es coherente" "tipneutral"))
)

(defrule question7danger
 "¿Hasta qué punto comprende y conoce la Diabetes y sus consecuencias a largo plazo? - DANGER"
 (Answer {id == 7 && value >= 7 && value <= 10})
 =>
 (add (new Tip 7 "El paciente está mal" "Posibles efectos secundarios, hiper o hipo glucemia, muestra complicaciones, el cambio es complicado" "tipdanger"))
)