m = 10;
r = 0.05;
k = 100;

%Condiciones iniciales
theta_0 = 0;
theta_dot_0 = 2;

%Espacio de estados
A = [0 1; -2*k/(3*m) 0];
B = [0; 0];
C = eye(2);
D = [0; 0];

state_eq = @(t, x) A*x;

%Tiempo simulación
tspan = [0 5];

%Integración numérica
[t, x] = ode45(state_eq, tspan, [theta_0; theta_dot_0]);

figure;
subplot(2,1,2);
plot(t, x(:,1));
title('Velocidad Angular \dot{\theta} vs. Tiempo');
xlabel('Tiempo (s)');
ylabel('\dot{\theta} (rad/s)');

subplot(2,1,1);
plot(t, x(:,2));
title('Posición Angular \theta vs. Tiempo');
xlabel('Tiempo (s)');
ylabel('\theta (rad)');


