.class public Lorg/apache/tools/ant/taskdefs/launcher/MacCommandLauncher;
.super Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncherProxy;
.source "MacCommandLauncher.java"


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncherProxy;-><init>(Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V

    return-void
.end method


# virtual methods
.method public exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p4, :cond_0

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/launcher/MacCommandLauncher;->exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    return-object p1

    .line 56
    :cond_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    const-string v1, "user.dir"

    invoke-virtual {v0, v1, p4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/launcher/MacCommandLauncher;->exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v1, p3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v1, p3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    throw p1
.end method
