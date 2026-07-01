#set text(lang: "zh", region: "cn")
#import "template.typ": *
#set text(font: (font-en, font-song))
#show strong: set text(font: (font-en, font-hei), weight: "regular")
#show emph: text.with(font: (font-en, font-kai), style: "normal")
#show: frame-style(styles.hint)
#show: ilm.with(
  title: [大学物理],
  author: "Closure",
  // abstract: [Default Abstract],
  // bibliography: bibliography("../My Library.bib", style: "ieee"),
  figure-index: (enabled: true),
)

= 质点运动学
== 位移 速度 加速度
+ 直角坐标系
  $ arrow(r) = x arrow(i) + y arrow(j) + z arrow(k) $
  $ arrow(v) = (d x) / (d t) arrow(i) + (d y) / (d t) arrow(j) + (d z) / (d t) arrow(k) $
  $ arrow(a) = (d^2 x) / (d t^2) arrow(i) + (d^2 y) / (d t^2) arrow(j) + (d^2 z) / (d t^2) arrow(k) $
+ 自然坐标系
  $ s = s(t) $
  $ arrow(v) = (d s) / (d t) arrow(e)_t $
  $ arrow(a) = (d v) / (d t) arrow(e)_t + v^2 / rho arrow(e)_n $
  #proposition[曲率 曲率半径][
    $ k = (d theta) / (d s) = abs(y^('')) / (1 + y^('2))^(3/2) $
    $ rho = 1 / k $
  ]
+ 极坐标系
  $ arrow(r) = r(t) arrow(e)_r (t) $
  $ arrow(v) = dot(r) arrow(e)_r + r dot(theta) arrow(e)_theta $
  $
    arrow(a) = (accent(r, dot.double) - r dot(theta)^2) arrow(e)_r + (2 dot(r) dot(theta) + r accent(theta, dot.double) ) arrow(e)_theta
  $
== 相对运动
+ 参考系间的平动
  $ arrow(r) = arrow(R) + arrow(r)^' $
  $ arrow(v) = arrow(u) + arrow(v)^' $
  $ arrow(a) = (d arrow(u))/(d t) + arrow(a)^' $
+ 参考系间的匀速定轴转动
  $ arrow(v) = arrow(v)^' + arrow(omega) times arrow(r) $
  $
    arrow(a) = arrow(a)^' + 2 arrow(omega) times arrow(v)^' + arrow(omega) times (arrow(omega) times arrow(r)) + arrow(alpha) times arrow(r)
  $


= 质点动力学
== 非惯性系和惯性力
+ 平移加速系
  $ arrow(F)_i = - m arrow(a)_f $
+ 转动系
  - 惯性离心力 $ arrow(F)_c = m omega^2 arrow(r) $
  - 切向惯性力 $ arrow(F)_e = - m arrow(alpha) times arrow(r) $
  - 科里奥利力 $ arrow(F)_"cor" = - 2 m arrow(omega) times arrow(v)^' $
= 动能定理和机械能守恒定律
== 功与动能定理
#definition[功][
  $ A = integral_a^b arrow(F) dot d arrow(r) = integral_a^b F cos alpha d s $
]
#definition[功率][$ P = arrow(F) dot arrow(v) $]
#theorem[动能定理][
  $ A = Delta E_k $]
== 保守力与势能
#proposition[保守力判据][
  $ arrow(F)"为保守力"<=> nabla times arrow(F) = 0 $]
#definition[势能][
  $ A_(a b) = -(E_(p b) - E_(p a)) $]
#proposition[势能与力][
  $ E_p = -integral arrow(F) (arrow(r)) dot d arrow(r) $
  $ arrow(F) = - nabla E_p $]
