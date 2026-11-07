.class public Lorg/apache/tools/ant/input/GreedyInputHandler;
.super Lorg/apache/tools/ant/input/DefaultInputHandler;
.source "GreedyInputHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/apache/tools/ant/input/DefaultInputHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleInput(Lorg/apache/tools/ant/input/InputRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/input/GreedyInputHandler;->getPrompt(Lorg/apache/tools/ant/input/InputRequest;)Ljava/lang/String;

    move-result-object v0

    .line 51
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/input/GreedyInputHandler;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 52
    :try_start_1
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 54
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 55
    new-instance v2, Lorg/apache/tools/ant/taskdefs/StreamPumper;

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/taskdefs/StreamPumper;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 56
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 57
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 62
    :catch_0
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 67
    :catch_1
    :goto_0
    :try_start_4
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v3}, Lorg/apache/tools/ant/input/InputRequest;->setInput(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Lorg/apache/tools/ant/input/InputRequest;->isInputValid()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 72
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/StreamPumper;->getException()Ljava/lang/Exception;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez p1, :cond_0

    .line 77
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    return-void

    .line 73
    :cond_0
    :try_start_5
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Failed to read input from console"

    .line 74
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/StreamPumper;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 69
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Received invalid console input"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    const/4 v1, 0x0

    .line 77
    :goto_1
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 78
    throw p1
.end method
