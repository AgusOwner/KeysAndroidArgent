.class public final Lorg/apache/tools/ant/util/JavaEnvUtils;
.super Ljava/lang/Object;
.source "JavaEnvUtils.java"


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final IS_AIX:Z

.field private static final IS_DOS:Z

.field private static final IS_NETWARE:Z

.field public static final JAVA_10:Ljava/lang/String; = "10"

.field public static final JAVA_11:Ljava/lang/String; = "11"

.field public static final JAVA_12:Ljava/lang/String; = "12"

.field public static final JAVA_1_0:Ljava/lang/String; = "1.0"

.field public static final JAVA_1_1:Ljava/lang/String; = "1.1"

.field public static final JAVA_1_2:Ljava/lang/String; = "1.2"

.field public static final JAVA_1_3:Ljava/lang/String; = "1.3"

.field public static final JAVA_1_4:Ljava/lang/String; = "1.4"

.field public static final JAVA_1_5:Ljava/lang/String; = "1.5"

.field public static final JAVA_1_6:Ljava/lang/String; = "1.6"

.field public static final JAVA_1_7:Ljava/lang/String; = "1.7"

.field public static final JAVA_1_8:Ljava/lang/String; = "1.8"

.field public static final JAVA_1_9:Ljava/lang/String; = "1.9"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final JAVA_9:Ljava/lang/String; = "9"

.field private static final JAVA_HOME:Ljava/lang/String;

.field public static final VERSION_10:I = 0x64

.field public static final VERSION_11:I = 0x6e

.field public static final VERSION_12:I = 0x78

.field public static final VERSION_1_0:I = 0xa

.field public static final VERSION_1_1:I = 0xb

.field public static final VERSION_1_2:I = 0xc

.field public static final VERSION_1_3:I = 0xd

.field public static final VERSION_1_4:I = 0xe

.field public static final VERSION_1_5:I = 0xf

.field public static final VERSION_1_6:I = 0x10

.field public static final VERSION_1_7:I = 0x11

.field public static final VERSION_1_8:I = 0x12

.field public static final VERSION_1_9:I = 0x13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VERSION_9:I = 0x5a

.field private static classpathDetected:Z

.field private static gijDetected:Z

.field private static harmonyDetected:Z

.field private static javaVersion:Ljava/lang/String;

.field private static javaVersionNumber:I

.field private static jrePackages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static kaffeDetected:Z