#note[Nabla算子][
  - 直角坐标系 $ nabla = (partial/(partial x), partial/(partial y), partial/(partial z)) $
  - 极坐标系 $ nabla = (partial / (partial r), partial / (r partial theta)) $
]
== 势能曲线
#definition[平衡与稳定][
  - 平衡条件 $ (d E_p) / (d x) = 0 $
  - 稳定条件 $ (d^2 E_p) / (d x^2) > 0 quad 且 quad (d E_p) / (d x) = 0 $
]
== 质点系功能原理 机械能守恒定律
#proposition[内力之功][$ A_(a b) = integral_a^b arrow(F)_(i j) dot d arrow(r)_(i j) $
  #note[][
    + 一对内力之功一般不为0
    + 一对内力之功与参考系无关
  ]
]
#theorem[质点系动能定理][$ A_e + A_I = Delta E_k $]
#theorem[功能原理][$ A_e + A_(N I) = Delta E $]
#theorem[机械能守恒定律][$ A_e = 0, A_(N I) = 0 => E = E_k + E_p = C $]

= 动量与角动量
== 动量定理和动量守恒定律
#definition[冲量][$ arrow(I) = integral_(t_0)^t arrow(F) d t $]
#theorem[动量定理][$ arrow(F) = (d arrow(p)) / (d t) $$ arrow(I) =arrow(p) - arrow(p)_0 $]
#proposition[内力之冲量][一对内力之和为0，一对内力之冲量和为0]
#theorem[质点系动量定理][$ arrow(F)_(e x) = (d arrow(p)) / (d t) $$
    integral_(t_0)^t arrow(F)_(e x) d t = arrow(p) - arrow(p)_0
  $]
#theorem[质点系动量守恒定律][$ arrow(F)_(e x) = 0 => arrow(p) = arrow(C) $]
== 质心和质心运动定理
#definition[质心][$ arrow(r)_c = (sum m_i arrow(r)_i) / (sum m_i) $$
    arrow(r)_c = (integral arrow(r) d m) / (integral d m )
  $]
#proposition[][$ m arrow(r)_c = sum m_i arrow(r)_i $$ m arrow(v)_c = sum m_i arrow(v)_i $]
#proposition[][质心系是零动量系]
#proposition[][质心系中功能原理，角动量定理仍然成立]
#theorem[质心运动定理][$ arrow(F)_(e x) = m arrow(a)_c $]

== 碰撞问题
#definition[恢复系数][$ e = (v_2 - v_1) / (v_10 - v_20) $]
#summary[斜碰][
  #proposition[][质心系中弹性碰撞，粒子速度的大小不变]
  $v_1^', v_2^'$是碰撞后粒子相对于质心速度
  $ abs(arrow(v)_c) = m_1 / (m_1 + m_2) u_1 $
  $ abs(arrow(v)_1^') = m_2 / (m_1 + m_2) u_1 $
  $ abs(arrow(v)_2^') = m_1 / (m_1 + m_2) u_1 $
  #proposition[][
    - $m_1 < m_2$，散射角取$0 <= theta <= pi$
    - $m_1 > m_2$，散射角取$0 <= theta <= theta_max, theta_max = arcsin m_2 / m_1$
    - $m_1= m_2$，$arrow(v)_1 perp arrow(v)_2$
  ]
]
== 火箭飞行
#theorem[变质量系统动力学方程][$ m (d arrow(v)) / (d t) = arrow(F) + (d m)/(d t) arrow(u) $
  $arrow(u)$为附体进入主体之前或离开主体之后相对主体速度]
== 质点的角动量 角动量守恒定律
#definition[角动量][$ arrow(L) = arrow(r) times m arrow(v) $]
#definition[力矩][$ arrow(M) = arrow(r) times arrow(F) $]
#theorem[角动量定理][$ arrow(M) = (d arrow(L))/(d t) $$ integral_(t_0)^t arrow(M) d t = arrow(L) - arrow(L)_0 $]
#theorem[角动量守恒定律][$ arrow(M) = 0 => arrow(L) = arrow(C) $]
== 质点系的角动量定理和角动量守恒定律
#proposition[内力矩之角冲量][一对内力矩之和为0，一对内力矩之角冲量和为0]
#theorem[质点系角动量定理][$ arrow(M)_(e x) = (d arrow(L))/(d t) $$
    integral_(t_0)^t arrow(M)_(e x) d t = arrow(L) - arrow(L)_0
  $]
