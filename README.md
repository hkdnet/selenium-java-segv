This error occurred on CircleCI.

I tried to reproduce the error but cannot. This repository is the snapshot of my struggle.

```
2018-12-13 11:53:35,621 WARN Included extra file "/etc/supervisor/conf.d/selenium.conf" during parsing
2018-12-13 11:53:35,623 INFO supervisord started with pid 54
2018-12-13 11:53:36,625 INFO spawned: 'xvfb' with pid 152
2018-12-13 11:53:36,626 INFO spawned: 'selenium-standalone' with pid 153
2018-12-13 11:53:37,628 INFO success: xvfb entered RUNNING state, process has stayed up for > than 0 seconds (startsecs)
2018-12-13 11:53:37,628 INFO success: selenium-standalone entered RUNNING state, process has stayed up for > than 0 seconds (startsecs)
11:53:39.556 INFO [GridLauncherV3.parse] - Selenium server version: 3.141.59, revision: e82be7d358
11:53:39.644 INFO [GridLauncherV3.lambda$buildLaunchers$3] - Launching a standalone Selenium Server on port 4444
2018-12-13 11:53:39.711:INFO::main: Logging initialized @1769ms to org.seleniumhq.jetty9.util.log.StdErrLog
11:53:39.967 INFO [WebDriverServlet.<init>] - Initialising WebDriverServlet
11:53:40.040 INFO [SeleniumServer.boot] - Selenium Server is up and running on port 4444
11:54:46.883 INFO [ActiveSessionFactory.apply] - Capabilities are: {
  "browserName": "chrome",
  "chromeOptions": {
    "args": [
      "headless"
    ]
  },
  "cssSelectorsEnabled": true,
  "javascriptEnabled": true,
  "nativeEvents": false,
  "rotatable": false,
  "takesScreenshot": false,
  "version": ""
}
11:54:46.885 INFO [ActiveSessionFactory.lambda$apply$11] - Matched factory org.openqa.selenium.grid.session.remote.ServicedSession$Factory (provider: org.openqa.selenium.chrome.ChromeDriverService)
Starting ChromeDriver 2.45.615279 (12b89733300bd268cff3b78fc76cb8f3a7cc44e5) on port 18795
Only local connections are allowed.
[1544702086.958][SEVERE]: bind() failed: Cannot assign requested address (99)
[thread 140268405393152 also had an error]
#
# A fatal error has been detected by the Java Runtime Environment:
#
#  SIGSEGV (0xb) at pc=0x00007f93057767a8, pid=155, tid=0x00007f92c869f700
#
# JRE version: OpenJDK Runtime Environment (8.0_191-b12) (build 1.8.0_191-8u191-b12-0ubuntu0.16.04.1-b12)
# Java VM: OpenJDK 64-Bit Server VM (25.191-b12 mixed mode linux-amd64 compressed oops)
# Problematic frame:
# J 1613 C1 java.util.concurrent.ForkJoinPool.scan(Ljava/util/concurrent/ForkJoinPool$WorkQueue;I)Ljava/util/concurrent/ForkJoinTask; (416 bytes) @ 0x00007f93057767a8 [0x00007f9305775ea0+0x908]
#
# Failed to write core dump. Core dumps have been disabled. To enable core dumping, try "ulimit -c unlimited" before starting Java again
#
# An error report file with more information is saved as:
# /tmp/hs_err_pid155.log
[thread 140268408551168 also had an error]
#
# If you would like to submit a bug report, please visit:
#   http://bugreport.java.com/bugreport/crash.jsp
#
/opt/bin/start-selenium-standalone.sh: line 6:   155 Aborted                 java ${JAVA_OPTS} -jar /opt/selenium/selenium-server-standalone.jar ${SE_OPTS}
2018-12-13 11:54:47,245 INFO exited: selenium-standalone (exit status 134; not expected)
```
