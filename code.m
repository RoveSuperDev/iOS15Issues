// iOS 15 tabbar 兼容选择文字颜色和未选择文字颜色问题解决



   self.tabBar.layer.shadowColor = RSD_Color(197, 198, 209).CGColor;
    self.tabBar.layer.shadowOffset = CGSizeMake(0, -2);
    self.tabBar.layer.shadowOpacity = 0.25;
    if (@available(iOS 15.0, *))
    {
        UITabBarAppearance *appearance = [[UITabBarAppearance alloc]init];
        [appearance configureWithOpaqueBackground];
        appearance.backgroundColor = RSD_Color(240, 240, 240);
        appearance.shadowImage = [UIImage rsd_imageWithColor:RSD_Color(240, 240, 240)size:CGSizeMake(1, 0.5)];
        appearance.backgroundImage = [UIImage rsd_imageWithColor:RSD_Color(255, 255, 255)size:CGSizeMake(1, 0.5)];
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
        [UITabBar appearance].shadowImage = [UIImage rsd_imageWithColor:RSD_Color(240, 240, 240)size:CGSizeMake(1, 0.5)];
        [UITabBar appearance].backgroundImage = [UIImage rsd_imageWithColor:RSD_Color(255, 255, 255)size:CGSizeMake(1, 0.5)];
        [UITabBar appearance].translucent = NO;
    }
