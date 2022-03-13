# binary decision variables for buy at time t
var b0 binary;
var b1 binary;
var b2 binary;
var b3 binary;
var b4 binary;
var b5 binary;
var b6 binary;
var b7 binary;
var b8 binary;
var b9 binary;
var b10 binary;
var b11 binary;
var b12 binary;
var b13 binary;
var b14 binary;
var b15 binary;
var b16 binary;
var b17 binary;
var b18 binary;
var b19 binary;
var b20 binary;
var b21 binary;
var b22 binary;
var b23 binary;

# binary decision variables for sell at time t
var s0 binary;
var s1 binary;
var s2 binary;
var s3 binary;
var s4 binary;
var s5 binary;
var s6 binary;
var s7 binary;
var s8 binary;
var s9 binary;
var s10 binary;
var s11 binary;
var s12 binary;
var s13 binary;
var s14 binary;
var s15 binary;
var s16 binary;
var s17 binary;
var s18 binary;
var s19 binary;
var s20 binary;
var s21 binary;
var s22 binary;
var s23 binary;

# binary dv if the battery is full
var f1 = b0 - s0;
var f2 = f1 + b1 - s1;
var f3 = f2 + b2 - s2;
var f4 = f3 + b3 - s3;
var f5 = f4 + b4 - s4;
var f6 = f5 + b5 - s5;
var f7 = f6 + b6 - s6;
var f8 = f7 + b7 - s7;
var f9 = f8 + b8 - s8;
var f10 = f9 + b9 - s9;
var f11 = f10 + b10 - s10;
var f12 = f11 + b11 - s11;
var f13 = f12 + b12 - s12;
var f14 = f13 + b13 - s13;
var f15 = f14 + b14 - s14;
var f16 = f15 + b15 - s15;
var f17 = f16 + b16 - s16;
var f18 = f17 + b17 - s17;
var f19 = f18 + b18 - s18;
var f20 = f19 + b19 - s19;
var f21 = f20 + b20 - s20;
var f22 = f21 + b21 - s21;
var f23 = f22 + b22 - s22;
var f24 = f23 + b23 - s23;


# optimisation function to maximise profits
# 85% efficiency accounted for here
maximize profit:
0.85 *
120.8879 * s0 +
120.9206 * s1 +
121.0187 * s2 +
121.1821 * s3 +
121.4109 * s4 +
121.7051 * s5 +
122.0646 * s6 +
122.4896 * s7 +
122.9799 * s8 +
123.5355 * s9 +
124.1566 * s10 +
124.8430 * s11 +
125.5948 * s12 +
126.4120 * s13 +
127.2945 * s14 +
128.2424 * s15 +
129.2557 * s16 +
130.3344 * s17 +
131.4784 * s18 +
132.6878 * s19 +
133.9626 * s20 +
135.3027 * s21 +
136.7083 * s22 +
138.1792 * s23 -
120.8879 * b0 -
120.9206 * b1 -
121.0187 * b2 -
121.1821 * b3 -
121.4109 * b4 -
121.7051 * b5 -
122.0646 * b6 -
122.4896 * b7 -
122.9799 * b8 -
123.5355 * b9 -
124.1566 * b10 -
124.8430 * b11 -
125.5948 * b12 -
126.4120 * b13 -
127.2945 * b14 -
128.2424 * b15 -
129.2557 * b16 -
130.3344 * b17 -
131.4784 * b18 -
132.6878 * b19 -
133.9626 * b20 -
135.3027 * b21 -
136.7083 * b22 -
138.1792 * b23;

# battery constraint
subject to bat1a: f1 >= 0;
subject to bat1b: f1 <= 1;
subject to bat2a: f2 >= 0;
subject to bat2b: f2 <= 1;
subject to bat3a: f3 >= 0;
subject to bat3b: f3 <= 1;
subject to bat4a: f4 >= 0;
subject to bat4b: f4 <= 1;
subject to bat5a: f5 >= 0;
subject to bat5b: f5 <= 1;
subject to bat6a: f6 >= 0;
subject to bat6b: f6 <= 1;
subject to bat7a: f7 >= 0;
subject to bat7b: f7 <= 1;
subject to bat8a: f8 >= 0;
subject to bat8b: f8 <= 1;
subject to bat9a: f9 >= 0;
subject to bat9b: f9 <= 1;
subject to bat10a: f10 >= 0;
subject to bat10b: f10 <= 1;
subject to bat11a: f11 >= 0;
subject to bat11b: f11 <= 1;
subject to bat12a: f12 >= 0;
subject to bat12b: f12 <= 1;
subject to bat13a: f13 >= 0;
subject to bat13b: f13 <= 1;
subject to bat14a: f14 >= 0;
subject to bat14b: f14 <= 1;
subject to bat15a: f15 >= 0;
subject to bat15b: f15 <= 1;
subject to bat16a: f16 >= 0;
subject to bat16b: f16 <= 1;
subject to bat17a: f17 >= 0;
subject to bat17b: f17 <= 1;
subject to bat18a: f18 >= 0;
subject to bat18b: f18 <= 1;
subject to bat19a: f19 >= 0;
subject to bat19b: f19 <= 1;
subject to bat20a: f20 >= 0;
subject to bat20b: f20 <= 1;
subject to bat21a: f21 >= 0;
subject to bat21b: f21 <= 1;
subject to bat22a: f22 >= 0;
subject to bat22b: f22 <= 1;
subject to bat23a: f23 >= 0;
subject to bat23b: f23 <= 1;
subject to bat24a: f24 >= 0;
subject to bat24b: f24 <= 1;

# discharge time of 1 hour: cannot buy and sell at the same time
subject to dis0: b0 + s0 <= 1;
subject to dis1: b1 + s1 <= 1;
subject to dis2: b2 + s2 <= 1;
subject to dis3: b3 + s3 <= 1;
subject to dis4: b4 + s4 <= 1;
subject to dis5: b5 + s5 <= 1;
subject to dis6: b6 + s6 <= 1;
subject to dis7: b7 + s7 <= 1;
subject to dis8: b8 + s8 <= 1;
subject to dis9: b9 + s9 <= 1;
subject to dis10: b10 + s10 <= 1;
subject to dis11: b11 + s11 <= 1;
subject to dis12: b12 + s12 <= 1;
subject to dis13: b13 + s13 <= 1;
subject to dis14: b14 + s14 <= 1;
subject to dis15: b15 + s15 <= 1;
subject to dis16: b16 + s16 <= 1;
subject to dis17: b17 + s17 <= 1;
subject to dis18: b18 + s18 <= 1;
subject to dis19: b19 + s19 <= 1;
subject to dis20: b20 + s20 <= 1;
subject to dis21: b21 + s21 <= 1;
subject to dis22: b22 + s22 <= 1;
subject to dis23: b23 + s23 <= 1; 

# assume battery is drained by the end of the trading day?
subject to bat24: f24 = 0;