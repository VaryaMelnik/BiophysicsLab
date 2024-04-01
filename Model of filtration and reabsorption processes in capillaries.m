figure
for r = [10,150,300]
Pa = 28.4; Po = 20; Pb = 12; L = 600; l = 0.6; R = 3; N = 13E-13; n = 0.0012;
W = 8*n/(pi*R^4); w = 4*n*l/(pi^2*r^4*R*N); lambda = sqrt(w/W);
subplot(1,3,1)
hold on
x = (linspace(0,600));
P = (-(Pb-Po)+(Pa-Po)*exp(-L/lambda))*exp(x/lambda)/(exp(-L/lambda)-exp(L/lambda))
+ ((Pb-Po)-(Pa-Po)*exp(L/lambda))*exp(-x/lambda)/(exp(-L/lambda)-exp(L/lambda)) +
Po;
plot(x,P,'--');
if r == 300
subtitle ('P(x)')
legend('r = 10', 'r = 150', 'r = 300')
end
subplot(1,3,2)
hold on
dPdx = gradient(P)./gradient(x);
Q = (-1/W)*dPdx;
plot(x,Q,'--');
if r == 300
subtitle ('Q(x)')
legend('r = 10', 'r = 150', 'r = 300')
end
subplot(1,3,3)
hold on
q = (P - Po)/w;
plot(x,q,'--');
if r == 300
subtitle ('q(x)')
legend('r = 10', 'r = 150', 'r = 300')
end
end
figure
for Pa = [32,30,28]
Po = 20; Pb = 12; L = 600; l = 0.6; R = 3; N = 13E-13; n = 0.0012; r = 10;
W = 8*n/(pi*R^4); w = 4*n*l/(pi^2*r^4*R*N); lambda = sqrt(w/W);
subplot(1,3,1)
hold on
x = (linspace(0,600));
P = (-(Pb-Po)+(Pa-Po)*exp(-L/lambda))*exp(x/lambda)/(exp(-L/lambda)-exp(L/lambda))
+ ((Pb-Po)-(Pa-Po)*exp(L/lambda))*exp(-x/lambda)/(exp(-L/lambda)-exp(L/lambda)) +
Po;
plot(x,P,'--')
if Pa == 28
subtitle ('P(x)')
legend('Pa = 32', 'Pa = 30', 'Pa = 28')
end
subplot(1,3,2)
hold on
dPdx = gradient(P)./gradient(x);
Q = (-1/W)*dPdx;
plot(x,Q,'--')
if Pa == 28
subtitle ('Q(x)')
legend('Pa = 32', 'Pa = 30', 'Pa = 28')
end
subplot(1,3,3)
hold on
q = (P - Po)/w;
plot(x,q,'--')
if Pa == 28
subtitle ('q(x)')
legend('Pa = 32', 'Pa = 30', 'Pa = 28')
end
end
figure
for Po = [22,20,18]
Pa = 28.4; Pb = 12; L = 600; l = 0.6; R = 3; N = 13E-13; n = 0.0012; r = 10;
W = 8*n/(pi*R^4); w = 4*n*l/(pi^2*r^4*R*N); lambda = sqrt(w/W);
subplot(1,3,1)
hold on
x = (linspace(0,600));
P = (-(Pb-Po)+(Pa-Po)*exp(-L/lambda))*exp(x/lambda)/(exp(-L/lambda)-exp(L/lambda))
+ ((Pb-Po)-(Pa-Po)*exp(L/lambda))*exp(-x/lambda)/(exp(-L/lambda)-exp(L/lambda)) +
Po;
plot(x,P,'--')
if Po == 18
subtitle ('P(x)')
legend('Po = 22', 'Po = 20', 'Po = 18')
end
subplot(1,3,2)
hold on
dPdx = gradient(P)./gradient(x);
Q = (-1/W)*dPdx;
plot(x,Q,'--')
if Po == 18
subtitle ('Q(x)')
legend('Po = 22', 'Po = 20', 'Po = 18')
end
subplot(1,3,3)
hold on
q = (P - Po)/w;
plot(x,q,'--')
if Po == 18
subtitle ('q(x)')
legend('Po = 22', 'Po = 20', 'Po = 18')
end
end