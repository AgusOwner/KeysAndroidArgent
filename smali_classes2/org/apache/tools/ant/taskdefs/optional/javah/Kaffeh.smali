.class public Lorg/apache/tools/ant/taskdefs/optional/javah/Kaffeh;
.super Ljava/lang/Object;
.source "Kaffeh.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/optional/javah/JavahAdapter;


# static fields
.field public static final IMPLEMENTATION_NAME:Ljava/lang/String; = "kaffeh"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setupKaffehCommand(Lorg/apache/tools/ant/taskdefs/optional/Javah;)Lorg/apache/tools/ant/types/Commandline;
    .locals 4

    .line 58
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    const-string v1, "kaffeh"

    .line 59
    invoke-static {v1}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJdkExecutable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getDestdir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-d"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getDestdir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setFile(Ljava/io/File;)V

    .line 66
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getOutputfile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 67
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-o"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getOutputfile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setFile(Ljava/io/File;)V

    .line 71
    :cond_1
    new-instance v1, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 72
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getBootclasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 73
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getBootclasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :cond_2
    const-string v2, "ignore"

    .line 75
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Path;->concatSystemBootClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    .line 76
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 77
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 79
    :cond_3
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 80
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-classpath"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 84
    :cond_4
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getOld()Z

    move-result v1

    if-nez v1, :cond_5

    .line 85
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-jni"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 88
    :cond_5
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->getCurrentArgs()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline;->addArguments([Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/Javah;->logAndAddFiles(Lorg/apache/tools/ant/types/Commandline;)V

    return-object v0
.end method


# virtual methods
.method public compile(Lorg/apache/tools/ant/taskdefs/optional/Javah;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/javah/Kaffeh;->setupKaffehCommand(Lorg/apache/tools/ant/taskdefs/optional/Javah;)Lorg/apache/tools/ant/types/Commandline;

    move-result-object v0

    .line 47
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->runCommand(Lorg/apache/tools/ant/Task;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 50
    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "failed with return code"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 51
    :cond_0
    throw p1
.end method