#theorem[质点系角动量守恒定律][$ arrow(M)_(e x) = 0 => arrow(L) = arrow(C) $]
== 质心系中的角动量定理
#proposition[质心角动量][$ arrow(L) = arrow(r)_c times arrow(p) + arrow(L)^' $
  $arrow(r)_c times arrow(p)$为质心角动量，$arrow(L)^'$为相对质心角动量
]
== 质点在保守有心力场中的运动
#proposition[][保守有心力场中，角动量守恒，机械能守恒]
#definition[有效势能][
  $ V_(e q u)(r) = L^2 / (2 m r^2) + V(r) $
  $ E = 1/2 m dot(r)^2 + L^2 / (2 m r^2) + V(r) = 1/2 m dot(r)^2 + V_(e q u)(r) $
]
#proposition[天体的机械能][$ E = - (G M m) /(2 a) $]
== 开普勒定律
#theorem[开普勒第三定律][$ a^3 / T^2 = (G M) / (4 pi^2) $]
= 刚体力学基础
== 刚体的运动
#definition[自由度][
  - 平动 $i = 3$
  - 转动
    - 定轴转动 $i = 1$
    - 定点转动 $i = 3$
  - 平面平行运动 $i = 3$
  - 一般刚体运动 $i = 6$
]
#proposition[角量与线量][
  $ arrow(v) = arrow(omega) times arrow(r) $
  $ arrow(a)_t = arrow(alpha) times arrow(r) $
  $ arrow(a)_n = arrow(omega) times (arrow(omega) times arrow(r)) $
]
== 刚体定轴转动定理
$ L = I omega $
#theorem[刚体定轴转动定理][
  $ M = I alpha $
]
== 刚体的转动惯量
#definition[转动惯量][
  $ I = sum Delta m_i R_i^2 $
  $ i = integral R^2 d m $
]
#three-line-table[
  | 物体与转轴 | 转动惯量 | 物体与转轴 | 转动惯量 |
  | --- | --- | --- | --- |
  | 圆环 转轴通过中心   | $m r^2$      | 圆环 转轴沿直径   | $1/2 m r^2$              |
  | 圆盘 转轴通过中心   | $1/2 m r^2$  | 圆筒 转轴沿几何轴   | $1/2 m (r_1^2 + r_2^2)$              |
  | 圆柱体 转轴沿几何轴 | $1/2 m r^2$  | 圆柱体 转轴通过中心 | $1/4 m r^2+1/12 m l^2$ |
  | 细棒 转轴通过中心   | $1/12 m l^2$ | 细棒 转轴通过端点 | $1/3 m l^2$              |
  | 球体 转轴沿直径     | $2/5 m r^2$  | 球壳 转轴沿直径   | $2/3 m r^2$              |
]
#theorem[平行轴定理][$ I_p = I_c + M d^2 $]
#theorem[垂直轴定理][

  有一薄板，板面内两垂直轴的转动惯量为$I_x, I_y$，则$ I_z = I_x + I_y $]
== 刚体定轴转动中的功能关系
#proposition[刚体定轴转动的动能][$ E_k = 1/2 I omega^2=1/2 I_c omega^2 + 1/2 m v_c^2 $]
#proposition[力矩的功][$ A = integral_(phi_0)^phi M d phi $]
#theorem[刚体定轴转动的动能定理][$ A = 1/2 I omega^2 - 1/2 I omega_0^2 $]
#proposition[刚体的重力势能][$ E_p = m g z_c $]
#theorem[刚体定轴转动的功能原理][$ A = (m g z_c + 1/2 I omega^2) - (m g z_(c 0) + 1/2 I omega_0^2) $
  $A$为除重力以外的其他外力矩做的功]
