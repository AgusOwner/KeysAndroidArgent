.class public final Lorg/apache/commons/lang3/SystemProperties;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# static fields
.field public static final AWT_TOOLKIT:Ljava/lang/String; = "awt.toolkit"

.field public static final FILE_ENCODING:Ljava/lang/String; = "file.encoding"

.field public static final FILE_SEPARATOR:Ljava/lang/String; = "file.separator"

.field public static final JAVA_AWT_FONTS:Ljava/lang/String; = "java.awt.fonts"

.field public static final JAVA_AWT_GRAPHICSENV:Ljava/lang/String; = "java.awt.graphicsenv"

.field public static final JAVA_AWT_HEADLESS:Ljava/lang/String; = "java.awt.headless"

.field public static final JAVA_AWT_PRINTERJOB:Ljava/lang/String; = "java.awt.printerjob"

.field public static final JAVA_CLASS_PATH:Ljava/lang/String; = "java.class.path"

.field public static final JAVA_CLASS_VERSION:Ljava/lang/String; = "java.class.version"

.field public static final JAVA_COMPILER:Ljava/lang/String; = "java.compiler"

.field public static final JAVA_ENDORSED_DIRS:Ljava/lang/String; = "java.endorsed.dirs"

.field public static final JAVA_EXT_DIRS:Ljava/lang/String; = "java.ext.dirs"

.field public static final JAVA_HOME:Ljava/lang/String; = "java.home"

.field public static final JAVA_IO_TMPDIR:Ljava/lang/String; = "java.io.tmpdir"

.field public static final JAVA_LIBRARY_PATH:Ljava/lang/String; = "java.library.path"

.field public static final JAVA_LOCALE_PROVIDERS:Ljava/lang/String; = "java.locale.providers"

.field public static final JAVA_RUNTIME_NAME:Ljava/lang/String; = "java.runtime.name"

.field public static final JAVA_RUNTIME_VERSION:Ljava/lang/String; = "java.runtime.version"

.field public static final JAVA_SPECIFICATION_NAME:Ljava/lang/String; = "java.specification.name"

.field public static final JAVA_SPECIFICATION_VENDOR:Ljava/lang/String; = "java.specification.vendor"

.field public static final JAVA_SPECIFICATION_VERSION:Ljava/lang/String; = "java.specification.version"

.field public static final JAVA_UTIL_PREFS_PREFERENCES_FACTORY:Ljava/lang/String; = "java.util.prefs.PreferencesFactory"

.field public static final JAVA_VENDOR:Ljava/lang/String; = "java.vendor"

.field public static final JAVA_VENDOR_URL:Ljava/lang/String; = "java.vendor.url"

.field public static final JAVA_VERSION:Ljava/lang/String; = "java.version"

.field public static final JAVA_VM_INFO:Ljava/lang/String; = "java.vm.info"

.field public static final JAVA_VM_NAME:Ljava/lang/String; = "java.vm.name"

.field public static final JAVA_VM_SPECIFICATION_NAME:Ljava/lang/String; = "java.vm.specification.name"

.field public static final JAVA_VM_SPECIFICATION_VENDOR:Ljava/lang/String; = "java.vm.specification.vendor"

.field public static final JAVA_VM_SPECIFICATION_VERSION:Ljava/lang/String; = "java.vm.specification.version"

.field public static final JAVA_VM_VENDOR:Ljava/lang/String; = "java.vm.vendor"

.field public static final JAVA_VM_VERSION:Ljava/lang/String; = "java.vm.version"

.field public static final LINE_SEPARATOR:Ljava/lang/String; = "line.separator"

.field private static final NULL_SUPPLIER:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final OS_ARCH:Ljava/lang/String; = "os.arch"

.field public static final OS_NAME:Ljava/lang/String; = "os.name"

.field public static final OS_VERSION:Ljava/lang/String; = "os.version"

.field public static final PATH_SEPARATOR:Ljava/lang/String; = "path.separator"

.field public static final USER_COUNTRY:Ljava/lang/String; = "user.country"

.field public static final USER_DIR:Ljava/lang/String; = "user.dir"

.field public static final USER_HOME:Ljava/lang/String; = "user.home"

.field public static final USER_LANGUAGE:Ljava/lang/String; = "user.language"

.field public static final USER_NAME:Ljava/lang/String; = "user.name"

.field public static final USER_REGION:Ljava/lang/String; = "user.region"

