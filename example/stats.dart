import "package:osx/osx.dart";

void main() {
  say("Your computer is named: ${SystemInformation.getComputerName()}");
  say("You are running OSX ${SystemInformation.getVersion()}");
  say("Battery is at ${Battery.getLevel()}%");
  say("There are ${Applications.list().length} apps installed");

  if (Finder.getWindowCount() == 0) {
    say("Finder is not open.");
  } else {
    say("Finder is open.");
  }

  var app = Applications.get("Textual 5");

  if (app.isInstalled()) {
    say("Textual 5 is installed");
  } else {
    say("Textual 5 is not installed.");
  }

  say("Opening Mission Control");
  MissionControl.activate();
  sleep(FIVE_SECONDS);
  MissionControl.close();
}