#theorem[刚体的机械能守恒定律][$ M=0 => m g z_c + 1/2 I omega^2 = C $]
== 刚体定轴转动的角动量守恒定律
#theorem[刚体定轴转动的角动量守恒定律][$ M=0 => I omega = C $]
== 刚体的平面平行运动
#proposition[][相对任一转轴的角速度相同]
#theorem[柯尼希定理][

  $ "质点系动能" = "质心动能" + "相对质心动能" $
  刚体动能为
  $ E_k = 1/2 m v_c^2 + 1/2 I_c omega^2 $
]
#proposition[纯滚动][$ v_c = omega R $$ a_c = alpha R $]
== 刚体的进动
$ arrow(M) = arrow(Omega) times arrow(L) $
$ Omega = (m g r_c) / (I omega) $
= 相对论
== 力学相对性原理、伽利略变换、牛顿绝对时空观

#proposition[伽利略坐标变换][
  #three-line-table[
    | 正变换 | 逆变换 |
    | --- | --- |
    | $ x^' = x - u t $ | $ x = x^' + u t^' $ |
    | $ y^' = y $ | $ y = y^' $ |
    | $ z^' = z $ | $ z = z^' $ |
    | $ t^' = t $ | $ t = t^' $ |
  ]
]
#proposition[伽利略速度变换][
  #three-line-table[
    | 正变换 | 逆变换 |
    | --- | --- |
    | $ v_x^' = v_x - u $ | $ v_x = v_x^' + u $ |
    | $ v_y^' = v_y $ | $ v_y = v_y^' $ |
    | $ v_z^' = v_z $ | $ v_z = v_z^' $ |
  ]
]
#proposition[伽利略加速度变换][
  #three-line-table[
    | 正变换 | 逆变换 |
    | --- | --- |
    | $ a_x^' = a_x - (d u)/(d t) $ | $ a_x = a_x^' + (d u)/(d t^') $ |
    | $ a_y^' = a_y $ | $ a_y = a_y^' $ |
    | $ a_z^' = a_z $ | $ a_z = a_z^' $ |
  ]
]
== 狭义相对论的基本假设
#proposition[狭义相对论的基本假设][
  - 相对性原理：一切物理规律在任何惯性系中形式相同
  - 光速不变原理：光在真空中的速度具有相同的数值，与惯性参考系的运动速度无关，与光源速度无关
]

== 时空相对性
#proposition[同时性的相对性][

  在$S^'$系中同时发生的两个事件，在$S$系中沿运动方向后方事件先发生。]
#proposition[钟慢效应][
  $ Delta t = tau_0 / sqrt(1 - u^2/c^2) $
]
#proposition[尺缩效应][
  $ l = l_0 sqrt(1-u^2/c^2) $
]
== 洛伦兹变换
$ gamma = 1 / sqrt(1 - u^2 / c^2) $
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
== 相对论质量和动量
#definition[相对论质量][$ m = m_0 / (1 - v^2 / c^2) $]
== 相对论动能 质能关系
#definition[相对论动能][$ E_k = m c^2 - m_0 c^2 $]
#proposition[相对论能量和动量的关系][$ E^2 = E_0^2 + p^2 c^2 $]

= 振动力学基础
== 简谐振动（运动学）
$ x = A cos (omega t + phi) $
$ v = omega A cos (omega t + phi + pi / 2) $
$ a = omega^2 A cos (omega t + phi + pi) = -omega^2 x $

== 简谐振动（动力学）
#proposition[动力学方程与固有频率][
  $
    cases(
      reverse: #true,
      display((d^2 x) / (d t^2) + omega^2 x = 0),
      display((d^2 x) / (d t^2) + k / m x = 0)
    ) => omega = sqrt(k / m)
  $
]
#proposition[能量][
  $ E_k = 1/2 k A^2 sin^2 (omega t + phi) $
  $ E_p = 1/2 k A^2 cos^2 (omega t + phi) $
  $ E = 1/2 k A^2 $]
