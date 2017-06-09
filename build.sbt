name := """nosoconociometro"""

version := "0.1"

lazy val nosoconociometro = (project in file(".")).enablePlugins(PlayScala)

scalaVersion := "2.11.11"

scalacOptions ++= Seq("-unchecked", "-deprecation", "-feature")

routesGenerator := InjectedRoutesGenerator

libraryDependencies ++= Seq(
  "org.postgresql" % "postgresql" % "42.1.1",
  "com.beachape" %% "enumeratum" % "1.5.12",
  "org.tpolecat" %% "doobie-core-cats" % "0.4.1",
  "org.webjars" %% "webjars-play" % "2.5.0",
  "org.webjars" % "bootstrap" % "3.3.7"
)

fork in run := true
