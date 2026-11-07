.class public Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;
.super Ljava/lang/Object;
.source "PumpStreamHandler.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/PumpStreamHandler$ThreadWithPumper;
    }
.end annotation


# static fields
.field private static final JOIN_TIMEOUT:J = 0xc8L


# instance fields
.field private err:Ljava/io/OutputStream;

.field private errorThread:Ljava/lang/Thread;

.field private input:Ljava/io/InputStream;

.field private inputThread:Ljava/lang/Thread;

.field private final nonBlockingRead:Z

.field private out:Ljava/io/OutputStream;

.field private outputThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 99
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p1}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/io/InputStream;Z)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 61
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->out:Ljava/io/OutputStream;

    .line 62
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->err:Ljava/io/OutputStream;

    .line 63
    iput-object p3, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->input:Ljava/io/InputStream;

    .line 64
    iput-boolean p4, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->nonBlockingRead:Z

    return-void

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "err must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private start(Ljava/lang/Thread;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createProcessErrorPump(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .line 249
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->createPump(Ljava/io/InputStream;Ljava/io/OutputStream;)Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->errorThread:Ljava/lang/Thread;

    return-void
.end method

.method protected createProcessOutputPump(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .line 240
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->createPump(Ljava/io/InputStream;Ljava/io/OutputStream;)Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->outputThread:Ljava/lang/Thread;

    return-void
.end method

.method protected createPump(Ljava/io/InputStream;Ljava/io/OutputStream;)Ljava/lang/Thread;
    .locals 1

    const/4 v0, 0x0

    .line 260
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->createPump(Ljava/io/InputStream;Ljava/io/OutputStream;Z)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method

.method protected createPump(Ljava/io/InputStream;Ljava/io/OutputStream;Z)Ljava/lang/Thread;
    .locals 1

    const/4 v0, 0x1

    .line 275
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->createPump(Ljava/io/InputStream;Ljava/io/OutputStream;ZZ)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method

.method protected createPump(Ljava/io/InputStream;Ljava/io/OutputStream;ZZ)Ljava/lang/Thread;
    .locals 1

    .line 293
    new-instance v0, Lorg/apache/tools/ant/taskdefs/StreamPumper;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/tools/ant/taskdefs/StreamPumper;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;ZZ)V

    const/4 p1, 0x1

    .line 294
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/StreamPumper;->setAutoflush(Z)V

    .line 295
    new-instance p2, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler$ThreadWithPumper;

    invoke-direct {p2, v0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler$ThreadWithPumper;-><init>(Lorg/apache/tools/ant/taskdefs/StreamPumper;)V

    .line 296
    invoke-virtual {p2, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object p2
.end method

.method protected final finish(Ljava/lang/Thread;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 186
    :cond_0
    :try_start_0
    instance-of v0, p1, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler$ThreadWithPumper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 187
    move-object v0, p1

    check-cast v0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler$ThreadWithPumper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler$ThreadWithPumper;->getPumper()Lorg/apache/tools/ant/taskdefs/StreamPumper;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 189
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/StreamPumper;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 192
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    if-eqz v0, :cond_4

    .line 196
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/StreamPumper;->isFinished()Z

    move-result v2

    if-nez v2, :cond_4

    .line 197
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/StreamPumper;->stop()Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_5

    .line 199
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;->isInPostStopTasks()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 205
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2

    invoke-virtual {v1, v3, v4, v2}, Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;->awaitPostStopCompletion(JLjava/util/concurrent/TimeUnit;)Z

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 207
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/StreamPumper;->isFinished()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 210
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    const-wide/16 v1, 0xc8

    .line 211
    invoke-virtual {p1, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_7
    return-void
.end method

.method protected getErr()Ljava/io/OutputStream;
    .locals 1

    .line 223
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->err:Ljava/io/OutputStream;

    return-object v0
.end method

.method protected getOut()Ljava/io/OutputStream;
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public setProcessErrorStream(Ljava/io/InputStream;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->err:Ljava/io/OutputStream;

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->createProcessErrorPump(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public setProcessInputStream(Ljava/io/OutputStream;)V
    .locals 3

    .line 126
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->input:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 127
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->nonBlockingRead:Z

    invoke-virtual {p0, v0, p1, v1, v2}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->createPump(Ljava/io/InputStream;Ljava/io/OutputStream;ZZ)Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->inputThread:Ljava/lang/Thread;

    goto :goto_0

    .line 129
    :cond_0
    invoke-static {p1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    :goto_0
    return-void
.end method

.method public setProcessOutputStream(Ljava/io/InputStream;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->out:Ljava/io/OutputStream;

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->createProcessOutputPump(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->outputThread:Ljava/lang/Thread;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->start(Ljava/lang/Thread;)V

    .line 138
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->errorThread:Ljava/lang/Thread;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->start(Ljava/lang/Thread;)V

    .line 139
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->inputThread:Ljava/lang/Thread;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->start(Ljava/lang/Thread;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->inputThread:Ljava/lang/Thread;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->finish(Ljava/lang/Thread;)V

    .line 149
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->err:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :catch_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    :catch_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->outputThread:Ljava/lang/Thread;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->finish(Ljava/lang/Thread;)V

    .line 159
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->errorThread:Ljava/lang/Thread;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->finish(Ljava/lang/Thread;)V

    return-void
.end method
