.class public Lorg/apache/tools/ant/Main;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Lorg/apache/tools/ant/launch/AntMain;


# static fields
.field public static final DEFAULT_BUILD_FILENAME:Ljava/lang/String; = "build.xml"

.field private static final LAUNCH_COMMANDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NOPROPERTIES:Lorg/apache/tools/ant/property/GetProperty;

.field private static antVersion:Ljava/lang/String;

.field private static shortAntVersion:Ljava/lang/String;


# instance fields
.field private allowInput:Z

.field private buildFile:Ljava/io/File;

.field private final definedProps:Ljava/util/Properties;

.field private emacsMode:Z

.field private err:Ljava/io/PrintStream;

.field private final extraArguments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private inputHandlerClassname:Ljava/lang/String;

.field private isLogFileUsed:Z

.field private keepGoingMode:Z

.field private final listeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private loggerClassname:Ljava/lang/String;

.field private msgOutputLevel:I

.field private out:Ljava/io/PrintStream;

.field private projectHelp:Z

.field private final propertyFiles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private proxy:Z

.field private readyToRun:Z

.field private silent:Z

.field private final targets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private threadPriority:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 69
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "-lib"

    const-string v2, "-cp"

    const-string v3, "-noclasspath"

    const-string v4, "--noclasspath"

    const-string v5, "-nouserlib"

    const-string v6, "-main"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/Main;->LAUNCH_COMMANDS:Ljava/util/Set;

    .line 159
    new-instance v0, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda6;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/Main;->NOPROPERTIES:Lorg/apache/tools/ant/property/GetProperty;

    const/4 v0, 0x0

    .line 1021
    sput-object v0, Lorg/apache/tools/ant/Main;->antVersion:Ljava/lang/String;

    .line 1026
    sput-object v0, Lorg/apache/tools/ant/Main;->shortAntVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 77
    iput v0, p0, Lorg/apache/tools/ant/Main;->msgOutputLevel:I

    .line 83
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/tools/ant/Main;->out:Ljava/io/PrintStream;

    .line 86
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/tools/ant/Main;->err:Ljava/io/PrintStream;

    .line 89
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/Main;->targets:Ljava/util/Vector;

    .line 92
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/Main;->definedProps:Ljava/util/Properties;

    .line 95
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/tools/ant/Main;->listeners:Ljava/util/Vector;

    .line 98
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/tools/ant/Main;->propertyFiles:Ljava/util/Vector;

    .line 101
    iput-boolean v1, p0, Lorg/apache/tools/ant/Main;->allowInput:Z

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lorg/apache/tools/ant/Main;->keepGoingMode:Z

    const/4 v1, 0x0

    .line 111
    iput-object v1, p0, Lorg/apache/tools/ant/Main;->loggerClassname:Ljava/lang/String;

    .line 117
    iput-object v1, p0, Lorg/apache/tools/ant/Main;->inputHandlerClassname:Ljava/lang/String;

    .line 122
    iput-boolean v0, p0, Lorg/apache/tools/ant/Main;->emacsMode:Z

    .line 127
    iput-boolean v0, p0, Lorg/apache/tools/ant/Main;->silent:Z

    .line 133
    iput-boolean v0, p0, Lorg/apache/tools/ant/Main;->readyToRun:Z

    .line 139
    iput-boolean v0, p0, Lorg/apache/tools/ant/Main;->projectHelp:Z

    .line 145
    iput-boolean v0, p0, Lorg/apache/tools/ant/Main;->isLogFileUsed:Z

    .line 150
    iput-object v1, p0, Lorg/apache/tools/ant/Main;->threadPriority:Ljava/lang/Integer;

    .line 155
    iput-boolean v0, p0, Lorg/apache/tools/ant/Main;->proxy:Z

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/Main;->extraArguments:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 77
    iput v0, p0, Lorg/apache/tools/ant/Main;->msgOutputLevel:I

    .line 83
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/tools/ant/Main;->out:Ljava/io/PrintStream;

    .line 86
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/tools/ant/Main;->err:Ljava/io/PrintStream;

    .line 89
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/Main;->targets:Ljava/util/Vector;

    .line 92
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/Main;->definedProps:Ljava/util/Properties;

    .line 95
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/tools/ant/Main;->listeners:Ljava/util/Vector;

    .line 98
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/tools/ant/Main;->propertyFiles:Ljava/util/Vector;

    .line 101
    iput-boolean v1, p0, Lorg/apache/tools/ant/Main;->allowInput:Z

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lorg/apache/tools/ant/Main;->keepGoingMode:Z

    const/4 v1, 0x0

    .line 111
    iput-object v1, p0, Lorg/apache/tools/ant/Main;->loggerClassname:Ljava/lang/String;

    .line 117
    iput-object v1, p0, Lorg/apache/tools/ant/Main;->inputHandlerClassname:Ljava/lang/String;

    .line 122
    iput-boolean v0, p0, Lorg/apache/tools/ant/Main;->emacsMode:Z

    .line 127
    iput-boolean v0, p0, Lorg/apache/tools/ant/Main;->silent:Z

    .line 133
    iput-boolean v0, p0, Lorg/apache/tools/ant/Main;->readyToRun:Z

    .line 139
    iput-boolean v0, p0, Lorg/apache/tools/ant/Main;->projectHelp:Z

    .line 145
    iput-boolean v0, p0, Lorg/apache/tools/ant/Main;->isLogFileUsed:Z

    .line 150
    iput-object v1, p0, Lorg/apache/tools/ant/Main;->threadPriority:Ljava/lang/Integer;

    .line 155
    iput-boolean v0, p0, Lorg/apache/tools/ant/Main;->proxy:Z

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/Main;->extraArguments:Ljava/util/Map;

    .line 297
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/Main;->processArgs([Ljava/lang/String;)V

    return-void
.end method

.method private addInputHandler(Lorg/apache/tools/ant/Project;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 918
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->inputHandlerClassname:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 919
    new-instance v0, Lorg/apache/tools/ant/input/DefaultInputHandler;

    invoke-direct {v0}, Lorg/apache/tools/ant/input/DefaultInputHandler;-><init>()V

    goto :goto_0

    .line 921
    :cond_0
    const-class v1, Lorg/apache/tools/ant/Main;

    .line 922
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Lorg/apache/tools/ant/input/InputHandler;

    .line 921
    invoke-static {v0, v1, v2}, Lorg/apache/tools/ant/util/ClasspathUtils;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/input/InputHandler;

    .line 924
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->setProjectReference(Ljava/lang/Object;)V

    .line 926
    :goto_0
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->setInputHandler(Lorg/apache/tools/ant/input/InputHandler;)V

    return-void
.end method

.method private createLogger()Lorg/apache/tools/ant/BuildLogger;
    .locals 4

    .line 937
    iget-boolean v0, p0, Lorg/apache/tools/ant/Main;->silent:Z

    if-eqz v0, :cond_0

    .line 938
    new-instance v0, Lorg/apache/tools/ant/listener/SilentLogger;

    invoke-direct {v0}, Lorg/apache/tools/ant/listener/SilentLogger;-><init>()V

    const/4 v1, 0x1

    .line 939
    iput v1, p0, Lorg/apache/tools/ant/Main;->msgOutputLevel:I

    .line 940
    iput-boolean v1, p0, Lorg/apache/tools/ant/Main;->emacsMode:Z

    goto :goto_0

    .line 941
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->loggerClassname:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 943
    :try_start_0
    const-class v1, Lorg/apache/tools/ant/Main;

    .line 944
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Lorg/apache/tools/ant/BuildLogger;

    .line 943
    invoke-static {v0, v1, v2}, Lorg/apache/tools/ant/util/ClasspathUtils;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/BuildLogger;
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 947
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The specified logger class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/Main;->loggerClassname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " could not be used because "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 949
    invoke-virtual {v0}, Lorg/apache/tools/ant/BuildException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 947
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 950
    throw v0

    .line 953
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/DefaultLogger;

    invoke-direct {v0}, Lorg/apache/tools/ant/DefaultLogger;-><init>()V

    .line 956
    :goto_0
    iget v1, p0, Lorg/apache/tools/ant/Main;->msgOutputLevel:I

    invoke-interface {v0, v1}, Lorg/apache/tools/ant/BuildLogger;->setMessageOutputLevel(I)V

    .line 957
    iget-object v1, p0, Lorg/apache/tools/ant/Main;->out:Ljava/io/PrintStream;

    invoke-interface {v0, v1}, Lorg/apache/tools/ant/BuildLogger;->setOutputPrintStream(Ljava/io/PrintStream;)V

    .line 958
    iget-object v1, p0, Lorg/apache/tools/ant/Main;->err:Ljava/io/PrintStream;

    invoke-interface {v0, v1}, Lorg/apache/tools/ant/BuildLogger;->setErrorPrintStream(Ljava/io/PrintStream;)V

    .line 959
    iget-boolean v1, p0, Lorg/apache/tools/ant/Main;->emacsMode:Z

    invoke-interface {v0, v1}, Lorg/apache/tools/ant/BuildLogger;->setEmacsMode(Z)V

    return-object v0
.end method

.method private findBuildFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 687
    iget v0, p0, Lorg/apache/tools/ant/Main;->msgOutputLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 688
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Searching for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 691
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 692
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 695
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 697
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/Main;->getParentFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 706
    :cond_1
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private static findTargetPosition(Ljava/util/Vector;Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 1193
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    if-ge v1, v0, :cond_1

    if-ne v2, v0, :cond_1

    .line 1196
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_0

    move v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static declared-synchronized getAntVersion()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "Apache Ant(TM) version "

    const-string v1, "Could not load the version information:"

    const-class v2, Lorg/apache/tools/ant/Main;

    monitor-enter v2

    .line 1039
    :try_start_0
    sget-object v3, Lorg/apache/tools/ant/Main;->antVersion:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 1041
    :try_start_1
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 1042
    const-class v4, Lorg/apache/tools/ant/Main;

    const-string v5, "/org/apache/tools/ant/version.txt"

    .line 1043
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 1044
    invoke-virtual {v3, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1045
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    const-string v4, "VERSION"

    .line 1046
    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/apache/tools/ant/Main;->shortAntVersion:Ljava/lang/String;

    .line 1047
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lorg/apache/tools/ant/Main;->shortAntVersion:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " compiled on "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "DATE"

    .line 1050
    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/Main;->antVersion:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1055
    :catch_0
    :try_start_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Could not load the version information."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    .line 1052
    new-instance v3, Lorg/apache/tools/ant/BuildException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1053
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1058
    :cond_0
    :goto_0
    sget-object v0, Lorg/apache/tools/ant/Main;->antVersion:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private getParentFile(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 662
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 664
    iget v0, p0, Lorg/apache/tools/ant/Main;->msgOutputLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 665
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Searching in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public static getShortAntVersion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1073
    sget-object v0, Lorg/apache/tools/ant/Main;->shortAntVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1074
    invoke-static {}, Lorg/apache/tools/ant/Main;->getAntVersion()Ljava/lang/String;

    .line 1076
    :cond_0
    sget-object v0, Lorg/apache/tools/ant/Main;->shortAntVersion:Ljava/lang/String;

    return-object v0
.end method

.method private handleArgBuildFile([Ljava/lang/String;I)I
    .locals 3

    .line 514
    :try_start_0
    new-instance v0, Ljava/io/File;

    add-int/lit8 p2, p2, 0x1

    aget-object p1, p1, p2

    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x2f

    .line 515
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    .line 517
    :catch_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "You must specify a buildfile when using the -buildfile argument"

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private handleArgDefine([Ljava/lang/String;I)I
    .locals 3

    .line 548
    aget-object v0, p1, p2

    const/4 v1, 0x2

    .line 549
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3d

    .line 551
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 p1, v1, 0x1

    .line 553
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 554
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 555
    :cond_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge p2, v1, :cond_1

    add-int/lit8 p2, p2, 0x1

    .line 556
    aget-object p1, p1, p2

    .line 561
    :goto_0
    iget-object v1, p0, Lorg/apache/tools/ant/Main;->definedProps:Ljava/util/Properties;

    invoke-virtual {v1, v0, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p2

    .line 558
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Missing value for property "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private handleArgInputHandler([Ljava/lang/String;I)I
    .locals 1

    .line 582
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->inputHandlerClassname:Ljava/lang/String;

    if-nez v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 587
    :try_start_0
    aget-object p1, p1, p2

    iput-object p1, p0, Lorg/apache/tools/ant/Main;->inputHandlerClassname:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    .line 589
    :catch_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "You must specify a classname when using the -inputhandler argument"

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 583
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "Only one input handler class may be specified."

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private handleArgListener([Ljava/lang/String;I)I
    .locals 1

    .line 526
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->listeners:Ljava/util/Vector;

    add-int/lit8 p2, p2, 0x1

    aget-object p1, p1, p2

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    .line 531
    :catch_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "You must specify a classname when using the -listener argument"

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private handleArgLogger([Ljava/lang/String;I)I
    .locals 1

    .line 567
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->loggerClassname:Ljava/lang/String;

    if-nez v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 572
    :try_start_0
    aget-object p1, p1, p2

    iput-object p1, p0, Lorg/apache/tools/ant/Main;->loggerClassname:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    .line 574
    :catch_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "You must specify a classname when using the -logger argument"

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 568
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "Only one logger class may be specified."

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private handleArgNice([Ljava/lang/String;I)I
    .locals 3

    const/4 v0, 0x1

    add-int/2addr p2, v0

    .line 611
    :try_start_0
    aget-object v1, p1, p2

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/Main;->threadPriority:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lorg/apache/tools/ant/Main;->threadPriority:Ljava/lang/Integer;

    .line 622
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0xa

    if-gt p1, v0, :cond_0

    return p2

    .line 623
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "Niceness value is out of the range 1-10"

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 617
    :catch_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized niceness value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p1, p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :catch_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "You must supply a niceness value (1-10) after the -nice option"

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private handleArgPropertyFile([Ljava/lang/String;I)I
    .locals 1

    .line 599
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->propertyFiles:Ljava/util/Vector;

    add-int/lit8 p2, p2, 0x1

    aget-object p1, p1, p2

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    .line 603
    :catch_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "You must specify a property filename when using the -propertyfile argument"

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private handleLogfile()V
    .locals 1

    .line 260
    iget-boolean v0, p0, Lorg/apache/tools/ant/Main;->isLogFileUsed:Z

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 262
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->err:Ljava/io/PrintStream;

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$processArgs$2(Ljava/lang/Class;)Ljava/util/List;
    .locals 0

    .line 404
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$removeDuplicateTargets$6(Ljava/util/Map;Ljava/lang/String;Lorg/apache/tools/ant/Target;)V
    .locals 1

    .line 1103
    invoke-virtual {p2}, Lorg/apache/tools/ant/Target;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/Target;

    if-eqz v0, :cond_0

    .line 1108
    invoke-virtual {v0}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le v0, p1, :cond_1

    .line 1109
    :cond_0
    invoke-virtual {p2}, Lorg/apache/tools/ant/Target;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method static synthetic lambda$removeDuplicateTargets$7(Lorg/apache/tools/ant/Target;)Lorg/apache/tools/ant/Target;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$removeDuplicateTargets$8(Lorg/apache/tools/ant/Target;Lorg/apache/tools/ant/Target;)Lorg/apache/tools/ant/Target;
    .locals 0

    return-object p1
.end method

.method static synthetic lambda$setProperties$5(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 866
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/Project;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private loadPropertyFiles()V
    .locals 7

    .line 635
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->propertyFiles:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 636
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    new-array v4, v3, [Ljava/lang/String;

    .line 637
    invoke-static {v1, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v4, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 639
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v4

    if-eqz v3, :cond_0

    .line 637
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v3

    .line 640
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not load property file "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 641
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 640
    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 645
    :cond_1
    :goto_2
    invoke-virtual {v2}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/Main;)V

    .line 646
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v2}, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda3;-><init>(Lorg/apache/tools/ant/Main;Ljava/util/Properties;)V

    .line 647
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 274
    invoke-static {p0, v0, v0}, Lorg/apache/tools/ant/Main;->start([Ljava/lang/String;Ljava/util/Properties;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private static printDescription(Lorg/apache/tools/ant/Project;)V
    .locals 1

    .line 1087
    invoke-virtual {p0}, Lorg/apache/tools/ant/Project;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1088
    invoke-virtual {p0}, Lorg/apache/tools/ant/Project;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static printMessage(Ljava/lang/Throwable;)V
    .locals 1

    .line 169
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 171
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static printTargets(Lorg/apache/tools/ant/Project;Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;Ljava/lang/String;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/Project;",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Vector<",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1228
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    .line 1230
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1231
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-gt v2, p5, :cond_0

    .line 1232
    invoke-virtual {v1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1234
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1235
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1236
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p4

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, p4, :cond_3

    const-string v5, " "

    .line 1238
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    invoke-virtual {p1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .line 1242
    invoke-virtual {p1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, p5, v5

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v3, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1241
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    invoke-virtual {p2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    invoke-virtual {p3}, Ljava/util/Vector;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Enumeration;

    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1247
    invoke-virtual {p3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Enumeration;

    invoke-static {v5}, Lorg/apache/tools/ant/util/StreamUtils;->enumerationAsStream(Ljava/util/Enumeration;)Ljava/util/stream/Stream;

    move-result-object v5

    const-string v6, ", "

    const-string v7, "   depends on: "

    .line 1248
    invoke-static {v6, v7, v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1247
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1251
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    return-void
.end method

.method private static printTargets(Lorg/apache/tools/ant/Project;ZZ)V
    .locals 14

    .line 1129
    invoke-virtual {p0}, Lorg/apache/tools/ant/Project;->getTargets()Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/Main;->removeDuplicateTargets(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 1132
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 1133
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 1134
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 1135
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 1136
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 1138
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v6, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/Target;

    .line 1139
    invoke-virtual {v1}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1140
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 1143
    :cond_1
    invoke-virtual {v1}, Lorg/apache/tools/ant/Target;->getDescription()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 1146
    invoke-static {v9, v2}, Lorg/apache/tools/ant/Main;->findTargetPosition(Ljava/util/Vector;Ljava/lang/String;)I

    move-result v5

    .line 1147
    invoke-virtual {v9, v2, v5}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    if-eqz p2, :cond_0

    .line 1149
    invoke-virtual {v1}, Lorg/apache/tools/ant/Target;->getDependencies()Ljava/util/Enumeration;

    move-result-object v1

    invoke-virtual {v11, v1, v5}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_0

    .line 1152
    :cond_2
    invoke-static {v7, v2}, Lorg/apache/tools/ant/Main;->findTargetPosition(Ljava/util/Vector;Ljava/lang/String;)I

    move-result v8

    .line 1153
    invoke-virtual {v7, v2, v8}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 1154
    invoke-virtual {v3, v5, v8}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 1155
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_3

    .line 1156
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    :cond_3
    if-eqz p2, :cond_0

    .line 1159
    invoke-virtual {v1}, Lorg/apache/tools/ant/Target;->getDependencies()Ljava/util/Enumeration;

    move-result-object v1

    invoke-virtual {v4, v1, v8}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_4
    const-string v5, "Main targets:"

    move-object v1, p0

    move-object v2, v7

    .line 1164
    invoke-static/range {v1 .. v6}, Lorg/apache/tools/ant/Main;->printTargets(Lorg/apache/tools/ant/Project;Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;Ljava/lang/String;I)V

    .line 1168
    invoke-virtual {v7}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    move v0, p1

    :goto_1
    if-eqz v0, :cond_6

    const/4 v10, 0x0

    const-string v12, "Other targets:"

    const/4 v13, 0x0

    move-object v8, p0

    .line 1172
    invoke-static/range {v8 .. v13}, Lorg/apache/tools/ant/Main;->printTargets(Lorg/apache/tools/ant/Project;Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;Ljava/lang/String;I)V

    .line 1175
    :cond_6
    invoke-virtual {p0}, Lorg/apache/tools/ant/Project;->getDefaultTarget()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1176
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1178
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Default target: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private static printUsage()V
    .locals 3

    .line 968
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ant [options] [target [target2 [target3] ...]]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 969
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Options: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 970
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -help, -h              print this message and exit"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 971
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -projecthelp, -p       print project help information and exit"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 972
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -version               print the version information and exit"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 973
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -diagnostics           print information that might be helpful to"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 974
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                         diagnose or report problems and exit"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 975
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -quiet, -q             be extra quiet"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 976
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -silent, -S            print nothing but task outputs and build failures"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 977
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -verbose, -v           be extra verbose"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 978
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -debug, -d             print debugging information"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 979
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -emacs, -e             produce logging information without adornments"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 980
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -lib <path>            specifies a path to search for jars and classes"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 981
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -logfile <file>        use given file for log"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 982
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "    -l     <file>                \'\'"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 983
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -logger <classname>    the class which is to perform logging"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 984
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -listener <classname>  add an instance of class as a project listener"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 985
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -noinput               do not allow interactive input"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 986
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -buildfile <file>      use given buildfile"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 987
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "    -file    <file>              \'\'"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 988
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "    -f       <file>              \'\'"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 989
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -D<property>=<value>   use value for given property"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 990
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -keep-going, -k        execute all targets that do not depend"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 991
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                         on failed target(s)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 992
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -propertyfile <name>   load all properties from file with -D"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 993
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                         properties taking precedence"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 994
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -inputhandler <class>  the class which will handle input requests"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 995
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -find <file>           (s)earch for buildfile towards the root of"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 996
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "    -s  <file>           the filesystem and use it"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 997
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -nice  number          A niceness value for the main thread:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 998
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                         1 (lowest) to 10 (highest); 5 is the default"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 999
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -nouserlib             Run ant without using the jar files from"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1000
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "                         ${user.home}/.ant/lib"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1001
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -noclasspath           Run ant without using CLASSPATH"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1002
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -autoproxy             Java1.5+: use the OS proxy settings"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1003
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -main <class>          override Ant\'s normal entry point"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1004
    invoke-static {}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->getInstance()Lorg/apache/tools/ant/ArgumentProcessorRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->getProcessors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/ArgumentProcessor;

    .line 1005
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v1, v2}, Lorg/apache/tools/ant/ArgumentProcessor;->printUsage(Ljava/io/PrintStream;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static printVersion(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1015
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lorg/apache/tools/ant/Main;->getAntVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private processArgs([Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 320
    invoke-static {}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->getInstance()Lorg/apache/tools/ant/ArgumentProcessorRegistry;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    move v6, v4

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    .line 322
    :goto_0
    array-length v11, v1

    const/4 v12, 0x3

    const/4 v13, 0x1

    if-ge v6, v11, :cond_26

    .line 323
    aget-object v11, v1, v6

    const-string v14, "-help"

    .line 325
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_25

    const-string v14, "-h"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    goto/16 :goto_f

    :cond_0
    const-string v14, "-version"

    .line 327
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    move v11, v4

    move v7, v13

    goto/16 :goto_10

    :cond_1
    const-string v14, "-diagnostics"

    .line 329
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    move v11, v4

    move v9, v13

    goto/16 :goto_10

    :cond_2
    const-string v14, "-quiet"

    .line 331
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_24

    const-string v14, "-q"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    goto/16 :goto_e

    :cond_3
    const-string v14, "-verbose"

    .line 333
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_23

    const-string v14, "-v"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    goto/16 :goto_d

    :cond_4
    const-string v12, "-debug"

    .line 335
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_22

    const-string v12, "-d"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    goto/16 :goto_c

    :cond_5
    const-string v12, "-silent"

    .line 337
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_21

    const-string v12, "-S"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    goto/16 :goto_b

    :cond_6
    const-string v12, "-noinput"

    .line 339
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 340
    iput-boolean v4, v0, Lorg/apache/tools/ant/Main;->allowInput:Z

    goto :goto_1

    :cond_7
    const-string v12, "-logfile"

    .line 341
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_20

    const-string v12, "-l"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    goto/16 :goto_a

    :cond_8
    const-string v12, "-buildfile"

    .line 360
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1f

    const-string v12, "-file"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1f

    const-string v12, "-f"

    .line 361
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    goto/16 :goto_8

    :cond_9
    const-string v12, "-listener"

    .line 363
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 364
    invoke-direct {v0, v1, v6}, Lorg/apache/tools/ant/Main;->handleArgListener([Ljava/lang/String;I)I

    move-result v6

    :goto_1
    move v11, v4

    goto/16 :goto_10

    :cond_a
    const-string v12, "-D"

    .line 365
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 366
    invoke-direct {v0, v1, v6}, Lorg/apache/tools/ant/Main;->handleArgDefine([Ljava/lang/String;I)I

    move-result v6

    goto :goto_1

    :cond_b
    const-string v12, "-logger"

    .line 367
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 368
    invoke-direct {v0, v1, v6}, Lorg/apache/tools/ant/Main;->handleArgLogger([Ljava/lang/String;I)I

    move-result v6

    goto :goto_1

    :cond_c
    const-string v12, "-inputhandler"

    .line 369
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 370
    invoke-direct {v0, v1, v6}, Lorg/apache/tools/ant/Main;->handleArgInputHandler([Ljava/lang/String;I)I

    move-result v6

    goto :goto_1

    :cond_d
    const-string v12, "-emacs"

    .line 371
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1e

    const-string v12, "-e"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    goto/16 :goto_7

    :cond_e
    const-string v12, "-projecthelp"

    .line 373
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    const-string v12, "-p"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    goto/16 :goto_6

    :cond_f
    const-string v12, "-find"

    .line 376
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1b

    const-string v12, "-s"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    goto/16 :goto_5

    :cond_10
    const-string v12, "-propertyfile"

    .line 382
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 383
    invoke-direct {v0, v1, v6}, Lorg/apache/tools/ant/Main;->handleArgPropertyFile([Ljava/lang/String;I)I

    move-result v6

    goto :goto_1

    :cond_11
    const-string v12, "-k"

    .line 384
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1a

    const-string v12, "-keep-going"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    goto/16 :goto_4

    :cond_12
    const-string v12, "-nice"

    .line 386
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 387
    invoke-direct {v0, v1, v6}, Lorg/apache/tools/ant/Main;->handleArgNice([Ljava/lang/String;I)I

    move-result v6

    goto/16 :goto_1

    .line 388
    :cond_13
    sget-object v12, Lorg/apache/tools/ant/Main;->LAUNCH_COMMANDS:Ljava/util/Set;

    invoke-interface {v12, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_19

    const-string v12, "-autoproxy"

    .line 397
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 398
    iput-boolean v13, v0, Lorg/apache/tools/ant/Main;->proxy:Z

    goto/16 :goto_1

    :cond_14
    const-string v12, "-"

    .line 399
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 401
    invoke-virtual {v2}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->getProcessors()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/tools/ant/ArgumentProcessor;

    .line 402
    invoke-interface {v14, v1, v6}, Lorg/apache/tools/ant/ArgumentProcessor;->readArguments([Ljava/lang/String;I)I

    move-result v15

    const/4 v4, -0x1

    if-eq v15, v4, :cond_15

    .line 404
    iget-object v4, v0, Lorg/apache/tools/ant/Main;->extraArguments:Ljava/util/Map;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    new-instance v14, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda5;

    invoke-direct {v14}, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v4, v12, v14}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 405
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    array-length v14, v1

    invoke-interface {v12, v15, v14}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v4, v13

    goto :goto_3

    :cond_15
    const/4 v4, 0x0

    goto :goto_2

    :cond_16
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_17

    goto :goto_9

    .line 412
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown argument: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 413
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 414
    invoke-static {}, Lorg/apache/tools/ant/Main;->printUsage()V

    .line 415
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, ""

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 419
    :cond_18
    iget-object v4, v0, Lorg/apache/tools/ant/Main;->targets:Ljava/util/Vector;

    invoke-virtual {v4, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_9

    .line 392
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ant\'s Main method is being handed an option "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " that is only for the launcher class.\nThis can be caused by a version mismatch between the ant script/.bat file and Ant itself."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 396
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 385
    :cond_1a
    :goto_4
    iput-boolean v13, v0, Lorg/apache/tools/ant/Main;->keepGoingMode:Z

    goto :goto_9

    .line 379
    :cond_1b
    :goto_5
    array-length v4, v1

    sub-int/2addr v4, v13

    if-ge v6, v4, :cond_1c

    add-int/lit8 v6, v6, 0x1

    .line 380
    aget-object v3, v1, v6

    :cond_1c
    move v10, v13

    goto :goto_9

    .line 375
    :cond_1d
    :goto_6
    iput-boolean v13, v0, Lorg/apache/tools/ant/Main;->projectHelp:Z

    goto :goto_9

    .line 372
    :cond_1e
    :goto_7
    iput-boolean v13, v0, Lorg/apache/tools/ant/Main;->emacsMode:Z

    goto :goto_9

    .line 362
    :cond_1f
    :goto_8
    invoke-direct {v0, v1, v6}, Lorg/apache/tools/ant/Main;->handleArgBuildFile([Ljava/lang/String;I)I

    move-result v6

    :goto_9
    const/4 v11, 0x0

    goto :goto_10

    .line 343
    :cond_20
    :goto_a
    :try_start_0
    new-instance v4, Ljava/io/File;

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v1, v6

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 348
    new-instance v5, Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    const/4 v11, 0x0

    new-array v12, v11, [Ljava/nio/file/OpenOption;

    invoke-static {v4, v12}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 349
    iput-boolean v13, v0, Lorg/apache/tools/ant/Main;->isLogFileUsed:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_10

    .line 358
    :catch_0
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "You must specify a log file when using the -log argument"

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 354
    :catch_1
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Cannot write on the specified log file. Make sure the path exists and you have write permissions."

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    :goto_b
    move v11, v4

    .line 338
    iput-boolean v13, v0, Lorg/apache/tools/ant/Main;->silent:Z

    goto :goto_10

    :cond_22
    :goto_c
    move v11, v4

    const/4 v4, 0x4

    .line 336
    iput v4, v0, Lorg/apache/tools/ant/Main;->msgOutputLevel:I

    goto :goto_10

    :cond_23
    :goto_d
    move v11, v4

    .line 334
    iput v12, v0, Lorg/apache/tools/ant/Main;->msgOutputLevel:I

    goto :goto_10

    :cond_24
    :goto_e
    move v11, v4

    .line 332
    iput v13, v0, Lorg/apache/tools/ant/Main;->msgOutputLevel:I

    goto :goto_10

    :cond_25
    :goto_f
    move v11, v4

    move v8, v13

    :goto_10
    add-int/2addr v6, v13

    move v4, v11

    goto/16 :goto_0

    .line 423
    :cond_26
    iget v1, v0, Lorg/apache/tools/ant/Main;->msgOutputLevel:I

    if-ge v1, v12, :cond_27

    if-eqz v7, :cond_28

    .line 424
    :cond_27
    invoke-static {v1}, Lorg/apache/tools/ant/Main;->printVersion(I)V

    :cond_28
    if-nez v8, :cond_38

    if-nez v7, :cond_38

    if-eqz v9, :cond_29

    goto/16 :goto_14

    .line 438
    :cond_29
    iget-object v1, v0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    if-nez v1, :cond_32

    if-eqz v10, :cond_2f

    const-string v1, "user.dir"

    if-eqz v3, :cond_2a

    .line 442
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lorg/apache/tools/ant/Main;->findBuildFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    goto :goto_11

    .line 445
    :cond_2a
    invoke-static {}, Lorg/apache/tools/ant/ProjectHelperRepository;->getInstance()Lorg/apache/tools/ant/ProjectHelperRepository;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/ProjectHelperRepository;->getHelpers()Ljava/util/Iterator;

    move-result-object v2

    .line 447
    :cond_2b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/ProjectHelper;

    .line 448
    invoke-virtual {v3}, Lorg/apache/tools/ant/ProjectHelper;->getDefaultBuildFile()Ljava/lang/String;

    move-result-object v3

    .line 449
    iget v4, v0, Lorg/apache/tools/ant/Main;->msgOutputLevel:I

    if-lt v4, v12, :cond_2c

    .line 450
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Searching the default build file: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 452
    :cond_2c
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Lorg/apache/tools/ant/Main;->findBuildFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    iput-object v3, v0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    if-nez v3, :cond_2d

    .line 453
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 455
    :cond_2d
    :goto_11
    iget-object v1, v0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    if-eqz v1, :cond_2e

    goto :goto_12

    .line 456
    :cond_2e
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Could not locate a build file!"

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 460
    :cond_2f
    invoke-static {}, Lorg/apache/tools/ant/ProjectHelperRepository;->getInstance()Lorg/apache/tools/ant/ProjectHelperRepository;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/ProjectHelperRepository;->getHelpers()Ljava/util/Iterator;

    move-result-object v1

    .line 462
    :cond_30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/ProjectHelper;

    .line 463
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Lorg/apache/tools/ant/ProjectHelper;->getDefaultBuildFile()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    .line 464
    iget v2, v0, Lorg/apache/tools/ant/Main;->msgOutputLevel:I

    if-lt v2, v12, :cond_31

    .line 465
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Trying the default build file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 467
    :cond_31
    iget-object v2, v0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_30

    .line 472
    :cond_32
    :goto_12
    iget-object v1, v0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "Build failed"

    const-string v3, "Buildfile: "

    if-eqz v1, :cond_37

    .line 477
    iget-object v1, v0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 478
    new-instance v1, Ljava/io/File;

    iget-object v4, v0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    const-string v6, "build.xml"

    invoke-direct {v1, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 479
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 480
    iput-object v1, v0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    goto :goto_13

    .line 482
    :cond_33
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "What? Buildfile: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is a dir!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 483
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 489
    :cond_34
    :goto_13
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/util/FileUtils;->normalize(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    .line 492
    invoke-direct/range {p0 .. p0}, Lorg/apache/tools/ant/Main;->loadPropertyFiles()V

    .line 494
    iget v1, v0, Lorg/apache/tools/ant/Main;->msgOutputLevel:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_35

    .line 495
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_35
    if-eqz v5, :cond_36

    .line 499
    iput-object v5, v0, Lorg/apache/tools/ant/Main;->out:Ljava/io/PrintStream;

    .line 500
    iput-object v5, v0, Lorg/apache/tools/ant/Main;->err:Ljava/io/PrintStream;

    .line 501
    invoke-static {v5}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 502
    iget-object v1, v0, Lorg/apache/tools/ant/Main;->err:Ljava/io/PrintStream;

    invoke-static {v1}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 504
    :cond_36
    iput-boolean v13, v0, Lorg/apache/tools/ant/Main;->readyToRun:Z

    return-void

    .line 473
    :cond_37
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 474
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    :goto_14
    if-eqz v8, :cond_39

    .line 429
    invoke-static {}, Lorg/apache/tools/ant/Main;->printUsage()V

    :cond_39
    if-eqz v9, :cond_3a

    .line 432
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v2, v0, Lorg/apache/tools/ant/Main;->msgOutputLevel:I

    invoke-static {v1, v2}, Lorg/apache/tools/ant/Diagnostics;->doReport(Ljava/io/PrintStream;I)V

    :cond_3a
    return-void
.end method

.method private static removeDuplicateTargets(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/Target;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/Target;",
            ">;"
        }
    .end annotation

    .line 1101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1102
    new-instance v1, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda7;-><init>(Ljava/util/Map;)V

    invoke-interface {p0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1112
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda8;-><init>()V

    new-instance v1, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda9;-><init>()V

    new-instance v2, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda10;-><init>()V

    .line 1113
    invoke-static {v0, v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method private runBuild(Ljava/lang/ClassLoader;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "Caught an exception while logging the end of the build.  Exception was:"

    .line 725
    iget-boolean v1, p0, Lorg/apache/tools/ant/Main;->readyToRun:Z

    if-nez v1, :cond_0

    return-void

    .line 729
    :cond_0
    invoke-static {}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->getInstance()Lorg/apache/tools/ant/ArgumentProcessorRegistry;

    move-result-object v1

    .line 731
    invoke-virtual {v1}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->getProcessors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/ArgumentProcessor;

    .line 732
    iget-object v4, p0, Lorg/apache/tools/ant/Main;->extraArguments:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_1

    .line 734
    invoke-interface {v3, v4}, Lorg/apache/tools/ant/ArgumentProcessor;->handleArg(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 740
    :cond_2
    new-instance v2, Lorg/apache/tools/ant/Project;

    invoke-direct {v2}, Lorg/apache/tools/ant/Project;-><init>()V

    .line 741
    invoke-virtual {v2, p1}, Lorg/apache/tools/ant/Project;->setCoreLoader(Ljava/lang/ClassLoader;)V

    const/4 p1, 0x0

    const/4 v3, 0x0

    .line 746
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/Main;->addBuildListeners(Lorg/apache/tools/ant/Project;)V

    .line 747
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/Main;->addInputHandler(Lorg/apache/tools/ant/Project;)V

    .line 749
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 750
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 751
    sget-object v6, Ljava/lang/System;->in:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 753
    :try_start_1
    iget-boolean v7, p0, Lorg/apache/tools/ant/Main;->allowInput:Z

    if-eqz v7, :cond_3

    .line 754
    sget-object v7, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v2, v7}, Lorg/apache/tools/ant/Project;->setDefaultInputStream(Ljava/io/InputStream;)V

    .line 756
    :cond_3
    new-instance v7, Lorg/apache/tools/ant/DemuxInputStream;

    invoke-direct {v7, v2}, Lorg/apache/tools/ant/DemuxInputStream;-><init>(Lorg/apache/tools/ant/Project;)V

    invoke-static {v7}, Ljava/lang/System;->setIn(Ljava/io/InputStream;)V

    .line 757
    new-instance v7, Ljava/io/PrintStream;

    new-instance v8, Lorg/apache/tools/ant/DemuxOutputStream;

    invoke-direct {v8, v2, p1}, Lorg/apache/tools/ant/DemuxOutputStream;-><init>(Lorg/apache/tools/ant/Project;Z)V

    invoke-direct {v7, v8}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v7}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 758
    new-instance v7, Ljava/io/PrintStream;

    new-instance v8, Lorg/apache/tools/ant/DemuxOutputStream;

    const/4 v9, 0x1

    invoke-direct {v8, v2, v9}, Lorg/apache/tools/ant/DemuxOutputStream;-><init>(Lorg/apache/tools/ant/Project;Z)V

    invoke-direct {v7, v8}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v7}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 761
    iget-boolean v7, p0, Lorg/apache/tools/ant/Main;->projectHelp:Z

    if-nez v7, :cond_4

    .line 762
    invoke-virtual {v2}, Lorg/apache/tools/ant/Project;->fireBuildStarted()V

    .line 766
    :cond_4
    iget-object v7, p0, Lorg/apache/tools/ant/Main;->threadPriority:Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v8, 0x3

    if-eqz v7, :cond_5

    .line 768
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Setting Ant\'s thread priority to "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, p0, Lorg/apache/tools/ant/Main;->threadPriority:Ljava/lang/Integer;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v8}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 770
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    iget-object v10, p0, Lorg/apache/tools/ant/Main;->threadPriority:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/Thread;->setPriority(I)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    :catch_0
    :try_start_3
    const-string v7, "A security manager refused to set the -nice value"

    .line 773
    invoke-virtual {v2, v7}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;)V

    .line 777
    :cond_5
    :goto_0
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/Main;->setProperties(Lorg/apache/tools/ant/Project;)V

    .line 779
    iget-boolean v7, p0, Lorg/apache/tools/ant/Main;->keepGoingMode:Z

    invoke-virtual {v2, v7}, Lorg/apache/tools/ant/Project;->setKeepGoingMode(Z)V

    .line 780
    iget-boolean v7, p0, Lorg/apache/tools/ant/Main;->proxy:Z

    if-eqz v7, :cond_6

    .line 782
    new-instance v7, Lorg/apache/tools/ant/util/ProxySetup;

    invoke-direct {v7, v2}, Lorg/apache/tools/ant/util/ProxySetup;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 783
    invoke-virtual {v7}, Lorg/apache/tools/ant/util/ProxySetup;->enableProxies()V

    .line 786
    :cond_6
    invoke-virtual {v1}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->getProcessors()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/tools/ant/ArgumentProcessor;

    .line 787
    iget-object v11, p0, Lorg/apache/tools/ant/Main;->extraArguments:Ljava/util/Map;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    if-eqz v11, :cond_7

    .line 789
    invoke-interface {v10, v2, v11}, Lorg/apache/tools/ant/ArgumentProcessor;->prepareConfigure(Lorg/apache/tools/ant/Project;Ljava/util/List;)V

    goto :goto_1

    .line 793
    :cond_8
    iget-object v7, p0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    invoke-static {v2, v7}, Lorg/apache/tools/ant/ProjectHelper;->configureProject(Lorg/apache/tools/ant/Project;Ljava/io/File;)V

    .line 795
    invoke-virtual {v1}, Lorg/apache/tools/ant/ArgumentProcessorRegistry;->getProcessors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/tools/ant/ArgumentProcessor;

    .line 796
    iget-object v10, p0, Lorg/apache/tools/ant/Main;->extraArguments:Ljava/util/Map;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    if-eqz v10, :cond_9

    .line 798
    invoke-interface {v7, v2, v10}, Lorg/apache/tools/ant/ArgumentProcessor;->handleArg(Lorg/apache/tools/ant/Project;Ljava/util/List;)Z

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v7, :cond_9

    .line 820
    :try_start_4
    invoke-static {v5}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 821
    invoke-static {v4}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 822
    invoke-static {v6}, Ljava/lang/System;->setIn(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 828
    iget-boolean p1, p0, Lorg/apache/tools/ant/Main;->projectHelp:Z

    if-nez p1, :cond_a

    .line 830
    :try_start_5
    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/Project;->fireBuildFinished(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 834
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 836
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 842
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_a
    :goto_2
    return-void

    .line 804
    :cond_b
    :try_start_6
    iget-boolean v1, p0, Lorg/apache/tools/ant/Main;->projectHelp:Z

    if-eqz v1, :cond_f

    .line 805
    invoke-static {v2}, Lorg/apache/tools/ant/Main;->printDescription(Lorg/apache/tools/ant/Project;)V

    .line 806
    iget v1, p0, Lorg/apache/tools/ant/Main;->msgOutputLevel:I

    const/4 v7, 0x2

    if-le v1, v7, :cond_c

    move v7, v9

    goto :goto_3

    :cond_c
    move v7, p1

    :goto_3
    if-le v1, v8, :cond_d

    goto :goto_4

    :cond_d
    move v9, p1

    :goto_4
    invoke-static {v2, v7, v9}, Lorg/apache/tools/ant/Main;->printTargets(Lorg/apache/tools/ant/Project;ZZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 820
    :try_start_7
    invoke-static {v5}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 821
    invoke-static {v4}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 822
    invoke-static {v6}, Ljava/lang/System;->setIn(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 828
    iget-boolean p1, p0, Lorg/apache/tools/ant/Main;->projectHelp:Z

    if-nez p1, :cond_e

    .line 830
    :try_start_8
    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/Project;->fireBuildFinished(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    .line 834
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 836
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 842
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    :goto_5
    return-void

    .line 812
    :cond_f
    :try_start_9
    iget-object v1, p0, Lorg/apache/tools/ant/Main;->targets:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 813
    invoke-virtual {v2}, Lorg/apache/tools/ant/Project;->getDefaultTarget()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 814
    iget-object v1, p0, Lorg/apache/tools/ant/Main;->targets:Ljava/util/Vector;

    invoke-virtual {v2}, Lorg/apache/tools/ant/Project;->getDefaultTarget()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 818
    :cond_10
    iget-object v1, p0, Lorg/apache/tools/ant/Main;->targets:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/Project;->executeTargets(Ljava/util/Vector;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 820
    :try_start_a
    invoke-static {v5}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 821
    invoke-static {v4}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 822
    invoke-static {v6}, Ljava/lang/System;->setIn(Ljava/io/InputStream;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 828
    iget-boolean p1, p0, Lorg/apache/tools/ant/Main;->projectHelp:Z

    if-nez p1, :cond_11

    .line 830
    :try_start_b
    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/Project;->fireBuildFinished(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p1

    .line 834
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 836
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 842
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_11
    :goto_6
    return-void

    :catchall_3
    move-exception v1

    .line 820
    :try_start_c
    invoke-static {v5}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 821
    invoke-static {v4}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 822
    invoke-static {v6}, Ljava/lang/System;->setIn(Ljava/io/InputStream;)V

    .line 823
    throw v1
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    :goto_7
    move-object v3, v1

    .line 826
    :try_start_d
    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 828
    :goto_8
    iget-boolean v4, p0, Lorg/apache/tools/ant/Main;->projectHelp:Z

    if-eqz v4, :cond_12

    if-eqz v3, :cond_13

    .line 845
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, p1}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    goto :goto_9

    .line 830
    :cond_12
    :try_start_e
    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/Project;->fireBuildFinished(Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 847
    :cond_13
    :goto_9
    throw v1

    :catchall_5
    move-exception p1

    .line 834
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 836
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz v3, :cond_14

    .line 838
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "There has been an error prior to that:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 840
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 842
    :cond_14
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private setProperties(Lorg/apache/tools/ant/Project;)V
    .locals 4

    .line 852
    invoke-virtual {p1}, Lorg/apache/tools/ant/Project;->init()V

    .line 855
    invoke-static {p1}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v0

    .line 857
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lorg/apache/tools/ant/Main;->definedProps:Ljava/util/Properties;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 861
    new-instance v2, Lorg/apache/tools/ant/property/ResolvePropertyMap;

    sget-object v3, Lorg/apache/tools/ant/Main;->NOPROPERTIES:Lorg/apache/tools/ant/property/GetProperty;

    .line 862
    invoke-virtual {v0}, Lorg/apache/tools/ant/PropertyHelper;->getExpanders()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v2, p1, v3, v0}, Lorg/apache/tools/ant/property/ResolvePropertyMap;-><init>(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/property/GetProperty;Ljava/util/Collection;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 863
    invoke-virtual {v2, v1, v0, v3}, Lorg/apache/tools/ant/property/ResolvePropertyMap;->resolveAllProperties(Ljava/util/Map;Ljava/lang/String;Z)V

    .line 866
    new-instance v0, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/Project;)V

    invoke-interface {v1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 868
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->buildFile:Ljava/io/File;

    .line 869
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ant.file"

    .line 868
    invoke-virtual {p1, v1, v0}, Lorg/apache/tools/ant/Project;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ant.file.type"

    const-string v1, "file"

    .line 870
    invoke-virtual {p1, v0, v1}, Lorg/apache/tools/ant/Project;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ","

    .line 880
    iget-object v1, p0, Lorg/apache/tools/ant/Main;->targets:Ljava/util/Vector;

    .line 881
    invoke-static {v0, v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ant.project.invoked-targets"

    .line 880
    invoke-virtual {p1, v1, v0}, Lorg/apache/tools/ant/Project;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static start([Ljava/lang/String;Ljava/util/Properties;Ljava/lang/ClassLoader;)V
    .locals 1

    .line 189
    new-instance v0, Lorg/apache/tools/ant/Main;

    invoke-direct {v0}, Lorg/apache/tools/ant/Main;-><init>()V

    .line 190
    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/tools/ant/Main;->startAnt([Ljava/lang/String;Ljava/util/Properties;Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method protected addBuildListeners(Lorg/apache/tools/ant/Project;)V
    .locals 5

    .line 894
    invoke-direct {p0}, Lorg/apache/tools/ant/Main;->createLogger()Lorg/apache/tools/ant/BuildLogger;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->addBuildListener(Lorg/apache/tools/ant/BuildListener;)V

    .line 896
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->listeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 898
    iget-object v2, p0, Lorg/apache/tools/ant/Main;->listeners:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 899
    const-class v3, Lorg/apache/tools/ant/Main;

    .line 901
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-class v4, Lorg/apache/tools/ant/BuildListener;

    .line 900
    invoke-static {v2, v3, v4}, Lorg/apache/tools/ant/util/ClasspathUtils;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/BuildListener;

    .line 902
    invoke-virtual {p1, v2}, Lorg/apache/tools/ant/Project;->setProjectReference(Ljava/lang/Object;)V

    .line 904
    invoke-virtual {p1, v2}, Lorg/apache/tools/ant/Project;->addBuildListener(Lorg/apache/tools/ant/BuildListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected exit(I)V
    .locals 0

    .line 251
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method synthetic lambda$loadPropertyFiles$3$org-apache-tools-ant-Main(Ljava/lang/String;)Z
    .locals 1

    .line 646
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->definedProps:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method synthetic lambda$loadPropertyFiles$4$org-apache-tools-ant-Main(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 1

    .line 647
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->definedProps:Ljava/util/Properties;

    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method synthetic lambda$startAnt$1$org-apache-tools-ant-Main(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/apache/tools/ant/Main;->definedProps:Ljava/util/Properties;

    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startAnt([Ljava/lang/String;Ljava/util/Properties;Ljava/lang/ClassLoader;)V
    .locals 2

    const/4 v0, 0x1

    .line 206
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/Main;->processArgs([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p2, :cond_0

    .line 215
    invoke-virtual {p2}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object p1

    new-instance v1, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2}, Lorg/apache/tools/ant/Main$$ExternalSyntheticLambda4;-><init>(Lorg/apache/tools/ant/Main;Ljava/util/Properties;)V

    .line 216
    invoke-interface {p1, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 223
    :cond_0
    :try_start_1
    invoke-direct {p0, p3}, Lorg/apache/tools/ant/Main;->runBuild(Ljava/lang/ClassLoader;)V
    :try_end_1
    .catch Lorg/apache/tools/ant/ExitStatusException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 226
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/tools/ant/ExitStatusException;->getStatus()I

    move-result v0
    :try_end_2
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_1

    move p1, v0

    .line 239
    :goto_0
    invoke-direct {p0}, Lorg/apache/tools/ant/Main;->handleLogfile()V

    goto :goto_4

    .line 228
    :cond_1
    :try_start_3
    throw p1
    :try_end_3
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 236
    :goto_1
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 237
    invoke-static {p1}, Lorg/apache/tools/ant/Main;->printMessage(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 239
    :cond_2
    :goto_2
    invoke-direct {p0}, Lorg/apache/tools/ant/Main;->handleLogfile()V

    move p1, v0

    goto :goto_4

    .line 232
    :goto_3
    :try_start_5
    iget-object p2, p0, Lorg/apache/tools/ant/Main;->err:Ljava/io/PrintStream;

    sget-object p3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-eq p2, p3, :cond_2

    .line 233
    invoke-static {p1}, Lorg/apache/tools/ant/Main;->printMessage(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 241
    :goto_4
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/Main;->exit(I)V

    return-void

    :catchall_1
    move-exception p1

    .line 239
    invoke-direct {p0}, Lorg/apache/tools/ant/Main;->handleLogfile()V

    .line 240
    throw p1

    :catchall_2
    move-exception p1

    .line 208
    invoke-direct {p0}, Lorg/apache/tools/ant/Main;->handleLogfile()V

    .line 209
    invoke-static {p1}, Lorg/apache/tools/ant/Main;->printMessage(Ljava/lang/Throwable;)V

    .line 210
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Main;->exit(I)V

    return-void
.end method
