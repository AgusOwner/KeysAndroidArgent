.class public Lorg/apache/tools/ant/taskdefs/launcher/WinNTCommandLauncher;
.super Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncherProxy;
.source "WinNTCommandLauncher.java"


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncherProxy;-><init>(Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V

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

    if-nez p4, :cond_1

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p1}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object p4

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/launcher/WinNTCommandLauncher;->exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    return-object p1

    .line 65
    :cond_1
    :goto_0
    array-length v0, p2

    const/4 v1, 0x6

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "cmd"

    const/4 v3, 0x0

    .line 67
    aput-object v2, v0, v3

    const/4 v2, 0x1

    const-string v4, "/c"

    .line 68
    aput-object v4, v0, v2

    const/4 v2, 0x2

    const-string v4, "cd"

    .line 69
    aput-object v4, v0, v2

    const/4 v2, 0x3

    const-string v4, "/d"

    .line 70
    aput-object v4, v0, v2

    const/4 v2, 0x4

    .line 71
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    aput-object p4, v0, v2

    const/4 p4, 0x5

    const-string v2, "&&"

    .line 72
    aput-object v2, v0, p4

    .line 74
    array-length p4, p2

    invoke-static {p2, v3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    invoke-virtual {p0, p1, v0, p3}, Lorg/apache/tools/ant/taskdefs/launcher/WinNTCommandLauncher;->exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    return-object p1
.end method
