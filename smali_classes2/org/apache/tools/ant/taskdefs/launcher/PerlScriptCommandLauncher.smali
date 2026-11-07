.class public Lorg/apache/tools/ant/taskdefs/launcher/PerlScriptCommandLauncher;
.super Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncherProxy;
.source "PerlScriptCommandLauncher.java"


# instance fields
.field private final myScript:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V
    .locals 0

    .line 34
    invoke-direct {p0, p2}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncherProxy;-><init>(Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V

    .line 35
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/launcher/PerlScriptCommandLauncher;->myScript:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_1

    if-nez p4, :cond_0

    .line 59
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/launcher/PerlScriptCommandLauncher;->exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    return-object p1

    .line 61
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot locate antRun script: No project provided"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string v0, "ant.home"

    .line 65
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 70
    sget-object v1, Lorg/apache/tools/ant/taskdefs/launcher/PerlScriptCommandLauncher;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p1}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/launcher/PerlScriptCommandLauncher;->myScript:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p4, :cond_2

    .line 77
    invoke-virtual {p1}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object p4

    .line 80
    :cond_2
    array-length v1, p2

    const/4 v2, 0x3

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "perl"

    const/4 v4, 0x0

    .line 81
    aput-object v3, v1, v4

    const/4 v3, 0x1

    .line 82
    aput-object v0, v1, v3

    const/4 v0, 0x2

    .line 83
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    aput-object p4, v1, v0

    .line 84
    array-length p4, p2

    invoke-static {p2, v4, v1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    invoke-virtual {p0, p1, v1, p3}, Lorg/apache/tools/ant/taskdefs/launcher/PerlScriptCommandLauncher;->exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    return-object p1

    .line 67
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot locate antRun script: Property \'ant.home\' not found"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
