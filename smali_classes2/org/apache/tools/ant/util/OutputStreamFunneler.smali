.class public Lorg/apache/tools/ant/util/OutputStreamFunneler;
.super Ljava/lang/Object;
.source "OutputStreamFunneler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;
    }
.end annotation


# static fields
.field public static final DEFAULT_TIMEOUT_MILLIS:J = 0x3e8L


# instance fields
.field private closed:Z

.field private count:I

.field private out:Ljava/io/OutputStream;

.field private timeoutMillis:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 96
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/tools/ant/util/OutputStreamFunneler;-><init>(Ljava/io/OutputStream;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;J)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler;->count:I

    if-eqz p1, :cond_0

    .line 112
    iput-object p1, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler;->out:Ljava/io/OutputStream;

    .line 113
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler;->closed:Z

    .line 114
    invoke-virtual {p0, p2, p3}, Lorg/apache/tools/ant/util/OutputStreamFunneler;->setTimeout(J)V

    return-void

    .line 109
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "OutputStreamFunneler.<init>:  out == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$004(Lorg/apache/tools/ant/util/OutputStreamFunneler;)I
    .locals 1

    .line 30
    iget v0, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler;->count:I

    return v0
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/util/OutputStreamFunneler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lorg/apache/tools/ant/util/OutputStreamFunneler;->dieIfClosed()V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/tools/ant/util/OutputStreamFunneler;)Ljava/io/OutputStream;
    .locals 0

    .line 30
    iget-object p0, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler;->out:Ljava/io/OutputStream;

    return-object p0
.end method

.method static synthetic access$300(Lorg/apache/tools/ant/util/OutputStreamFunneler;Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/util/OutputStreamFunneler;->release(Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;)V

    return-void
.end method

.method private declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 174
    :try_start_0
    invoke-direct {p0}, Lorg/apache/tools/ant/util/OutputStreamFunneler;->dieIfClosed()V

    .line 175
    iget-object v1, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :try_start_1
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 179
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 177
    :try_start_2
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler;->closed:Z

    .line 178
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized dieIfClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 182
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 185
    monitor-exit p0

    return-void

    .line 183
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The funneled OutputStream has been closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized release(Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 148
    :try_start_0
    invoke-static {p1}, Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;->access$500(Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 150
    :try_start_1
    iget-wide v1, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler;->timeoutMillis:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 152
    iget-wide v3, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler;->timeoutMillis:J

    add-long/2addr v1, v3

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    cmp-long v5, v3, v1

    if-gez v5, :cond_0

    sub-long v3, v1, v3

    .line 156
    :try_start_2
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 163
    :catch_0
    :cond_0
    :try_start_3
    iget v1, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler;->count:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler;->count:I

    if-nez v1, :cond_1

    .line 164
    invoke-direct {p0}, Lorg/apache/tools/ant/util/OutputStreamFunneler;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 167
    :cond_1
    :try_start_4
    invoke-static {p1, v0}, Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;->access$502(Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;Z)Z

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {p1, v0}, Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;->access$502(Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;Z)Z

    .line 168
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 170
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized getFunnelInstance()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 138
    :try_start_0
    invoke-direct {p0}, Lorg/apache/tools/ant/util/OutputStreamFunneler;->dieIfClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 140
    :try_start_1
    new-instance v0, Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/tools/ant/util/OutputStreamFunneler$Funnel;-><init>(Lorg/apache/tools/ant/util/OutputStreamFunneler;Lorg/apache/tools/ant/util/OutputStreamFunneler$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 140
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 142
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 143
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTimeout(J)V
    .locals 0

    monitor-enter p0

    .line 126
    :try_start_0
    iput-wide p1, p0, Lorg/apache/tools/ant/util/OutputStreamFunneler;->timeoutMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
