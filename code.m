// iOS 15 tabbar 兼容选择文字颜色和未选择文字颜色问题解决



 if (@available(iOS 15.0, *))
    {
        UITabBarAppearance *appearance = [[UITabBarAppearance alloc]init];
        appearance.backgroundColor = RSD_Color(240, 240, 240);
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = @{NSForegroundColorAttributeName:RSD_ColorHex(@"0089FD")};
        appearance.stackedLayoutAppearance.normal.titleTextAttributes = @{NSForegroundColorAttributeName:RSD_ColorHex(@"454444")};
        [UITabBar appearance].standardAppearance = appearance;
        [UITabBar appearance].scrollEdgeAppearance = [UITabBar appearance].standardAppearance;
    } else
    {
        if (@available(iOS 13.0, *))
        {
            [UITabBar appearance].unselectedItemTintColor = RSD_ColorHex(@"454444");
            [UITabBar appearance].tintColor = RSD_ColorHex(@"0089FD");
        } else
        {
            // iOS 13以下
           [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:RSD_ColorHex(@"454444")} forState:UIControlStateNormal];
           [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:RSD_ColorHex(@"0089FD")} forState:UIControlStateSelected];
        }
    }
