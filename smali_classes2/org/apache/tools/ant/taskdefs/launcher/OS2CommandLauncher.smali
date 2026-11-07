.class public Lorg/apache/tools/ant/taskdefs/launcher/OS2CommandLauncher;
.super Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncherProxy;
.source "OS2CommandLauncher.java"


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncherProxy;-><init>(Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V

    return-void
.end method


# virtual methods
.method public exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p4, :cond_1

    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p1}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object p4

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/launcher/OS2CommandLauncher;->exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    return-object p1

    .line 67
    :cond_1
    :goto_0
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    .line 68
    array-length v0, p2

    const/4 v1, 0x7

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "cmd"

    const/4 v3, 0x0

    .line 70
    aput-object v2, v0, v3

    const/4 v2, 0x1

    const-string v4, "/c"

    .line 71
    aput-object v4, v0, v2

    const/4 v2, 0x2

    .line 72
    invoke-virtual {p4, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const/4 v4, 0x3

    const-string v5, "&&"

    .line 73
    aput-object v5, v0, v4

    const/4 v4, 0x4

    const-string v6, "cd"

    .line 74
    aput-object v6, v0, v4

    const/4 v4, 0x5

    .line 75
    invoke-virtual {p4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p4

    aput-object p4, v0, v4

    const/4 p4, 0x6

    .line 76
    aput-object v5, v0, p4

    .line 78
    array-length p4, p2

    invoke-static {p2, v3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    invoke-virtual {p0, p1, v0, p3}, Lorg/apache/tools/ant/taskdefs/launcher/OS2CommandLauncher;->exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    return-object p1
.end method
