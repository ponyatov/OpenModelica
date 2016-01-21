package SSAU "Библиотека объектных моделей для пакета OpenModelica"
  package Electro "Электротехника и аналоговая электроника"
    package Samples "Примеры расчета схем"
      extends Modelica.Icons.Information;

      model EsinRL
        Modelica.Electrical.Analog.Sources.SineVoltage sineVoltage1(V = 1, freqHz = 50) annotation(Placement(visible = true, transformation(origin = {-40, -24}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
        Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-40, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Inductor inductor1(L = 1) annotation(Placement(visible = true, transformation(origin = {36, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 111) annotation(Placement(visible = true, transformation(origin = {-14, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Electro.Gnd gnd1 annotation(Placement(visible = true, transformation(origin = {-56, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      equation
        connect(inductor1.n, ground1.p) annotation(Line(points = {{46, 20}, {56, 20}, {56, -44}, {-40, -44}, {-40, -44}}, color = {0, 0, 255}));
        connect(resistor1.n, inductor1.p) annotation(Line(points = {{-4, 20}, {26, 20}, {26, 20}, {26, 20}}, color = {0, 0, 255}));
        connect(sineVoltage1.p, resistor1.p) annotation(Line(points = {{-40, -14}, {-40, -14}, {-40, 20}, {-24, 20}, {-24, 20}}, color = {0, 0, 255}));
        connect(ground1.p, sineVoltage1.n) annotation(Line(points = {{-40, -44}, {-40, -44}, {-40, -34}, {-40, -34}, {-40, -34}}, color = {0, 0, 255}));
        annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), experiment(StartTime = 0, StopTime = 3, Tolerance = 1e-06, Interval = 0.0006), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics = {Rectangle(origin = {-30, 50}, extent = {{-30, 10}, {70, -30}}), Line(origin = {0, -20.2764}, points = {{-60, -19.7236}, {-40, -19.7236}, {-20, 20.2764}, {0, -19.7236}, {20, 18.2764}, {40, -19.7236}, {60, -19.7236}})}));
      end EsinRL;
    end Samples;

    model Gnd "Земля (нулевой потенциал)"
      Interfaces.Pin p;
    equation
      p.v = 0;
      annotation(Documentation(info = "<html>(расчетная) Земля электрической цепи с нулевым потенциалом.<p>В пакете SPICE этому элементу соответствует узел 0<br>(и GND в некоторых диалектах типа ng-spice)<p><font color=\"red\">Любая электрическая цепь обязана включать как минимум один элемент <b>Gnd</b></font>,<br>так как он задает нулевую точку, от которой отсчитываются все потенциалы при расчетах.</html>"), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics = {Line(origin = {0, -40}, points = {{-80, -40}, {80, -40}}, thickness = 11), Line(origin = {0, -40}, points = {{0, -40}, {0, 120}}, thickness = 11), Ellipse(origin = {60, -30}, lineThickness = 5, extent = {{-30, 40}, {10, -20}}, endAngle = 360)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics = {Line(origin = {0, -40}, points = {{-40, 0}, {40, 0}}, thickness = 5), Line(points = {{0, -40}, {0, 40}}, thickness = 1), Text(origin = {68, -3}, extent = {{120, -33}, {-50, 35}}, textString = "%name")}));
    end Gnd;
    annotation(Documentation(info = "<html>
  <h3>ГОСТ ЕСКД</h3>
  ГОСТ 2.721-74 Единая система конструкторской документации. Обозначения условные графические в схемах. Обозначения общего применения.</html>"), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics = {Polygon(origin = {1, 15.73}, fillColor = {255, 255, 0}, fillPattern = FillPattern.Solid, lineThickness = 7, points = {{-0.997611, 78.2671}, {-96.9976, -111.733}, {95.0024, -111.733}, {-0.997611, 78.2671}}), Line(origin = {2.99, -15.01}, points = {{1.00698, 59.0115}, {-20.993, -2.98849}, {9.007, 1.01151}, {-2.99302, -58.9885}}, color = {255, 0, 0}, thickness = 11)}));
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
  <hr><b>
  Для использования системы OpenModelica при оформлении дипломных и исследовательских работ иконографика (условные графические обозначения элементов) по возможности отрисовывается в соответствии с УГостами и нормами ЕСКД.</b>
  <hr>
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