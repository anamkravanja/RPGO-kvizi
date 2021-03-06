% Naloga 9
clf
format long

B = [0 0; 2 3; 5 0; 3 -1; 2 -1];
w = [0.5 0.7 0.8 1 0.6];
t = 0.5;

b = rdecasteljau(B,w,0.5);

b2 = rbezier(B,w,linspace(0,1,11));
w(2)=2;
bb1 = rbezier(B,w,linspace(0,1,11));
w(2)=0.2;
bb2 = rbezier(B,w,linspace(0,1,11));

t2=0.7;
t3=2;
t4=0.2;
plotrbezier(B,w,t2);
plotrbezier(B,w,t3);
plotrbezier(B,w,t4);

% naloga 10

B = [1 0;1 4;-3 2;-3 -2;1 -4;1 0];
w = [1 0.2 0.2 0.2 0.2 1];
plotrbezier(B,w,t);

% elevation step:
[Be,we] = rbezierelv(B,w);
wh = ones(1,length(we)); % to je uresnici samo plot berier
plotrbezier(Be,wh,t);

