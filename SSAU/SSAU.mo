package SSAU "Библиотека объектных моделей для пакета OpenModelica"
  model RL_circuit
    Modelica.Electrical.Analog.Sources.SineVoltage sineVoltage1(V = 1, freqHz = 50) annotation(Placement(visible = true, transformation(origin = {-40, -24}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
    Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-40, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Inductor inductor1(L = 1) annotation(Placement(visible = true, transformation(origin = {36, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 111) annotation(Placement(visible = true, transformation(origin = {-14, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(inductor1.n, ground1.p) annotation(Line(points = {{46, 20}, {56, 20}, {56, -44}, {-40, -44}, {-40, -44}}, color = {0, 0, 255}));
    connect(resistor1.n, inductor1.p) annotation(Line(points = {{-4, 20}, {26, 20}, {26, 20}, {26, 20}}, color = {0, 0, 255}));
    connect(sineVoltage1.p, resistor1.p) annotation(Line(points = {{-40, -14}, {-40, -14}, {-40, 20}, {-24, 20}, {-24, 20}}, color = {0, 0, 255}));
    connect(ground1.p, sineVoltage1.n) annotation(Line(points = {{-40, -44}, {-40, -44}, {-40, -34}, {-40, -34}, {-40, -34}}, color = {0, 0, 255}));
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), experiment(StartTime = 0, StopTime = 3, Tolerance = 1e-06, Interval = 0.0006));
  end RL_circuit;

  package Electro "Электротехника и аналоговая электроника"
    model Gnd0 "Земля (нулевой потенциал)"
      annotation(Documentation(info = "<html>(расчетная) Земля электрической цепи с нулевым потенциалом.<p>В пакете SPICE этому элементу соотетствует узел 0 (и GND в некоторых диалектах типа ng-spice)</html>"));
    end Gnd0;

    model Gnd "Земля (нулевой потенциал)"
      annotation(Documentation(info = "<html>(расчетная) Земля электрической цепи с нулевым потенциалом.<p>В пакете SPICE этому элементу соотетствует узел 0 (и GND в некоторых диалектах типа ng-spice)</html>"));
    end Gnd;

    extends Modelica.Icons.UnderConstruction;
  end Electro;

  extends Modelica.Icons.Example;
  annotation(Documentation(info = "<html>
<hr>
Пакет объектно-ориентированного моделирования<br>на основе систем уравнений <b>OpenModelica</b><br><a href=\"https://openmodelica.org/\">https://openmodelica.org/</a><p>
<b>Библиотека включает простые объектные модели, применимые в рамках учебных программ СГАУ по техническим направлениям: физика, электротехника и электроника, технология производства, автоматические системы управления, масс-спектрометрия и комическое приборостроение</b>.
<hr>
  (с) Дмитрий Понятов <a href=\"mailto:dponyatov@gmail.com\">dponyatov@gmail.com</a>, 2016, All rights reserved<p>
  <p>Распространяется на правах лицензии GNU Lesser General Public License<br>
  <a href=\"http://www.gnu.org/copyleft/lesser.html\">http://www.gnu.org/copyleft/lesser.html</a>
  <p>GitHub: <a href=\"https://github.com/ponyatov/OpenModelica\">https://github.com/ponyatov/OpenModelica</a><p>
  Самарский Государственный Аэрокосмический Универстет имени академика С.П.Королева<br>
  Кафедра <a href=\"http://aseu.ssau.ru/robotics/\">АСЭУ</a>: Автоматические системы энергетических установок, центр мехатронных систем<br>
  Институт космического приборостроения
  <a href=\"http://ikp.ssau.ru\">ИКП-214</a>
  
  <h3>Ссылки</h3>
  [fritz]<br>
  Peter Fritzson<br>
  Principles of Object-Oriented Modeling and Simulation with Modelica (2004),<br>
  940 pages, Wiley-IEEE Press, ISBN 0-471-471631
  <br><i>Принципы объектно-ориентированного моделирования на языке Моделика</i>
  <p>
  [<a href=\"http://liu.diva-portal.org/smash/get/diva2:614273/FULLTEXT01.pdf\">sjolund</a>]<br>
  Martin Sj¨olund<br>
  Tools for Understanding, Debugging, and Simulation Performance Improvement of Equation-Based Models<br>
  <i>Инструменты изучения, отладки и ускорения симуляции для моделей на основе уравнений</i><p>
  </html>"));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
end SSAU;