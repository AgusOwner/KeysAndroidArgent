.class public Lorg/apache/tools/ant/taskdefs/launcher/VmsCommandLauncher;
.super Lorg/apache/tools/ant/taskdefs/launcher/Java13CommandLauncher;
.source "VmsCommandLauncher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/launcher/Java13CommandLauncher;-><init>()V

    return-void
.end method

.method private createCommandFile(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    sget-object v0, Lorg/apache/tools/ant/taskdefs/launcher/VmsCommandLauncher;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    const-string v2, "ANT"

    const-string v3, ".COM"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/tools/ant/util/FileUtils;->createTempFile(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZ)Ljava/io/File;

    move-result-object p1

    .line 97
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 102
    :try_start_0
    array-length v2, p3

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p3, v3

    const/16 v5, 0x3d

    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    const-string v6, "$ DEFINE/NOLOG "

    .line 105
    invoke-virtual {v0, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v6, " \""

    .line 107
    invoke-virtual {v0, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    .line 108
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/16 v4, 0x22

    .line 109
    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(I)V

    .line 110
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$ "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    aget-object v1, p2, v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 115
    :goto_1
    array-length v1, p2

    if-ge p3, v1, :cond_2

    const-string v1, " -"

    .line 116
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 118
    aget-object v1, p2, p3

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 120
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 97
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
.end method

.method private deleteAfter(Ljava/io/File;Ljava/lang/Process;)V
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/launcher/VmsCommandLauncher$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p1}, Lorg/apache/tools/ant/taskdefs/launcher/VmsCommandLauncher$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Process;Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 132
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic lambda$deleteAfter$0(Ljava/lang/Process;Ljava/io/File;)V
    .locals 0

    .line 127
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :catch_0
    invoke-static {p1}, Lorg/apache/tools/ant/util/FileUtils;->delete(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/launcher/VmsCommandLauncher;->createCommandFile(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 53
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0, p3}, Lorg/apache/tools/ant/taskdefs/launcher/Java13CommandLauncher;->exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    .line 54
    invoke-direct {p0, p2, p1}, Lorg/apache/tools/ant/taskdefs/launcher/VmsCommandLauncher;->deleteAfter(Ljava/io/File;Ljava/lang/Process;)V

    return-object p1
.end method

.method public exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/launcher/VmsCommandLauncher;->createCommandFile(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 80
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0, p3, p4}, Lorg/apache/tools/ant/taskdefs/launcher/Java13CommandLauncher;->exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object p1

    .line 82
    invoke-direct {p0, p2, p1}, Lorg/apache/tools/ant/taskdefs/launcher/VmsCommandLauncher;->deleteAfter(Ljava/io/File;Ljava/lang/Process;)V

    return-object p1
.end method