== 微振动的简谐近似（复摆）
$ M = -D theta = J (d^2 theta)/(d t^2) => omega = sqrt(D / J) $
$ -m g r_c sin theta = J (d^2 theta)/(d t^2) => omega = sqrt((m g r_c)/J) $
== 简谐振动的合成
#proposition[同频率平行简谐运动的合成][
  $ A = sqrt(A_1^2 + A_2^2 + 2 A_1 A_2 cos(phi_2 - phi_1)) $
  $ tan phi = (A_1 sin phi_1 + A_2 sin phi_2)/(A_1 cos phi_1 + A_2 cos phi_2) $]
#proposition[合振动公式][
  $ sum_(k=0)^(n-1) A cos(omega t + k phi) = A (sin (n phi) / 2) / (sin phi /2) cos (omega t + (n-1)/2 phi) $
  $ sum_(k=0)^(n-1) A sin (omega t + k phi) = A (sin (n phi) / 2) / (sin phi /2) sin (omega t + (n-1)/2 phi) $]
#proposition[不同频率平行简谐运动的合成 拍][

  $omega_2 tilde omega_1$时
  $ nu_b = abs(nu_2 - nu_1) $
]
#proposition[同频率垂直简谐振动的合成][
  轨迹为椭圆
  - $phi_2 = phi_1$，过一三象限直线
  - $phi_2 - phi_1 = pi$，过二四象限直线
  - $phi_2 - phi_1 = pi / 2$，右旋椭圆
  - $phi_2 - phi_1 = -pi / 2$，左旋椭圆
]

#proposition[不同频率垂直简谐振动的合成][

  两振动频率恰成整数比，得封闭稳定轨道，称Lissajou图
  $ nu_x / nu_y = n_y / n_x $]

= 机械波
== 机械波的产生条件和传播
$ u = omega / k $
== 平面简谐行波
#proposition[波动式][
  $
    y(x, t) & = A cos[omega(t - x / u) + phi] \
            & = A cos [2 pi nu (t - x/u) + phi] \
            & = A cos [2 pi (t/T - x/lambda) + phi] \
            & = A cos [k(u t - x) + phi] \
            & = A cos [omega t - k x + phi]
  $]
#proposition[波动方程与波速][
  $
    cases(
      reverse: #true,
      display((partial^2 y)/(partial t^2) - u^2 (partial^2 y)/(partial x^2) = 0),
      display((partial^2 y)/(partial t^2) - T / rho_l (partial^2 y)/(partial x^2) = 0)
    ) => u = sqrt(T / rho_l)
  $]
== 波的能量和能流
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
== 惠更斯原理
#theorem[惠更斯原理][
  $ n_1 sin i = n_2 sin gamma $]
== 波的叠加 波的干涉
#proposition[干涉强度][
  $ A = sqrt(A_1^2 + A_2^2 + 2 A_1 A_2 cos Delta phi) $
  $ I = I_1 + I_2 + 2 sqrt(I_1 I_2) cos Delta phi $]
#definition[驻波][
  $ y = 2 A cos k x cos omega t $]
#proposition[简正模式][
  $
    cases(display("两端固定/自由：" &L = n lambda_n / 2), display("一端固定，一端自由："quad&L = (n - 1/2) lambda_n / 2))
  $
]
== 多普勒效应
#proposition[多普勒效应][
  $ nu_R = u^' / lambda^' = (u plus.minus V_R) / (u plus.minus V_S) nu_S $
]
#definition[马赫角][
  $ sin alpha = u / V_S $]
= 热力学平衡态
== 热力学第零定律 温度和温标
#theorem[热力学第零定律][

  A和B、A和C分别热平衡，则B和C一定热平衡
]

== 理想气体温标和状态方程
#definition[理想气体温标][
  - 定容气体温度计：$ V = C: T = 273.16 P / P_(tr) $
  - 定压气体温度计：$ P = C: T = 273.16 V / V_(tr) $
  - 理想气体温标：$ V = C: T = 273.16 lim_(P_tr -> 0) P / P_(tr) $
]

