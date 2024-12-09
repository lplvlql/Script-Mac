JsOsaDAS1.001.00bplist00�Vscript_�function appActivate(appName, doWait = false) {
    const app = Application(appName);
    app.activate();
    
    if (doWait) {
        appActivateWait(appName);
    }
}

function appActivateWait(appName) {
    let appProcess = Application("System Events").processes[appName];
    
    while (!appProcess.exists()) {
        delay(1);
        appProcess = Application("System Events").processes[appName];
    }
    
    while (!appProcess.frontmost()) {
        delay(1);
        appProcess = Application("System Events").processes[appName];
    }
}

const appName = $.NSProcessInfo.processInfo.arguments.objectAtIndex(2).js;
appActivate(appName, true);                              �jscr  ��ޭ