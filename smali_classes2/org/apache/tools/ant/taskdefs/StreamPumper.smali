.class public Lorg/apache/tools/ant/taskdefs/StreamPumper;
.super Ljava/lang/Object;
.source "StreamPumper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;
    }
.end annotation


# static fields
.field private static final POLL_INTERVAL:J = 0x64L

.field private static final SMALL_BUFFER_SIZE:I = 0x80


# instance fields
.field private volatile askedToStop:Z

.field private autoflush:Z

.field private bufferSize:I

.field private final closeWhenExhausted:Z

.field private exception:Ljava/lang/Exception;

.field private volatile finished:Z

.field private final is:Ljava/io/InputStream;

.field private final os:Ljava/io/OutputStream;

.field private postStopHandle:Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;

.field private started:Z

.field private final useAvailable:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tools/ant/taskdefs/StreamPumper;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/tools/ant/taskdefs/StreamPumper;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;ZZ)V
    .locals 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->autoflush:Z

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->exception:Ljava/lang/Exception;

    const/16 v1, 0x80

    .line 44
    iput v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->bufferSize:I

    .line 45
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->started:Z

    .line 86
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->is:Ljava/io/InputStream;

    .line 87
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->os:Ljava/io/OutputStream;

    .line 88
    iput-boolean p3, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->closeWhenExhausted:Z

    .line 89
    iput-boolean p4, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->useAvailable:Z

    return-void
.end method

.method private doPostStop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 252
    :try_start_0
    iget v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->bufferSize:I

    new-array v2, v1, [B

    .line 258
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->askedToStop:Z

    if-eqz v3, :cond_1

    .line 260
    :goto_0
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->is:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    if-lez v3, :cond_1

    .line 261
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->is:Ljava/io/InputStream;

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v4, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_1

    .line 265
    :cond_0
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->os:Ljava/io/OutputStream;

    invoke-virtual {v4, v2, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 271
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->os:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->postStopHandle:Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;

    if-eqz v1, :cond_2

    .line 274
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;->access$000(Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 275
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->postStopHandle:Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;

    invoke-static {v1, v0}, Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;->access$102(Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;Z)Z

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 273
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->postStopHandle:Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;

    if-eqz v2, :cond_3

    .line 274
    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;->access$000(Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 275
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->postStopHandle:Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;

    invoke-static {v2, v0}, Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;->access$102(Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;Z)Z

    .line 277
    :cond_3
    throw v1
.end method

.method private waitForInput(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 237
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->useAvailable:Z

    if-eqz v0, :cond_1

    .line 238
    :goto_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->askedToStop:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    if-nez v0, :cond_1

    .line 239
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    monitor-enter p0

    const-wide/16 v0, 0x64

    .line 244
    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 245
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 240
    :cond_0
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized getBufferSize()I
    .locals 1

    monitor-enter p0

    .line 203
    :try_start_0
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->bufferSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getException()Ljava/lang/Exception;
    .locals 1

    monitor-enter p0

    .line 211
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->exception:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isFinished()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->finished:Z

    return v0
.end method

.method public run()V
    .locals 5

    .line 118
    monitor-enter p0

    const/4 v0, 0x1

    .line 119
    :try_start_0
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->started:Z

    .line 120
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const/4 v1, 0x0

    .line 121
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->finished:Z

    .line 123
    iget v2, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->bufferSize:I

    new-array v2, v2, [B

    .line 127
    :cond_0
    :goto_0
    :try_start_1
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->askedToStop:Z

    if-nez v3, :cond_3

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_3

    .line 128
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->is:Ljava/io/InputStream;

    invoke-direct {p0, v3}, Lorg/apache/tools/ant/taskdefs/StreamPumper;->waitForInput(Ljava/io/InputStream;)V

    .line 130
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->askedToStop:Z

    if-nez v3, :cond_3

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 134
    :cond_1
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->is:Ljava/io/InputStream;

    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-gez v3, :cond_2

    goto :goto_1

    :cond_2
    if-lez v3, :cond_0

    .line 141
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->os:Ljava/io/OutputStream;

    invoke-virtual {v4, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 142
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->autoflush:Z

    if-eqz v3, :cond_0

    .line 143
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->os:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    goto :goto_0

    .line 147
    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/StreamPumper;->doPostStop()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 155
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->closeWhenExhausted:Z

    if-eqz v2, :cond_4

    .line 156
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->os:Ljava/io/OutputStream;

    invoke-static {v2}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 158
    :cond_4
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->finished:Z

    .line 159
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->askedToStop:Z

    .line 160
    monitor-enter p0

    .line 161
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 162
    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    .line 151
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 152
    :try_start_4
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->exception:Ljava/lang/Exception;

    .line 153
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 155
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->closeWhenExhausted:Z

    if-eqz v2, :cond_5

    .line 156
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->os:Ljava/io/OutputStream;

    invoke-static {v2}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 158
    :cond_5
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->finished:Z

    .line 159
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->askedToStop:Z

    .line 160
    monitor-enter p0

    .line 161
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 162
    monitor-exit p0

    goto :goto_3

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_3
    move-exception v2

    .line 153
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 155
    :goto_2
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->closeWhenExhausted:Z

    if-eqz v3, :cond_6

    .line 156
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->os:Ljava/io/OutputStream;

    invoke-static {v3}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 158
    :cond_6
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->finished:Z

    .line 159
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->askedToStop:Z

    .line 160
    monitor-enter p0

    .line 161
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 162
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 163
    throw v2

    :catchall_4
    move-exception v0

    .line 162
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    .line 155
    :catch_1
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->closeWhenExhausted:Z

    if-eqz v2, :cond_7

    .line 156
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->os:Ljava/io/OutputStream;

    invoke-static {v2}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 158
    :cond_7
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->finished:Z

    .line 159
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->askedToStop:Z

    .line 160
    monitor-enter p0

    .line 161
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 162
    monitor-exit p0

    :goto_3
    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v0

    :catchall_6
    move-exception v0

    .line 120
    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw v0
.end method

.method setAutoflush(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->autoflush:Z

    return-void
.end method

.method public declared-synchronized setBufferSize(I)V
    .locals 1

    monitor-enter p0

    .line 191
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->started:Z

    if-nez v0, :cond_0

    .line 194
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->bufferSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    monitor-exit p0

    return-void

    .line 192
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set buffer size on a running StreamPumper"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized stop()Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 227
    :try_start_0
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->askedToStop:Z

    .line 228
    new-instance v0, Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;-><init>(Lorg/apache/tools/ant/taskdefs/StreamPumper;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->postStopHandle:Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;

    .line 229
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 230
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/StreamPumper;->postStopHandle:Lorg/apache/tools/ant/taskdefs/StreamPumper$PostStopHandle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized waitFor()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 180
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/StreamPumper;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 183
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
