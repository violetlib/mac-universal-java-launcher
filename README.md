This is a modified version of the macOS launcher that is used by the `jpackage` utility.

The primary change is that before using the JDK runtime at the standard
location, it will look for a JDK runtime at a location based on the
current execution architecture.

The locations are:

* Contents/runtime – the standard and default location
* Contents/runtime-arm — the preferred location when running on arm64 (Apple Silicon)
* Contents/runtime-x86 — the preferred location when running on X86_64 (Intel)

This change allows the construction of a Java-based universal application, by installing
an arm64 runtime and an x86 runtime at the appropriate locations. Of course, having
two runtimes makes the application much larger, but if a universal application is
what you want, this is what you need to do.

There is no constraint on the JDK runtimes. They do not need to be the same JDK release.

Other changes:

This launcher recognizes old JDK runtimes where `libjli.dylib` is in a different location.

This launcher sets the environment variable DYLD_FRAMEWORK_PATH to the Frameworks
directory.


