# DriftButton_Global
# 悬浮按钮 / 全局浮层按钮

## 可以根据需求情况灵活使用

 -》可在全部页面均显示，在UIViewController的声明周期方法中做设置按钮的hidden属性来控制悬浮按钮的显示与否以及显示时机；

 -》也可在部分页面选择性的显示，显示的页面继承浮层类，在浮层类中的声明周期方法中控制悬浮按钮的显示时机；其他不需要显示悬浮按钮的页面则直接继承原来项目中的基类即可。
		
如图所示：

![image](https://github.com/WangMasterpro/DriftButton_Global/blob/master/img/DriftButton_Global1.gif) ![image](https://github.com/WangMasterpro/DriftButton_Global/blob/master/img/DriftButton_Global2.gif)

-》页面垂直滑动时按钮位置不动：

![image](https://github.com/WangMasterpro/DriftButton_Global/blob/master/img/DriftButton_Global3.gif)