.field public static final USER_TIMEZONE:Ljava/lang/String; = "user.timezone"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lorg/apache/commons/lang3/SystemProperties$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/lang3/SystemProperties$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/SystemProperties;->NULL_SUPPLIER:Ljava/util/function/Supplier;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAwtToolkit()Ljava/lang/String;
    .locals 1

    const-string v0, "awt.toolkit"

    .line 263
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBoolean(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Z
    .locals 0

    .line 276
    invoke-static {p0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    .line 277
    invoke-interface {p1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static getFileEncoding()Ljava/lang/String;
    .locals 1

    const-string v0, "file.encoding"

    .line 292
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileSeparator()Ljava/lang/String;
    .locals 1

    const-string v0, "file.separator"

    .line 304
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInt(Ljava/lang/String;Ljava/util/function/IntSupplier;)I
    .locals 0

    .line 317
    invoke-static {p0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    .line 318
    invoke-interface {p1}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getJavaAwtFonts()Ljava/lang/String;
    .locals 1

    const-string v0, "java.awt.fonts"

    .line 330
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaAwtGraphicsenv()Ljava/lang/String;
    .locals 1

    const-string v0, "java.awt.graphicsenv"

    .line 342
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaAwtHeadless()Ljava/lang/String;
    .locals 1

    const-string v0, "java.awt.headless"

    .line 354
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaAwtPrinterjob()Ljava/lang/String;
    .locals 1

    const-string v0, "java.awt.printerjob"

    .line 366
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaClassPath()Ljava/lang/String;
    .locals 1

    const-string v0, "java.class.path"

    .line 378
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaClassVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "java.class.version"

    .line 390
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaCompiler()Ljava/lang/String;
    .locals 1

    const-string v0, "java.compiler"

    .line 402
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaEndorsedDirs()Ljava/lang/String;
    .locals 1

    const-string v0, "java.endorsed.dirs"

    .line 414
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaExtDirs()Ljava/lang/String;
    .locals 1

    const-string v0, "java.ext.dirs"

    .line 426
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaHome()Ljava/lang/String;
    .locals 1

    const-string v0, "java.home"

    .line 438
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaIoTmpdir()Ljava/lang/String;
    .locals 1

    const-string v0, "java.io.tmpdir"

    .line 450
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaLibraryPath()Ljava/lang/String;
    .locals 1

    const-string v0, "java.library.path"

    .line 462
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaLocaleProviders()Ljava/lang/String;
    .locals 1

    const-string v0, "java.locale.providers"

    .line 476
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaRuntimeName()Ljava/lang/String;
    .locals 1

    const-string v0, "java.runtime.name"

    .line 488
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaRuntimeVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "java.runtime.version"

    .line 500
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaSpecificationName()Ljava/lang/String;
    .locals 1

    const-string v0, "java.specification.name"

    .line 512
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaSpecificationVendor()Ljava/lang/String;
    .locals 1

    const-string v0, "java.specification.vendor"

    .line 524
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaSpecificationVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "java.specification.version"

    .line 536
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaUtilPrefsPreferencesFactory()Ljava/lang/String;
    .locals 1

    const-string v0, "java.util.prefs.PreferencesFactory"

    .line 548
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaVendor()Ljava/lang/String;
    .locals 1

    const-string v0, "java.vendor"

    .line 560
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaVendorUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "java.vendor.url"

    .line 572
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "java.version"

    .line 584
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaVmInfo()Ljava/lang/String;
    .locals 1

    const-string v0, "java.vm.info"

    .line 596
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaVmName()Ljava/lang/String;
    .locals 1

    const-string v0, "java.vm.name"

    .line 608
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaVmSpecificationName()Ljava/lang/String;
    .locals 1

    const-string v0, "java.vm.specification.name"

    .line 620
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaVmSpecificationVendor()Ljava/lang/String;
    .locals 1

    const-string v0, "java.vm.specification.vendor"

    .line 632
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaVmSpecificationVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "java.vm.specification.version"

    .line 644
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaVmVendor()Ljava/lang/String;
    .locals 1

    const-string v0, "java.vm.vendor"

    .line 656
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJavaVmVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "java.vm.version"

    .line 668
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLineSeparator()Ljava/lang/String;
    .locals 1

    const-string v0, "line.separator"

    .line 680
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLong(Ljava/lang/String;Ljava/util/function/LongSupplier;)J
    .locals 0

    .line 693
    invoke-static {p0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    .line 694
    invoke-interface {p1}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static getOsArch()Ljava/lang/String;
    .locals 1

    const-string v0, "os.arch"

    .line 706
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOsName()Ljava/lang/String;
    .locals 1

    const-string v0, "os.name"

    .line 718
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOsVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "os.version"

    .line 730
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPathSeparator()Ljava/lang/String;
    .locals 1

    const-string v0, "path.separator"

    .line 742
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 755
    sget-object v0, Lorg/apache/commons/lang3/SystemProperties;->NULL_SUPPLIER:Ljava/util/function/Supplier;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getProperty(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 770
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 773
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 774
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->getIfEmpty(Ljava/lang/CharSequence;Ljava/util/function/Supplier;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 780
    :catch_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getUserCountry()Ljava/lang/String;
    .locals 1

    const-string v0, "user.country"

    .line 793
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserDir()Ljava/lang/String;
    .locals 1

    const-string v0, "user.dir"

    .line 805
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserHome()Ljava/lang/String;
    .locals 1

    const-string v0, "user.home"

    .line 817
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserLanguage()Ljava/lang/String;
    .locals 1

    const-string v0, "user.language"

    .line 829
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserName()Ljava/lang/String;
    .locals 1

    const-string v0, "user.name"

    .line 841
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserTimezone()Ljava/lang/String;
    .locals 1

    const-string v0, "user.timezone"

    .line 853
    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$0()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
