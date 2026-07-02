#set text(lang: "zh", region: "cn")
#import "template.typ": *
#set text(font: (font-en, font-song))
#show strong: set text(font: (font-en, font-hei), weight: "regular")
#show emph: text.with(font: (font-en, font-kai), style: "normal")
#show: frame-style(styles.hint)

#proposition[曲率 曲率半径][
  $ k = (d theta) / (d s) = abs(y^('')) / (1 + y^('2))^(3/2) $
  $ rho = 1 / k $
]

#definition[有效势能][
  $ V_(e q u)(r) = L^2 / (2 m r^2) + V(r) $
  $ E = 1/2 m dot(r)^2 + L^2 / (2 m r^2) + V(r) = 1/2 m dot(r)^2 + V_(e q u)(r) $
]
#proposition[天体的机械能][$ E = - (G M m) /(2 a) $]

#three-line-table[
  | 物体与转轴 | 转动惯量 | 物体与转轴 | 转动惯量 |
  | --- | --- | --- | --- |
  | 圆环 转轴通过中心   | $m r^2$      | 圆环 转轴沿直径   | $1/2 m r^2$              |
  | 圆盘 转轴通过中心   | $1/2 m r^2$  | 圆筒 转轴沿几何轴   | $1/2 m (r_1^2 + r_2^2)$              |
  | 圆柱体 转轴沿几何轴 | $1/2 m r^2$  | 圆柱体 转轴通过中心 | $1/4 m r^2+1/12 m l^2$ |
  | 细棒 转轴通过中心   | $1/12 m l^2$ | 细棒 转轴通过端点 | $1/3 m l^2$              |
  | 球体 转轴沿直径     | $2/5 m r^2$  | 球壳 转轴沿直径   | $2/3 m r^2$              |
]

#proposition[进动][
  $ arrow(M) = arrow(Omega) times arrow(L) $
  $ Omega = (m g r_c) / (I omega) $
]

#proposition[洛伦兹坐标变换][
  #three-line-table[
    | 正变换 | 逆变换 |
    | --- | --- |
    | $ x^' = gamma (x - u t) $ | $ x = gamma (x^' + u t^') $ |
    | $ y^' = y $ | $ y = y^' $ |
    | $ z^' = z $ | $ z = z^' $ |
    | $ t^' = gamma (t - u/c^2 x) $ | $ t = gamma (t^' + u/c^2 x^') $ |
  ]
]

#proposition[洛伦兹速度变换][
  #three-line-table[
    | 正变换 | 逆变换 |
    | --- | --- |
    | $ v_x^' = (v_x - u) / (1 - u/c^2 v_x) $ | $ v_x = (v_x^' + u) / (1 + u/c^2 v_x^') $ |
    | $ v_y^' = v_y / (gamma (1 - u/c^2 v_x)) $ | $ v_y = v_y^' / (gamma (1 + u/c^2 v_x^')) $ |
    | $ v_z^' = v_z / (gamma (1 - u/c^2 v_x)) $ | $ v_z = v_z^' / (gamma (1 + u/c^2 v_x^')) $ |
  ]
]

#proposition[合振动公式][
  $ sum_(k=0)^(n-1) A cos(omega t + k phi) = A (sin (n phi) / 2) / (sin phi /2) cos (omega t + (n-1)/2 phi) $
  $ sum_(k=0)^(n-1) A sin (omega t + k phi) = A (sin (n phi) / 2) / (sin phi /2) sin (omega t + (n-1)/2 phi) $]

#proposition[波动方程与波速][
  $
    cases(
      reverse: #true,
      display((partial^2 y)/(partial t^2) - u^2 (partial^2 y)/(partial x^2) = 0),
      display((partial^2 y)/(partial t^2) - T / rho_l (partial^2 y)/(partial x^2) = 0)
    ) => u = sqrt(T / rho_l)
  $]

#definition[能量密度][
  $ epsilon_p = epsilon_k = 1/2 epsilon = 1/2 rho omega^2 A^2 sin^2(omega t - k x) $
  $ overline(epsilon) = 1/2 rho omega^2 A^2 $
]
#definition[能流][
  $ P = epsilon u S $
]
#definition[能流密度][
  $ arrow(i) = epsilon arrow(u) $
  $ i = P / S = epsilon u $
]
#definition[强度][
  $ I = overline(i) = overline(epsilon) u = 1/2 rho omega^2 A^2 u = 1/2 z omega^2 A^2 $
  #definition[波阻抗][$ z = rho u $]
]

#proposition[最可几速率 平均速率 方均根速率][
  $ v_p = sqrt((2 k_B T) / m) = sqrt((2 R T) / M) $
  $ overline(v) = sqrt((8 k_B T) /(pi m)) = sqrt((8 R T) / (pi M)) $
  $ sqrt(overline(v^2)) = sqrt((3 k_B T) / m) = sqrt((3 R T) / M) $
]

#theorem[范德瓦尔斯气体状态方程][$ (P + a nu^2 / V^2)(V - nu b) = nu R T $]
