Source: apache-netbeans
Section: Development
Priority: optional
Maintainer: Alied <aliedperezmartinez@gmail.com>
Rules-Requires-Root: no
Build-Depends:
 debhelper-compat (= 13),
Standards-Version: 4.7.2
Homepage: https://netbeans.apache.org/
Vcs-Browser: https://github.com/apache/netbeans
Vcs-Git: https://github.com/apache/netbeans.git

Package: apache-netbeans
Architecture: amd64
Depends:
 ${shlibs:Depends},
 ${misc:Depends},
Description: Apache NetBeans ${NETBEANS_VERSION}.
  NetBeans IDE is an integrated development environment (IDE) for writing, compiling, testing, and debugging software applications for the Java (TM) platform and other environments. 
  NetBeans IDE includes a full-featured text editor, visual design tools, source code management support, database integration tools, and many other features.