#theorem[理想气体状态方程][
  $ P V = nu R T $
]

#theorem[][
  $ P = n k_B T $
]

#definition[普适气体恒量][$ R = 8.314 upright(J)\/upright("mol") dot upright(K) $]

#definition[玻尔兹曼常数][$ k_B = R / N_A = 1.38 times 10^(-23) upright(J)\/upright(K) $
  $ N k_B = nu R $]

== 热力学系统的微观模型  理想气体压强公式 温度的统计意义
#theorem[理想气体压强公式][$ P = 2/3 n overline(epsilon_t) $]
#proposition[平均平动动能][$ overline(epsilon_t) = 3/2 k_B T $]

== 麦克斯韦速率分布
#proposition[用速率分布函数表示平均值][

  $g$是关于$v$的物理量
  $ overline(g) = integral_0^infinity g f(v) d v $
  $ overline(g)_(v_1 tilde v_2) = (integral_(v_1)^v_2 g f(v) d v )/(integral_(v_1)^(v_2) f(v) d v) $
]

#proposition[速率分布与速度分布][$ f(v) d v = F(v_x, v_y, v_z) dot 4 pi v^2 d v $]
#proposition[最可几速率 平均速率 方均根速率][
  $ v_p = sqrt((2 k_B T) / m) = sqrt((2 R T) / M) $
  $ overline(v) = sqrt((8 k_B T) /(pi m)) = sqrt((8 R T) / (pi M)) $
  $ sqrt(overline(v^2)) = sqrt((3 k_B T) / m) = sqrt((3 R T) / M) $
]

#proposition[分子泻流][

  碰壁频率：单位时间内单位面积上通过的分子数 $ Gamma = 1/4 n overline(v) $
]

== 玻尔兹曼能量分布律
#theorem[玻尔兹曼能量分布律][
  $ n = n_0 e^(-epsilon_p / (k_B T)) $
]
#proposition[等温气压公式][$ p = p_0 e^(-(m g z) / (k_B T)) $]

== 能量均分定理和理想气体的内能
#definition[自由度][
  - 质点 $S = 3$
  - 刚体 $S = 6$
  - 单原子分子 $S = 3$
  - 刚性双原子分子 $S = 5$
  - 刚性多原子分子 $S=6$
  - 非刚性双原子分子 $S = 6$
  - 非刚性多原子分子 $S = 3 n$
  $ S = t + r + s $
  $ i = t + r + 2 s $
]

#theorem[能量均分定理][
  分子在每个自由度上都具有相同的平均动能$1/2 k_B T$
  $ overline(epsilon) = i/2 k_B T $
]

#proposition[理想气体内能][$ E = i/2 nu R T $]

== 范德瓦尔斯气体状态方程
#theorem[范德瓦尔斯气体状态方程][$ (P + a nu^2 / V^2)(V - nu b) = nu R T $]

== 气体内分子的碰撞
#proposition[碰撞频率 平均自由程][
  $ overline(Z) = sqrt(2) pi d^2 overline(v) n $
  $ overline(lambda) = overline(v) / overline(Z) = 1/(sqrt(2) pi d^2 n) $
]

= 热力学定律
== 热力学第一定律
#theorem[热力学第一定律][
  $ Q = Delta E + A $
  $ T d S = d E + p d V $
]

#proposition[准静态过程功的计算][$ d A = P d V $$ A = integral_(V_1)^(V_2) P d V $]

== 热力学第一定律对理想气体的应用
#definition[定容摩尔热容][
  $ C_(V,m) = ((d Q_m) / (d T))_V = i/2 R $
]
#proposition[][$ d E = nu C_(V,m) d T $]
#definition[定压摩尔热容][
  $ C_(P,m) = ((d Q_m) / (d T))_P = (i + 2) / 2 R $
]
#definition[热容比][
  $ gamma = C_(P,m) / C_(V,m) = (i + 2) / i = 1 + R / C_(V,m) $
]

