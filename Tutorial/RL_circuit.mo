within Tutorial;

model RL_circuit
  Modelica.Electrical.Analog.Sources.SineVoltage sineVoltage1(V = 1, freqHz = 3) annotation(Placement(visible = true, transformation(origin = {-40, -24}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {-40, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Inductor inductor1(L = 1) annotation(Placement(visible = true, transformation(origin = {36, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Resistor resistor1(R = 1.1) annotation(Placement(visible = true, transformation(origin = {-14, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(inductor1.n, ground1.p) annotation(Line(points = {{46, 20}, {56, 20}, {56, -44}, {-40, -44}, {-40, -44}}, color = {0, 0, 255}));
  connect(resistor1.n, inductor1.p) annotation(Line(points = {{-4, 20}, {26, 20}, {26, 20}, {26, 20}}, color = {0, 0, 255}));
  connect(sineVoltage1.p, resistor1.p) annotation(Line(points = {{-40, -14}, {-40, -14}, {-40, 20}, {-24, 20}, {-24, 20}}, color = {0, 0, 255}));
  connect(ground1.p, sineVoltage1.n) annotation(Line(points = {{-40, -44}, {-40, -44}, {-40, -34}, {-40, -34}, {-40, -34}}, color = {0, 0, 255}));
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), experiment(StartTime = 0, StopTime = 3, Tolerance = 1e-06, Interval = 0.006));
end RL_circuit;