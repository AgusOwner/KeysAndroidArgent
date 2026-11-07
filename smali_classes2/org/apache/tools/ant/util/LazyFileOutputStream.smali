.class public Lorg/apache/tools/ant/util/LazyFileOutputStream;
.super Ljava/io/OutputStream;
.source "LazyFileOutputStream.java"


# instance fields
.field private alwaysCreate:Z

.field private append:Z

.field private closed:Z

.field private file:Ljava/io/File;

.field private fos:Ljava/io/OutputStream;

.field private opened:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/util/LazyFileOutputStream;-><init>(Ljava/io/File;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tools/ant/util/LazyFileOutputStream;-><init>(Ljava/io/File;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZZ)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/LazyFileOutputStream;->opened:Z

    .line 39
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/LazyFileOutputStream;->closed:Z

    .line 91
    iput-object p1, p0, Lorg/apache/tools/ant/util/LazyFileOutputStream;->file:Ljava/io/File;

    .line 92
    iput-boolean p2, p0, Lorg/apache/tools/ant/util/LazyFileOutputStream;->append:Z

    .line 93
    iput-boolean p3, p0, Lorg/apache/tools/ant/util/LazyFileOutputStream;->alwaysCreate:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/util/LazyFileOutputStream;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 58
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/tools/ant/util/LazyFileOutputStream;-><init>(Ljava/io/File;Z)V

    return-void
.end method

.method private declared-synchronized ensureOpened()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 157
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/LazyFileOutputStream;->closed:Z

    if-nez v0, :cond_1

    .line 161
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/LazyFileOutputStream;->opened:Z

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lorg/apache/tools/ant/util/LazyFileOutputStream;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/tools/ant/util/LazyFileOutputStream;->append:Z

    invoke-static {v0, v1}, Lorg/apache/tools/ant/util/FileUtils;->newOutputStream(Ljava/nio/file/Path;Z)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/util/LazyFileOutputStream;->fos:Ljava/io/OutputStream;

    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/LazyFileOutputStream;->opened:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :cond_0
    monitor-exit p0

    return-void

    .line 158
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/util/LazyFileOutputStream;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has already been closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 112
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/LazyFileOutputStream;->alwaysCreate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/tools/ant/util/LazyFileOutputStream;->closed:Z

    if-nez v0, :cond_0

    .line 113
    invoke-direct {p0}, Lorg/apache/tools/ant/util/LazyFileOutputStream;->ensureOpened()V

    .line 115
    :cond_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/LazyFileOutputStream;->opened:Z

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lorg/apache/tools/ant/util/LazyFileOutputStream;->fos:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_1
    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/LazyFileOutputStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public open()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Lorg/apache/tools/ant/util/LazyFileOutputStream;->ensureOpened()V

    return-void
.end method

.method public declared-synchronized write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 152
    :try_start_0
    invoke-direct {p0}, Lorg/apache/tools/ant/util/LazyFileOutputStream;->ensureOpened()V

    .line 153
    iget-object v0, p0, Lorg/apache/tools/ant/util/LazyFileOutputStream;->fos:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 128
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/tools/ant/util/LazyFileOutputStream;->write([BII)V

    return-void
.end method

.method public declared-synchronized write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 141
    :try_start_0
    invoke-direct {p0}, Lorg/apache/tools/ant/util/LazyFileOutputStream;->ensureOpened()V

    .line 142
    iget-object v0, p0, Lorg/apache/tools/ant/util/LazyFileOutputStream;->fos:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