.field private static final parsedJavaVersion:Lorg/apache/tools/ant/util/DeweyDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "dos"

    .line 41
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->IS_DOS:Z

    const-string v0, "netware"

    .line 43
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isName(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->IS_NETWARE:Z

    const-string v0, "aix"

    .line 45
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isName(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->IS_AIX:Z

    const-string v0, "java.home"

    .line 48
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->JAVA_HOME:Ljava/lang/String;

    .line 51
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "1.8"

    .line 189
    sput-object v2, Lorg/apache/tools/ant/util/JavaEnvUtils;->javaVersion:Ljava/lang/String;

    const/16 v2, 0x12

    .line 190
    sput v2, Lorg/apache/tools/ant/util/JavaEnvUtils;->javaVersionNumber:I

    const-string v2, "java.lang.module.ModuleDescriptor"

    .line 191
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v2, "java.specification.version"

    .line 193
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    new-instance v3, Lorg/apache/tools/ant/util/DeweyDecimal;

    invoke-direct {v3, v2}, Lorg/apache/tools/ant/util/DeweyDecimal;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v3, v0}, Lorg/apache/tools/ant/util/DeweyDecimal;->get(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    sput v2, Lorg/apache/tools/ant/util/JavaEnvUtils;->javaVersionNumber:I

    .line 196
    invoke-virtual {v3}, Lorg/apache/tools/ant/util/DeweyDecimal;->getSize()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 197
    sget v2, Lorg/apache/tools/ant/util/JavaEnvUtils;->javaVersionNumber:I

    invoke-virtual {v3, v1}, Lorg/apache/tools/ant/util/DeweyDecimal;->get(I)I

    move-result v4

    add-int/2addr v2, v4

    sput v2, Lorg/apache/tools/ant/util/JavaEnvUtils;->javaVersionNumber:I

    .line 199
    :cond_0
    invoke-virtual {v3}, Lorg/apache/tools/ant/util/DeweyDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/apache/tools/ant/util/JavaEnvUtils;->javaVersion:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :catchall_0
    new-instance v2, Lorg/apache/tools/ant/util/DeweyDecimal;

    sget-object v3, Lorg/apache/tools/ant/util/JavaEnvUtils;->javaVersion:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/tools/ant/util/DeweyDecimal;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/apache/tools/ant/util/JavaEnvUtils;->parsedJavaVersion:Lorg/apache/tools/ant/util/DeweyDecimal;

    .line 205
    sput-boolean v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->kaffeDetected:Z

    :try_start_1
    const-string v2, "kaffe.util.NotImplemented"

    .line 207
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 208
    sput-boolean v1, Lorg/apache/tools/ant/util/JavaEnvUtils;->kaffeDetected:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 212
    :catchall_1
    sput-boolean v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->classpathDetected:Z

    :try_start_2
    const-string v2, "gnu.classpath.Configuration"

    .line 214
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 215
    sput-boolean v1, Lorg/apache/tools/ant/util/JavaEnvUtils;->classpathDetected:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 219
    :catchall_2
    sput-boolean v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->gijDetected:Z

    :try_start_3
    const-string v2, "gnu.gcj.Core"

    .line 221
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 222
    sput-boolean v1, Lorg/apache/tools/ant/util/JavaEnvUtils;->gijDetected:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 226
    :catchall_3
    sput-boolean v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->harmonyDetected:Z

    :try_start_4
    const-string v0, "org.apache.harmony.luni.util.Base64"

    .line 228
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 229
    sput-boolean v1, Lorg/apache/tools/ant/util/JavaEnvUtils;->harmonyDetected:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-boolean v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->IS_DOS:Z

    if-eqz v0, :cond_0

    const-string v0, ".exe"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildJrePackages()V
    .locals 2

    .line 470
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "sun"

    .line 471
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 472
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "java"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 473
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "javax"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 474
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "com.sun.java"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 475
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "com.sun.image"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 476
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "org.omg"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 477
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "com.sun.corba"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 478
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "com.sun.jndi"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 479
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "com.sun.media"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 480
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "com.sun.naming"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 481
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "com.sun.org.omg"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 482
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "com.sun.rmi"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 483
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "sunw.io"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 484
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "sunw.util"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 485
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "org.ietf.jgss"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 486
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "org.w3c.dom"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 487
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "org.xml.sax"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 488
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "com.sun.org.apache"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 489
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    const-string v1, "jdk"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public static createVmsJavaOptionFile([Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 545
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    const/4 v1, 0x0

    const-string v2, "ANT"

    const-string v3, ".JAVA_OPTS"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/tools/ant/util/FileUtils;->createTempFile(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZ)Ljava/io/File;

    move-result-object v0

    .line 546
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 547
    :try_start_0
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p0, v3

    .line 548
    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 551
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    return-object v0

    :catchall_0
    move-exception p0

    .line 546
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method private static findInDir(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 451
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/util/FileUtils;->normalize(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 453
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 454
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lorg/apache/tools/ant/util/JavaEnvUtils;->addExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 455
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getJavaHome()Ljava/lang/String;
    .locals 1

    .line 560
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->JAVA_HOME:Ljava/lang/String;

    return-object v0
.end method

.method public static getJavaVersion()Ljava/lang/String;
    .locals 1

    .line 244
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->javaVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getJavaVersionNumber()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 259
    sget v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->javaVersionNumber:I

    return v0
.end method

.method public static getJdkExecutable(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 402
    sget-boolean v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->IS_NETWARE:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 412
    :cond_0
    sget-boolean v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->IS_AIX:Z

    if-eqz v0, :cond_1

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/tools/ant/util/JavaEnvUtils;->JAVA_HOME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/../sh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->findInDir(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/tools/ant/util/JavaEnvUtils;->JAVA_HOME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/../bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->findInDir(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 423
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 430
    :cond_3
    invoke-static {p0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJreExecutable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getJreExecutable(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 361
    sget-boolean v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->IS_NETWARE:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 371
    :cond_0
    sget-boolean v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->IS_AIX:Z

    if-eqz v0, :cond_1

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/tools/ant/util/JavaEnvUtils;->JAVA_HOME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->findInDir(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/tools/ant/util/JavaEnvUtils;->JAVA_HOME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->findInDir(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 382
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 387
    :cond_3
    invoke-static {p0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->addExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getJrePackageTestCases()Ljava/util/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 499
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const-string v1, "java.lang.Object"

    .line 500
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string v1, "sun.reflect.SerializationConstructorAccessorImpl"

    .line 501
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string v1, "sun.net.www.http.HttpClient"

    .line 502
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string v1, "sun.audio.AudioPlayer"

    .line 503
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string v2, "javax.accessibility.Accessible"

    .line 504
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string v2, "sun.misc.BASE64Encoder"

    .line 505
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string v2, "com.sun.image.codec.jpeg.JPEGCodec"

    .line 506
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string v2, "org.omg.CORBA.Any"

    .line 507
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string v2, "com.sun.corba.se.internal.corba.AnyImpl"

    .line 508
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string v2, "com.sun.jndi.ldap.LdapURL"

    .line 509
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string v2, "com.sun.media.sound.Printer"

    .line 510
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string v2, "com.sun.naming.internal.VersionHelper"

    .line 511
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string v2, "com.sun.org.omg.CORBA.Initializer"

    .line 512
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string v2, "sunw.io.Serializable"

    .line 513
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string v2, "sunw.util.EventListener"

    .line 514
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 515
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string v1, "org.ietf.jgss.Oid"

    .line 516
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string v1, "org.w3c.dom.Attr"

    .line 517
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string v1, "org.xml.sax.XMLReader"

    .line 518
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string v1, "com.sun.org.apache.xerces.internal.jaxp.datatype.DatatypeFactoryImpl"

    .line 519
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string v1, "jdk.net.Sockets"

    .line 520
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getJrePackages()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 529
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 530
    invoke-static {}, Lorg/apache/tools/ant/util/JavaEnvUtils;->buildJrePackages()V

    .line 532
    :cond_0
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->jrePackages:Ljava/util/Vector;

    return-object v0
.end method

.method public static getParsedJavaVersion()Lorg/apache/tools/ant/util/DeweyDecimal;
    .locals 1

    .line 271
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->parsedJavaVersion:Lorg/apache/tools/ant/util/DeweyDecimal;

    return-object v0
.end method

.method public static isApacheHarmony()Z
    .locals 1

    .line 339
    sget-boolean v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->harmonyDetected:Z

    return v0
.end method

.method public static isAtLeastJavaVersion(Ljava/lang/String;)Z
    .locals 2

    .line 301
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->parsedJavaVersion:Lorg/apache/tools/ant/util/DeweyDecimal;

    new-instance v1, Lorg/apache/tools/ant/util/DeweyDecimal;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/util/DeweyDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/DeweyDecimal;->compareTo(Lorg/apache/tools/ant/util/DeweyDecimal;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isClasspathBased()Z
    .locals 1

    .line 320
    sget-boolean v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->classpathDetected:Z

    return v0
.end method

.method public static isGij()Z
    .locals 1

    .line 330
    sget-boolean v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->gijDetected:Z

    return v0
.end method

.method public static isJavaVersion(Ljava/lang/String;)Z
    .locals 2

    .line 285
    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->javaVersion:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->javaVersion:Ljava/lang/String;

    const-string v1, "9"

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1.9"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isKaffe()Z
    .locals 1

    .line 311
    sget-boolean v0, Lorg/apache/tools/ant/util/JavaEnvUtils;->kaffeDetected:Z

    return v0
.end method