#theorem[迈耶公式][
  $ C_(P,m) = C_(V,m) + R $
]

#proposition[等体过程][
  $ (A)_V = 0 $
  $ (Q)_V = nu C_(V,m) Delta T $
]

#proposition[等温过程][
  $ (Q)_T = (A)_T = nu R T ln(V_2 / V_1) $
]

#proposition[等压过程][
  $ (A)_P = P Delta V = nu R Delta T $
  $ (Q)_P = nu C_(P,m) Delta T $
]

#proposition[绝热过程][
  $ (A)_(a d) = -nu C_(V,m) Delta T = (P_2 V_2 - P_1 V_1) / (1-gamma) $
  $ (Q)_(a d) = 0 $
]

#proposition[多方过程][
  $ (A)_n = (P_2 V_2 - P_1 V_1) / (1 - n) $
  $ (Q)_n = nu C_m Delta T $
]

#definition[多方指数][
  $ n = (C_m - C_(P,m)) / (C_m - C_(V,m)) $
  $ C_m = (gamma - n) / (1-n) C_(V,m) $
  - $n = 0$：$P = C$，等压过程
  - $n = 1$：$P V = C$，等温过程
  - $n = gamma$：$P V^gamma = C$，绝热过程
  - $n = infinity$：$V = C$，等体过程
]

== 循环过程 卡诺循环
#definition[效率][

  热机效率：$ eta = A / Q_1 = 1 - Q_2 / Q_1 $
  致冷系数：$ w = Q_2 / A = Q_2 / (Q_1 - Q_2) $
]

#proposition[卡诺循环][
  $ eta = 1 - T_2 / T_1 $
  $ w = T_2 / (T_1 - T_2) $
]

== 热力学第二定律
#theorem[热力学第二定律][
  - 开尔文表述：不可能从单一热源吸收热量，使它完全转变为功，而不引起其他变化
  - 克劳修斯表述：不可能把热量从低温物体传向高温物体，而不引起其他变化
]

== 热力学过程的不可逆性
#theorem[卡诺定理][

  - 工作在相同的高温热源$T_1$和低温热源$T_2$之间的一切可逆机效率相同，与工作物质无关$ eta_"可逆" = 1 - T_2 / T_1 $
  - 工作在其间的一切不可逆机的效率总小于可逆机$ eta_"不可逆" < 1 - T_2 / T_1 $
]

#theorem[克劳修斯等式与不等式][
  - 可逆循环 $ integral.cont (d Q) / T = 0 $
  - 不可逆循环 $ integral.cont (d Q) / T < 0 $
]

== 热力学系统的熵
#definition[熵][
  $ S_2 - S_1 = limits(integral_1^2)_"可" (d Q) / T $
  对于微小可逆过程
  $ d S = (d Q) / T $
]

#proposition[熵的计算][
  $ S = nu C_(V,m) ln (P V^gamma) $
  $
    Delta S & = nu C_(V,m) ln T / T_0 + nu R ln V / V_0 \
            & = nu C_(V,m) ln P / P_0 + nu C_(P,m) ln V / V_0 \
            & = nu C_(P,m) ln T / T_0 - nu R ln P / P_0
  $
  - $T = T_0$：$ Delta S = nu R ln V / V_0 $
  - $P = C$：$ Delta S = nu C_(P,m) ln T / T_0 $
  - $V = C$：$ Delta S = nu C_(V,m) ln T / T_0 $
]

== 熵增加原理
#theorem[熵增加原理][
  $ S_2 - S_1 > limits(integral_1^2)_"不" (d Q) / T $
  对于微小不可逆过程
  $ d S > (d Q) / T $
  对于绝热、孤立系统，

  如过程可逆，$Delta S = 0$

  如过程不可逆，$Delta S > 0$
]

== 热力学第二定律的统计意义
#definition[热力学概率][

  $Omega$为某宏观态所包含的微观态数目
]
#definition[玻尔兹曼熵][$ S = k_B ln Omega $]
