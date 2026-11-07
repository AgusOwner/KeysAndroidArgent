.class public Lorg/apache/tools/ant/util/LeadPipeInputStream;
.super Ljava/io/PipedInputStream;
.source "LeadPipeInputStream.java"


# static fields
.field private static final BYTE_MASK:I = 0xff


# instance fields
.field private managingPc:Lorg/apache/tools/ant/ProjectComponent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/io/PipedInputStream;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/io/PipedInputStream;-><init>()V

    .line 52
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/LeadPipeInputStream;->setBufferSize(I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PipedOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PipedOutputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    .line 75
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/util/LeadPipeInputStream;->setBufferSize(I)V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;I)V
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->managingPc:Lorg/apache/tools/ant/ProjectComponent;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    .line 155
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_1
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "error at LeadPipeInputStream.read():  "

    monitor-enter p0

    .line 88
    :try_start_0
    invoke-super {p0}, Ljava/io/PipedInputStream;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 90
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "write end dead"

    .line 91
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "pipe broken"

    .line 92
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/util/LeadPipeInputStream;->log(Ljava/lang/String;I)V

    goto :goto_1

    .line 93
    :cond_1
    :goto_0
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    if-lez v0, :cond_2

    iget v0, p0, Ljava/io/PipedInputStream;->out:I

    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget v0, p0, Ljava/io/PipedInputStream;->out:I

    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    if-le v0, v1, :cond_2

    .line 95
    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/PipedInputStream;->out:I

    aget-byte v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v0, v0, 0xff

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, -0x1

    .line 102
    :goto_2
    monitor-exit p0

    return v0

    :goto_3
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBufferSize(I)V
    .locals 5

    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->buffer:[B

    array-length v0, v0

    if-le p1, v0, :cond_2

    .line 111
    new-array p1, p1, [B

    .line 112
    iget v0, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->in:I

    if-ltz v0, :cond_1

    .line 113
    iget v0, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->in:I

    iget v1, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->out:I

    if-le v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->buffer:[B

    iget v1, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->out:I

    iget v2, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->out:I

    iget v3, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->in:I

    iget v4, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->out:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->out:I

    sub-int/2addr v0, v1

    .line 117
    iget-object v1, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->out:I

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    iget-object v1, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->in:I

    invoke-static {v1, v3, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    iget v1, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->in:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->in:I

    .line 120
    iput v3, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->out:I

    .line 123
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->buffer:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setManagingComponent(Lorg/apache/tools/ant/ProjectComponent;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lorg/apache/tools/ant/util/LeadPipeInputStream;->managingPc:Lorg/apache/tools/ant/ProjectComponent;

    return-void
.end method

.method public setManagingTask(Lorg/apache/tools/ant/Task;)V
    .locals 0

    .line 133
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/LeadPipeInputStream;->setManagingComponent(Lorg/apache/tools/ant/ProjectComponent;)V

    return-void
.end method
