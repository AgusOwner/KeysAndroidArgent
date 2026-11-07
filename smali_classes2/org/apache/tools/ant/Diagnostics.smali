.class public final Lorg/apache/tools/ant/Diagnostics;
.super Ljava/lang/Object;
.source "Diagnostics.java"


# static fields
.field private static final BIG_DRIFT_LIMIT:I = 0x2710

.field protected static final ERROR_PROPERTY_ACCESS_BLOCKED:Ljava/lang/String; = "Access to this property blocked by a security manager"

.field private static final KILOBYTE:I = 0x400

.field private static final MINUTES_PER_HOUR:I = 0x3c

.field private static final SECONDS_PER_MILLISECOND:I = 0x3e8

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final TEST_FILE_SIZE:I = 0x20


# direct methods
.method public static synthetic $r8$lambda$DoIYq_FMz30pG7A-DI6va0pYfdw(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doReport(Ljava/io/PrintStream;)V
    .locals 1

    const/4 v0, 0x2

    .line 285
    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->doReport(Ljava/io/PrintStream;I)V

    return-void
.end method

.method public static doReport(Ljava/io/PrintStream;I)V
    .locals 1

    const-string p1, "------- Ant diagnostics report -------"

    .line 295
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 296
    invoke-static {}, Lorg/apache/tools/ant/Main;->getAntVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p1, "Implementation Version"

    .line 297
    invoke-static {p0, p1}, Lorg/apache/tools/ant/Diagnostics;->header(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 299
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "core tasks     : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v0, Lorg/apache/tools/ant/Main;

    invoke-static {v0}, Lorg/apache/tools/ant/Diagnostics;->getImplementationVersion(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-class v0, Lorg/apache/tools/ant/Main;

    .line 300
    invoke-static {v0}, Lorg/apache/tools/ant/Diagnostics;->getClassLocation(Ljava/lang/Class;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 299
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p1, "ANT PROPERTIES"

    .line 302
    invoke-static {p0, p1}, Lorg/apache/tools/ant/Diagnostics;->header(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 303
    invoke-static {p0}, Lorg/apache/tools/ant/Diagnostics;->doReportAntProperties(Ljava/io/PrintStream;)V

    const-string p1, "ANT_HOME/lib jar listing"

    .line 305
    invoke-static {p0, p1}, Lorg/apache/tools/ant/Diagnostics;->header(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 306
    invoke-static {p0}, Lorg/apache/tools/ant/Diagnostics;->doReportAntHomeLibraries(Ljava/io/PrintStream;)V

    const-string p1, "USER_HOME/.ant/lib jar listing"

    .line 308
    invoke-static {p0, p1}, Lorg/apache/tools/ant/Diagnostics;->header(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 309
    invoke-static {p0}, Lorg/apache/tools/ant/Diagnostics;->doReportUserHomeLibraries(Ljava/io/PrintStream;)V

    const-string p1, "Tasks availability"

    .line 311
    invoke-static {p0, p1}, Lorg/apache/tools/ant/Diagnostics;->header(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 312
    invoke-static {p0}, Lorg/apache/tools/ant/Diagnostics;->doReportTasksAvailability(Ljava/io/PrintStream;)V

    const-string p1, "org.apache.env.Which diagnostics"

    .line 314
    invoke-static {p0, p1}, Lorg/apache/tools/ant/Diagnostics;->header(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 315
    invoke-static {p0}, Lorg/apache/tools/ant/Diagnostics;->doReportWhich(Ljava/io/PrintStream;)V

    const-string p1, "XML Parser information"

    .line 317
    invoke-static {p0, p1}, Lorg/apache/tools/ant/Diagnostics;->header(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 318
    invoke-static {p0}, Lorg/apache/tools/ant/Diagnostics;->doReportParserInfo(Ljava/io/PrintStream;)V

    const-string p1, "XSLT Processor information"

    .line 320
    invoke-static {p0, p1}, Lorg/apache/tools/ant/Diagnostics;->header(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 321
    invoke-static {p0}, Lorg/apache/tools/ant/Diagnostics;->doReportXSLTProcessorInfo(Ljava/io/PrintStream;)V

    const-string p1, "System properties"

    .line 323
    invoke-static {p0, p1}, Lorg/apache/tools/ant/Diagnostics;->header(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 324
    invoke-static {p0}, Lorg/apache/tools/ant/Diagnostics;->doReportSystemProperties(Ljava/io/PrintStream;)V

    const-string p1, "Temp dir"

    .line 326
    invoke-static {p0, p1}, Lorg/apache/tools/ant/Diagnostics;->header(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 327
    invoke-static {p0}, Lorg/apache/tools/ant/Diagnostics;->doReportTempDir(Ljava/io/PrintStream;)V

    const-string p1, "Locale information"

    .line 329
    invoke-static {p0, p1}, Lorg/apache/tools/ant/Diagnostics;->header(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 330
    invoke-static {p0}, Lorg/apache/tools/ant/Diagnostics;->doReportLocale(Ljava/io/PrintStream;)V

    const-string p1, "Proxy information"

    .line 332
    invoke-static {p0, p1}, Lorg/apache/tools/ant/Diagnostics;->header(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 333
    invoke-static {p0}, Lorg/apache/tools/ant/Diagnostics;->doReportProxy(Ljava/io/PrintStream;)V

    .line 335
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method private static doReportAntHomeLibraries(Ljava/io/PrintStream;)V
    .locals 2

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ant.home: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ant.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 406
    invoke-static {}, Lorg/apache/tools/ant/Diagnostics;->listLibraries()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/tools/ant/Diagnostics;->printLibraries([Ljava/io/File;Ljava/io/PrintStream;)V

    return-void
.end method

.method private static doReportAntProperties(Ljava/io/PrintStream;)V
    .locals 5

    .line 385
    new-instance v0, Lorg/apache/tools/ant/Project;

    invoke-direct {v0}, Lorg/apache/tools/ant/Project;-><init>()V

    .line 386
    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->initProperties()V

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ant.version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ant.version"

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ant.java.version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ant.java.version"

    .line 389
    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 388
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 391
    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isApacheHarmony()Z

    move-result v1

    const-string v2, "yes"

    const-string v3, "no"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v4, "Is this the Apache Harmony VM? "

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 390
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 393
    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isKaffe()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    const-string v4, "Is this the Kaffe VM? "

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 395
    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isGij()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    const-string v1, "Is this gij/gcj? "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 394
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ant.core.lib: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ant.core.lib"

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ant.home: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "ant.home"

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static doReportLocale(Ljava/io/PrintStream;)V
    .locals 10

    .line 626
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 627
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 628
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Timezone "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 629
    invoke-virtual {v1}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " offset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v2, 0x0

    .line 631
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    .line 632
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x7

    .line 633
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x3c

    const/16 v9, 0xc

    .line 634
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/2addr v7, v9

    mul-int/lit8 v7, v7, 0x3c

    const/16 v9, 0xd

    .line 635
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/2addr v7, v9

    mul-int/lit16 v7, v7, 0x3e8

    const/16 v9, 0xe

    .line 636
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v7, v0

    .line 631
    invoke-virtual/range {v1 .. v7}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 628
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static doReportParserInfo(Ljava/io/PrintStream;)V
    .locals 3

    .line 513
    invoke-static {}, Lorg/apache/tools/ant/Diagnostics;->getXMLParserName()Ljava/lang/String;

    move-result-object v0

    .line 514
    invoke-static {}, Lorg/apache/tools/ant/Diagnostics;->getXMLParserLocation()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XML Parser"

    .line 515
    invoke-static {p0, v2, v0, v1}, Lorg/apache/tools/ant/Diagnostics;->printParserInfo(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-static {}, Lorg/apache/tools/ant/Diagnostics;->getNamespaceParserName()Ljava/lang/String;

    move-result-object v0

    .line 517
    invoke-static {}, Lorg/apache/tools/ant/Diagnostics;->getNamespaceParserLocation()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Namespace-aware parser"

    .line 516
    invoke-static {p0, v2, v0, v1}, Lorg/apache/tools/ant/Diagnostics;->printParserInfo(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static doReportProxy(Ljava/io/PrintStream;)V
    .locals 2

    const-string v0, "http.proxyHost"

    .line 663
    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->printProperty(Ljava/io/PrintStream;Ljava/lang/String;)V

    const-string v0, "http.proxyPort"

    .line 664
    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->printProperty(Ljava/io/PrintStream;Ljava/lang/String;)V

    const-string v0, "http.proxyUser"

    .line 665
    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->printProperty(Ljava/io/PrintStream;Ljava/lang/String;)V

    const-string v0, "http.proxyPassword"

    .line 666
    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->printProperty(Ljava/io/PrintStream;Ljava/lang/String;)V

    const-string v0, "http.nonProxyHosts"

    .line 667
    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->printProperty(Ljava/io/PrintStream;Ljava/lang/String;)V

    const-string v0, "https.proxyHost"

    .line 668
    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->printProperty(Ljava/io/PrintStream;Ljava/lang/String;)V

    const-string v0, "https.proxyPort"

    .line 669
    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->printProperty(Ljava/io/PrintStream;Ljava/lang/String;)V

    const-string v0, "https.nonProxyHosts"

    .line 670
    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->printProperty(Ljava/io/PrintStream;Ljava/lang/String;)V

    const-string v0, "ftp.proxyHost"

    .line 671
    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->printProperty(Ljava/io/PrintStream;Ljava/lang/String;)V

    const-string v0, "ftp.proxyPort"

    .line 672
    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->printProperty(Ljava/io/PrintStream;Ljava/lang/String;)V

    const-string v0, "ftp.nonProxyHosts"

    .line 673
    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->printProperty(Ljava/io/PrintStream;Ljava/lang/String;)V

    const-string v0, "socksProxyHost"

    .line 674
    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->printProperty(Ljava/io/PrintStream;Ljava/lang/String;)V

    const-string v0, "socksProxyPort"

    .line 675
    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->printProperty(Ljava/io/PrintStream;Ljava/lang/String;)V

    const-string v0, "java.net.socks.username"

    .line 676
    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->printProperty(Ljava/io/PrintStream;Ljava/lang/String;)V

    const-string v0, "java.net.socks.password"

    .line 677
    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->printProperty(Ljava/io/PrintStream;Ljava/lang/String;)V

    const-string v0, "java.net.useSystemProxies"

    .line 679
    invoke-static {p0, v0}, Lorg/apache/tools/ant/Diagnostics;->printProperty(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 680
    new-instance v0, Lorg/apache/tools/ant/util/java15/ProxyDiagnostics;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/java15/ProxyDiagnostics;-><init>()V

    const-string v1, "Java1.5+ proxy settings:"

    .line 681
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 682
    invoke-virtual {v0}, Lorg/apache/tools/ant/util/java15/ProxyDiagnostics;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static doReportSystemProperties(Ljava/io/PrintStream;)V
    .locals 2

    .line 353
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    invoke-virtual {v0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/Diagnostics$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/apache/tools/ant/Diagnostics$$ExternalSyntheticLambda1;-><init>()V

    .line 360
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/tools/ant/Diagnostics$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/Diagnostics$$ExternalSyntheticLambda2;-><init>(Ljava/io/PrintStream;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :catch_0
    move-exception v0

    .line 355
    invoke-static {v0}, Lorg/apache/tools/ant/Diagnostics;->ignoreThrowable(Ljava/lang/Throwable;)V

    const-string v0, "Access to System.getProperties() blocked by a security manager"

    .line 356
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static doReportTasksAvailability(Ljava/io/PrintStream;)V
    .locals 6

    .line 473
    const-class v0, Lorg/apache/tools/ant/Main;

    const-string v1, "/org/apache/tools/ant/taskdefs/defaults.properties"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "None available"

    .line 476
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 478
    :cond_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 480
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 481
    invoke-virtual {v1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 482
    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 484
    :try_start_1
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 485
    invoke-virtual {v1, v2}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 493
    :catch_0
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : Initialization error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v3

    .line 490
    invoke-virtual {v3}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    const/16 v5, 0x2e

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 491
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " : Missing dependency "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 487
    :catch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : Not Available (the implementation class is not present)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 496
    :cond_1
    invoke-virtual {v1}, Ljava/util/Properties;->size()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "All defined tasks are available"

    .line 497
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "A task being missing/unavailable should only matter if you are trying to use it"

    .line 499
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    .line 503
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static doReportTempDir(Ljava/io/PrintStream;)V
    .locals 12

    const-string v0, "java.io.tmpdir"

    .line 549
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Warning: java.io.tmpdir is undefined"

    .line 551
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 554
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Temp dir is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 555
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Warning, java.io.tmpdir directory does not exist: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 561
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "diag"

    const-string v6, "txt"

    .line 566
    invoke-static {v5, v6, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 568
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/nio/file/OpenOption;

    invoke-static {v5, v7}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v7, 0x400

    :try_start_2
    new-array v8, v7, [B

    move v9, v6

    :goto_0
    const/16 v10, 0x20

    if-ge v9, v10, :cond_2

    .line 571
    invoke-virtual {v5, v8}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 573
    :cond_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v9, 0x3e8

    .line 577
    :try_start_3
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 578
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    new-array v9, v6, [Ljava/nio/file/OpenOption;

    invoke-static {v5, v9}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v9, v6

    .line 581
    :goto_1
    :try_start_4
    invoke-virtual {v5, v8, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    if-lez v10, :cond_3

    add-int/2addr v9, v10

    goto :goto_1

    .line 584
    :cond_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 587
    :try_start_5
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    sub-long/2addr v5, v2

    .line 589
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const-string v2, "Temp dir is writeable"

    .line 591
    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const v2, 0x8000

    if-eq v9, v2, :cond_4

    .line 593
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", but seems to be full.  Wrote 32768but could only read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 597
    :cond_4
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 600
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Temp dir alignment with system clock is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 601
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v5, 0x2710

    cmp-long v2, v2, v5

    if-lez v2, :cond_5

    const-string v2, "Warning: big clock drift -maybe a network filesystem"

    .line 602
    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 612
    :cond_5
    invoke-static {v4}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 613
    invoke-static {v4}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    if-eqz v1, :cond_6

    .line 614
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_6

    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v11, v4

    move-object v4, v1

    move-object v1, v5

    move-object v5, v11

    goto/16 :goto_5

    :catchall_0
    move-exception p0

    move-object v0, v1

    move-object v1, v4

    goto/16 :goto_7

    :catch_2
    move-exception v0

    move-object v11, v5

    move-object v5, v4

    move-object v4, v11

    goto :goto_3

    :catch_3
    move-exception v2

    move-object v11, v4

    move-object v4, v1

    move-object v1, v11

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object v0, v1

    move-object v1, v4

    goto/16 :goto_8

    :catch_4
    move-exception v0

    move-object v5, v4

    goto :goto_3

    :catch_5
    move-exception v2

    move-object v5, v4

    move-object v4, v1

    move-object v1, v5

    goto :goto_5

    :catchall_2
    move-exception p0

    move-object v0, v4

    move-object v1, v0

    goto/16 :goto_8

    :catch_6
    move-exception v0

    move-object v1, v4

    move-object v5, v1

    .line 609
    :goto_3
    :try_start_6
    invoke-static {v0}, Lorg/apache/tools/ant/Diagnostics;->ignoreThrowable(Ljava/lang/Throwable;)V

    const-string v0, "Failed to check whether tempdir is writable"

    .line 610
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 612
    invoke-static {v4}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 613
    invoke-static {v5}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    if-eqz v1, :cond_6

    .line 614
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 615
    :goto_4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_6

    :catchall_3
    move-exception p0

    move-object v0, v1

    move-object v1, v5

    goto :goto_8

    :catch_7
    move-exception v2

    move-object v1, v4

    move-object v5, v1

    .line 605
    :goto_5
    :try_start_7
    invoke-static {v2}, Lorg/apache/tools/ant/Diagnostics;->ignoreThrowable(Ljava/lang/Throwable;)V

    .line 606
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create a temporary file in the temp dir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " could not be created/written to"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 612
    invoke-static {v5}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 613
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    if-eqz v4, :cond_6

    .line 614
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 615
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_6
    :goto_6
    return-void

    :catchall_4
    move-exception p0

    move-object v0, v4

    :goto_7
    move-object v4, v5

    .line 612
    :goto_8
    invoke-static {v4}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 613
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    if-eqz v0, :cond_7

    .line 614
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 615
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 617
    :cond_7
    throw p0
.end method

.method private static doReportUserHomeLibraries(Ljava/io/PrintStream;)V
    .locals 3

    const-string v0, "user.home"

    .line 415
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "user.home: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 417
    new-instance v1, Ljava/io/File;

    sget-object v2, Lorg/apache/tools/ant/launch/Launcher;->USER_LIBDIR:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-static {v1}, Lorg/apache/tools/ant/Diagnostics;->listJarFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/tools/ant/Diagnostics;->printLibraries([Ljava/io/File;Ljava/io/PrintStream;)V

    return-void
.end method

.method private static doReportWhich(Ljava/io/PrintStream;)V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "org.apache.env.Which"

    .line 445
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "main"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 446
    const-class v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    new-array v3, v6, [Ljava/lang/String;

    aput-object v3, v2, v6

    .line 448
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 453
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :catch_1
    const-string v1, "Not available."

    .line 450
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, "Download it at https://xml.apache.org/commons/"

    .line 451
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "Error while running org.apache.env.Which"

    .line 459
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_1
    return-void
.end method

.method private static doReportXSLTProcessorInfo(Ljava/io/PrintStream;)V
    .locals 3

    .line 525
    invoke-static {}, Lorg/apache/tools/ant/Diagnostics;->getXSLTProcessorName()Ljava/lang/String;

    move-result-object v0

    .line 526
    invoke-static {}, Lorg/apache/tools/ant/Diagnostics;->getXSLTProcessorLocation()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XSLT Processor"

    .line 527
    invoke-static {p0, v2, v0, v1}, Lorg/apache/tools/ant/Diagnostics;->printParserInfo(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getClassLocation(Ljava/lang/Class;)Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/net/URL;"
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 153
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method private static getImplementationVersion(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getNamespaceParserLocation()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 248
    :try_start_0
    invoke-static {}, Lorg/apache/tools/ant/util/JAXPUtils;->getNamespaceXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 249
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/Diagnostics;->getClassLocation(Ljava/lang/Class;)Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 250
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    .line 253
    invoke-static {v1}, Lorg/apache/tools/ant/Diagnostics;->ignoreThrowable(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static getNamespaceParserName()Ljava/lang/String;
    .locals 1

    .line 237
    :try_start_0
    invoke-static {}, Lorg/apache/tools/ant/util/JAXPUtils;->getNamespaceXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 241
    invoke-static {v0}, Lorg/apache/tools/ant/Diagnostics;->ignoreThrowable(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 373
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Access to this property blocked by a security manager"

    :goto_0
    return-object p0
.end method

.method private static getSAXParser()Ljavax/xml/parsers/SAXParser;
    .locals 2

    const/4 v0, 0x0

    .line 189
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 197
    :try_start_1
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 200
    invoke-static {v1}, Lorg/apache/tools/ant/Diagnostics;->ignoreThrowable(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0

    :catch_1
    move-exception v1

    .line 192
    invoke-static {v1}, Lorg/apache/tools/ant/Diagnostics;->ignoreThrowable(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static getXMLParserLocation()Ljava/lang/String;
    .locals 2

    .line 227
    invoke-static {}, Lorg/apache/tools/ant/Diagnostics;->getSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 231
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/Diagnostics;->getClassLocation(Ljava/lang/Class;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private static getXMLParserName()Ljava/lang/String;
    .locals 1

    .line 161
    invoke-static {}, Lorg/apache/tools/ant/Diagnostics;->getSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Could not create an XML Parser"

    return-object v0

    .line 166
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getXSLTProcessor()Ljavax/xml/transform/Transformer;
    .locals 1

    .line 210
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 216
    invoke-static {v0}, Lorg/apache/tools/ant/Diagnostics;->ignoreThrowable(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getXSLTProcessorLocation()Ljava/lang/String;
    .locals 2

    .line 263
    invoke-static {}, Lorg/apache/tools/ant/Diagnostics;->getXSLTProcessor()Ljavax/xml/transform/Transformer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 267
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/Diagnostics;->getClassLocation(Ljava/lang/Class;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 268
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private static getXSLTProcessorName()Ljava/lang/String;
    .locals 1

    .line 174
    invoke-static {}, Lorg/apache/tools/ant/Diagnostics;->getXSLTProcessor()Ljavax/xml/transform/Transformer;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Could not create an XSLT Processor"

    return-object v0

    .line 179
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static header(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 2

    .line 339
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    const-string v0, "-------------------------------------------"

    .line 340
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v1, " "

    .line 341
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static ignoreThrowable(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public static isOptionalAvailable()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$doReportSystemProperties$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lorg/apache/tools/ant/Diagnostics;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$listJarFiles$0(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p0, ".jar"

    .line 123
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static listJarFiles(Ljava/io/File;)[Ljava/io/File;
    .locals 1

    .line 123
    new-instance v0, Lorg/apache/tools/ant/Diagnostics$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/tools/ant/Diagnostics$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static listLibraries()[Ljava/io/File;
    .locals 3

    const-string v0, "ant.home"

    .line 109
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 113
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "lib"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lorg/apache/tools/ant/Diagnostics;->listJarFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0

    .line 131
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0}, Lorg/apache/tools/ant/Diagnostics;->doReport(Ljava/io/PrintStream;)V

    return-void
.end method

.method private static printLibraries([Ljava/io/File;Ljava/io/PrintStream;)V
    .locals 6

    if-nez p0, :cond_0

    const-string p0, "No such directory."

    .line 428
    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 431
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 432
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static printParserInfo(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "unknown"

    if-nez p2, :cond_0

    move-object p2, v0

    :cond_0
    if-nez p3, :cond_1

    move-object p3, v0

    .line 538
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 539
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " Location: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static printProperty(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 1

    .line 646
    invoke-static {p1}, Lorg/apache/tools/ant/Diagnostics;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 648
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string p1, " = "

    .line 649
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/16 p1, 0x22

    .line 650
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(C)V

    .line 651
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(C)V

    :cond_0
    return-void
.end method

.method public static validateVersion()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
