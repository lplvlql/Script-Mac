JsOsaDAS1.001.00bplist00�Vscript_�function appMenu(appName, menuBar, menuBarItem, menu, menuItem) {
	const appProcess = Application('System Events').processes[appName];
	const item = appProcess.menuBars[menuBar].menuBarItems[menuBarItem].menus[menu].menuItems[menuItem];
	if (item.exists()) item.click();
}

const appName = $.NSProcessInfo.processInfo.arguments.objectAtIndex(2).js;
const menuBar = $.NSProcessInfo.processInfo.arguments.objectAtIndex(3).js;
const menuBarItem = $.NSProcessInfo.processInfo.arguments.objectAtIndex(4).js;
const menu = $.NSProcessInfo.processInfo.arguments.objectAtIndex(5).js;
const menuItem = $.NSProcessInfo.processInfo.arguments.objectAtIndex(6).js;

appMenu(appName, menuBar, menuBarItem, menu, menuItem)
                              � jscr  ��ޭ