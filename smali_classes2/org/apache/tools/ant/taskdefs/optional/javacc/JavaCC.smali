.class public Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;
.super Lorg/apache/tools/ant/Task;
.source "JavaCC.java"


# static fields
.field protected static final ARCHIVE_LOCATIONS:[Ljava/lang/String;

.field protected static final ARCHIVE_LOCATIONS_VS_MAJOR_VERSION:[I

.field private static final BUILD_PARSER:Ljava/lang/String; = "BUILD_PARSER"

.field private static final BUILD_TOKEN_MANAGER:Ljava/lang/String; = "BUILD_TOKEN_MANAGER"

.field private static final CACHE_TOKENS:Ljava/lang/String; = "CACHE_TOKENS"

.field private static final CHOICE_AMBIGUITY_CHECK:Ljava/lang/String; = "CHOICE_AMBIGUITY_CHECK"

.field private static final COMMON_TOKEN_ACTION:Ljava/lang/String; = "COMMON_TOKEN_ACTION"

.field protected static final COM_JAVACC_CLASS:Ljava/lang/String; = "javacc.Main"

.field protected static final COM_JJDOC_CLASS:Ljava/lang/String; = "jjdoc.JJDocMain"

.field protected static final COM_JJTREE_CLASS:Ljava/lang/String; = "jjtree.Main"

.field protected static final COM_PACKAGE:Ljava/lang/String; = "COM.sun.labs."

.field private static final DEBUG_LOOKAHEAD:Ljava/lang/String; = "DEBUG_LOOKAHEAD"

.field private static final DEBUG_PARSER:Ljava/lang/String; = "DEBUG_PARSER"

.field private static final DEBUG_TOKEN_MANAGER:Ljava/lang/String; = "DEBUG_TOKEN_MANAGER"

.field private static final ERROR_REPORTING:Ljava/lang/String; = "ERROR_REPORTING"

.field private static final FORCE_LA_CHECK:Ljava/lang/String; = "FORCE_LA_CHECK"

.field private static final IGNORE_CASE:Ljava/lang/String; = "IGNORE_CASE"

.field private static final JAVA_UNICODE_ESCAPE:Ljava/lang/String; = "JAVA_UNICODE_ESCAPE"

.field private static final JDK_VERSION:Ljava/lang/String; = "JDK_VERSION"

.field private static final KEEP_LINE_COLUMN:Ljava/lang/String; = "KEEP_LINE_COLUMN"

.field private static final LOOKAHEAD:Ljava/lang/String; = "LOOKAHEAD"

.field private static final OPTIMIZE_TOKEN_MANAGER:Ljava/lang/String; = "OPTIMIZE_TOKEN_MANAGER"

.field protected static final ORG_JAVACC_CLASS:Ljava/lang/String; = "parser.Main"

.field protected static final ORG_JJDOC_CLASS:Ljava/lang/String; = "jjdoc.JJDocMain"

.field protected static final ORG_JJTREE_CLASS:Ljava/lang/String; = "jjtree.Main"

.field protected static final ORG_PACKAGE_3_0:Ljava/lang/String; = "org.netbeans.javacc."

.field protected static final ORG_PACKAGE_3_1:Ljava/lang/String; = "org.javacc."

.field private static final OTHER_AMBIGUITY_CHECK:Ljava/lang/String; = "OTHER_AMBIGUITY_CHECK"

.field private static final SANITY_CHECK:Ljava/lang/String; = "SANITY_CHECK"

.field private static final STATIC:Ljava/lang/String; = "STATIC"

.field protected static final TASKDEF_TYPE_JAVACC:I = 0x1

.field protected static final TASKDEF_TYPE_JJDOC:I = 0x3

.field protected static final TASKDEF_TYPE_JJTREE:I = 0x2

.field private static final UNICODE_INPUT:Ljava/lang/String; = "UNICODE_INPUT"

.field private static final USER_CHAR_STREAM:Ljava/lang/String; = "USER_CHAR_STREAM"

.field private static final USER_TOKEN_MANAGER:Ljava/lang/String; = "USER_TOKEN_MANAGER"


# instance fields
.field private cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

.field private javaccHome:Ljava/io/File;

.field private maxMemory:Ljava/lang/String;

.field private final optionalAttrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private outputDirectory:Ljava/io/File;

.field private targetFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "bin/lib/javacc.jar"

    const-string v1, "javacc.jar"

    const-string v2, "JavaCC.zip"

    const-string v3, "bin/lib/JavaCC.zip"

    .line 80
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->ARCHIVE_LOCATIONS:[Ljava/lang/String;

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 88
    filled-new-array {v2, v0, v1, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->ARCHIVE_LOCATIONS_VS_MAJOR_VERSION:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 326
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 67
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->outputDirectory:Ljava/io/File;

    .line 71
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->targetFile:Ljava/io/File;

    .line 72
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->javaccHome:Ljava/io/File;

    .line 74
    new-instance v1, Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/CommandlineJava;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    .line 107
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->maxMemory:Ljava/lang/String;

    const-string v0, "java"

    .line 327
    invoke-static {v0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJreExecutable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/CommandlineJava;->setVm(Ljava/lang/String;)V

    return-void
.end method

.method protected static getArchiveFile(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 390
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->ARCHIVE_LOCATIONS:[Ljava/lang/String;

    .line 391
    invoke-static {p0}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->getArchiveLocationIndex(Ljava/io/File;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getArchiveLocationIndex(Ljava/io/File;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 511
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 515
    :goto_0
    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->ARCHIVE_LOCATIONS:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 516
    new-instance v2, Ljava/io/File;

    aget-object v1, v1, v0

    invoke-direct {v2, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 518
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 523
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Could not find a path to JavaCC.zip or javacc.jar from \'%s\'."

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 512
    :cond_2
    new-instance p0, Lorg/apache/tools/ant/BuildException;

    const-string v0, "JavaCC home must be a valid directory."

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static getMainClass(Ljava/io/File;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 405
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 406
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPathElement()Lorg/apache/tools/ant/types/Path$PathElement;

    move-result-object v1

    invoke-static {p0}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->getArchiveFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/apache/tools/ant/types/Path$PathElement;->setLocation(Ljava/io/File;)V

    .line 407
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->addJavaRuntime()V

    .line 408
    invoke-static {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->getMainClass(Lorg/apache/tools/ant/types/Path;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static getMainClass(Lorg/apache/tools/ant/types/Path;I)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, ".class"

    const-string v1, "unknown task type "

    const-string v2, "ignore"

    .line 428
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 426
    invoke-static {v2, v2, p0, v3}, Lorg/apache/tools/ant/AntClassLoader;->newAntClassLoader(Ljava/lang/ClassLoader;Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Z)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object p0

    :try_start_0
    const-string v4, "COM.sun.labs.javacc.Main"

    .line 431
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x2f

    const/16 v7, 0x2e

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/AntClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "jjdoc.JJDocMain"

    const-string v8, "jjtree.Main"

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v4, :cond_3

    :try_start_1
    const-string v0, "COM.sun.labs."

    if-eq p1, v3, :cond_2

    if-eq p1, v10, :cond_1

    if-eq p1, v9, :cond_0

    goto :goto_1

    :cond_0
    move-object v2, v5

    goto :goto_1

    :cond_1
    move-object v2, v8

    goto :goto_1

    :cond_2
    const-string v2, "javacc.Main"

    goto :goto_1

    :cond_3
    const-string v4, "org.javacc.parser.Main"

    .line 455
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/AntClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v0, "org.javacc."

    goto :goto_0

    :cond_4
    const-string v4, "org.netbeans.javacc.parser.Main"

    .line 461
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/AntClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v0, "org.netbeans.javacc."

    goto :goto_0

    :cond_5
    move-object v0, v2

    :goto_0
    if-eqz v4, :cond_7

    if-eq p1, v3, :cond_6

    if-eq p1, v10, :cond_1

    if-eq p1, v9, :cond_0

    goto :goto_1

    :cond_6
    const-string v2, "parser.Main"

    :cond_7
    :goto_1
    if-eqz v0, :cond_a

    if-eqz v2, :cond_9

    .line 496
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_8

    .line 497
    invoke-virtual {p0}, Lorg/apache/tools/ant/AntClassLoader;->close()V

    :cond_8
    return-object p1

    .line 494
    :cond_9
    :try_start_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_a
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "failed to load JavaCC"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_b

    .line 425
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/tools/ant/AntClassLoader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_2
    throw p1
.end method

.method protected static getMajorVersionNumber(Ljava/io/File;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 539
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->ARCHIVE_LOCATIONS_VS_MAJOR_VERSION:[I

    .line 540
    invoke-static {p0}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->getArchiveLocationIndex(Ljava/io/File;)I

    move-result p0

    aget p0, v0, p0

    return p0
.end method

.method private getOutputJavaFile(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 4

    .line 549
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 552
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 554
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const/16 v0, 0x2e

    .line 558
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const-string v2, ".java"

    if-eq v0, v1, :cond_1

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 562
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    if-eqz p1, :cond_2

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 570
    :cond_2
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public execute()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 342
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->targetFile:Ljava/io/File;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 347
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->outputDirectory:Ljava/io/File;

    if-nez v0, :cond_0

    .line 348
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->targetFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->outputDirectory:Ljava/io/File;

    goto :goto_0

    .line 349
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 352
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-OUTPUT_DIRECTORY:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->outputDirectory:Ljava/io/File;

    .line 353
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 352
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->outputDirectory:Ljava/io/File;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->targetFile:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->getOutputJavaFile(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->targetFile:Ljava/io/File;

    .line 358
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-gez v0, :cond_1

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Target is already built - skipping ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->targetFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->log(Ljava/lang/String;I)V

    return-void

    .line 363
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->targetFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/CommandlineJava;->createClasspath(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->javaccHome:Ljava/io/File;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->getArchiveFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 367
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPathElement()Lorg/apache/tools/ant/types/Path$PathElement;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/types/Path$PathElement;->setPath(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->addJavaRuntime()V

    .line 370
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->getMainClass(Lorg/apache/tools/ant/types/Path;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/CommandlineJava;->setClassname(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->maxMemory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/CommandlineJava;->setMaxmemory(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->createVmArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-Dinstall.root="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->javaccHome:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->getCommandline()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->runCommand(Lorg/apache/tools/ant/Task;[Ljava/lang/String;)V

    return-void

    .line 350
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Outputdir not a directory."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->targetFile:Ljava/io/File;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Invalid target: %s"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method synthetic lambda$execute$0$org-apache-tools-ant-taskdefs-optional-javacc-JavaCC(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 338
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 339
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setBuildparser(Z)V
    .locals 2

    .line 235
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    const-string v1, "BUILD_PARSER"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setBuildtokenmanager(Z)V
    .locals 2

    .line 243
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    const-string v1, "BUILD_TOKEN_MANAGER"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCachetokens(Z)V
    .locals 2

    .line 267
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    const-string v1, "CACHE_TOKENS"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setChoiceambiguitycheck(I)V
    .locals 2

    .line 122
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    const-string v1, "CHOICE_AMBIGUITY_CHECK"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCommontokenaction(Z)V
    .locals 2

    .line 211
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    const-string v1, "COMMON_TOKEN_ACTION"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDebuglookahead(Z)V
    .locals 2

    .line 154
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    const-string v1, "DEBUG_LOOKAHEAD"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDebugparser(Z)V
    .locals 2

    .line 146
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    const-string v1, "DEBUG_PARSER"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDebugtokenmanager(Z)V
    .locals 2

    .line 162
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    const-string v1, "DEBUG_TOKEN_MANAGER"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setErrorreporting(Z)V
    .locals 2

    .line 179
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    const-string v1, "ERROR_REPORTING"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setForcelacheck(Z)V
    .locals 2

    .line 259
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    const-string v1, "FORCE_LA_CHECK"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setIgnorecase(Z)V
    .locals 2

    .line 203
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    const-string v1, "IGNORE_CASE"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setJDKversion(Ljava/lang/String;)V
    .locals 2

    .line 284
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    const-string v1, "JDK_VERSION"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setJavacchome(Ljava/io/File;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->javaccHome:Ljava/io/File;

    return-void
.end method

.method public setJavaunicodeescape(Z)V
    .locals 2

    .line 187
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    const-string v1, "JAVA_UNICODE_ESCAPE"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setKeeplinecolumn(Z)V
    .locals 2

    .line 275
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    const-string v1, "KEEP_LINE_COLUMN"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLookahead(I)V
    .locals 2

    .line 114
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    const-string v1, "LOOKAHEAD"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMaxmemory(Ljava/lang/String;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->maxMemory:Ljava/lang/String;

    return-void
.end method

.method public setOptimizetokenmanager(Z)V
    .locals 2

    .line 170
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 171
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    const-string v1, "OPTIMIZE_TOKEN_MANAGER"

    .line 170
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setOtherambiguityCheck(I)V
    .locals 2

    .line 130
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    const-string v1, "OTHER_AMBIGUITY_CHECK"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setOutputdirectory(Ljava/io/File;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->outputDirectory:Ljava/io/File;

    return-void
.end method

.method public setSanitycheck(Z)V
    .locals 2

    .line 251
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    const-string v1, "SANITY_CHECK"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setStatic(Z)V
    .locals 2

    .line 138
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    const-string v1, "STATIC"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTarget(Ljava/io/File;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->targetFile:Ljava/io/File;

    return-void
.end method

.method public setUnicodeinput(Z)V
    .locals 2

    .line 195
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    const-string v1, "UNICODE_INPUT"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setUsercharstream(Z)V
    .locals 2

    .line 227
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    const-string v1, "USER_CHAR_STREAM"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setUsertokenmanager(Z)V
    .locals 2

    .line 219
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->optionalAttrs:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    const-string v1, "USER_TOKEN_MANAGER"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
