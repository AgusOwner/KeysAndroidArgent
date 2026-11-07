.class public Lorg/apache/tools/ant/DemuxOutputStream;
.super Ljava/io/OutputStream;
.source "DemuxOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;
    }
.end annotation


# static fields
.field private static final CR:I = 0xd

.field private static final INITIAL_SIZE:I = 0x84

.field private static final LF:I = 0xa

.field private static final MAX_SIZE:I = 0x400


# instance fields
.field private buffers:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Thread;",
            "Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isErrorStream:Z

.field private project:Lorg/apache/tools/ant/Project;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/Project;Z)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 67
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/DemuxOutputStream;->buffers:Ljava/util/WeakHashMap;

    .line 90
    iput-object p1, p0, Lorg/apache/tools/ant/DemuxOutputStream;->project:Lorg/apache/tools/ant/Project;

    .line 91
    iput-boolean p2, p0, Lorg/apache/tools/ant/DemuxOutputStream;->isErrorStream:Z

    return-void
.end method

.method private getBufferInfo()Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;
    .locals 3

    .line 100
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lorg/apache/tools/ant/DemuxOutputStream;->buffers:Ljava/util/WeakHashMap;

    new-instance v2, Lorg/apache/tools/ant/DemuxOutputStream$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/apache/tools/ant/DemuxOutputStream$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;

    return-object v0
.end method

.method static synthetic lambda$getBufferInfo$0(Ljava/lang/Thread;)Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;
    .locals 2

    .line 102
    new-instance p0, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;-><init>(Lorg/apache/tools/ant/DemuxOutputStream$1;)V

    .line 103
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x84

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {p0, v0}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->access$002(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    .line 104
    invoke-static {p0, v0}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->access$102(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;Z)Z

    return-object p0
.end method

.method private removeBuffer()V
    .locals 2

    .line 124
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lorg/apache/tools/ant/DemuxOutputStream;->buffers:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private resetBufferInfo()V
    .locals 2

    .line 113
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lorg/apache/tools/ant/DemuxOutputStream;->buffers:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;

    .line 115
    invoke-static {v0}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->access$000(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;)Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 116
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0, v1}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->access$002(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    .line 117
    invoke-static {v0, v1}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->access$102(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;Z)Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Lorg/apache/tools/ant/DemuxOutputStream;->flush()V

    .line 197
    invoke-direct {p0}, Lorg/apache/tools/ant/DemuxOutputStream;->removeBuffer()V

    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    invoke-direct {p0}, Lorg/apache/tools/ant/DemuxOutputStream;->getBufferInfo()Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;

    move-result-object v0

    .line 209
    invoke-static {v0}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->access$000(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;)Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 210
    invoke-static {v0}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->access$000(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/DemuxOutputStream;->processFlush(Ljava/io/ByteArrayOutputStream;)V

    :cond_0
    return-void
.end method

.method protected processBuffer(Ljava/io/ByteArrayOutputStream;)V
    .locals 2

    .line 168
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p1

    .line 169
    iget-object v0, p0, Lorg/apache/tools/ant/DemuxOutputStream;->project:Lorg/apache/tools/ant/Project;

    iget-boolean v1, p0, Lorg/apache/tools/ant/DemuxOutputStream;->isErrorStream:Z

    invoke-virtual {v0, p1, v1}, Lorg/apache/tools/ant/Project;->demuxOutput(Ljava/lang/String;Z)V

    .line 170
    invoke-direct {p0}, Lorg/apache/tools/ant/DemuxOutputStream;->resetBufferInfo()V

    return-void
.end method

.method protected processFlush(Ljava/io/ByteArrayOutputStream;)V
    .locals 2

    .line 182
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p1

    .line 183
    iget-object v0, p0, Lorg/apache/tools/ant/DemuxOutputStream;->project:Lorg/apache/tools/ant/Project;

    iget-boolean v1, p0, Lorg/apache/tools/ant/DemuxOutputStream;->isErrorStream:Z

    invoke-virtual {v0, p1, v1}, Lorg/apache/tools/ant/Project;->demuxFlush(Ljava/lang/String;Z)V

    .line 184
    invoke-direct {p0}, Lorg/apache/tools/ant/DemuxOutputStream;->resetBufferInfo()V

    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte v0, p1

    .line 139
    invoke-direct {p0}, Lorg/apache/tools/ant/DemuxOutputStream;->getBufferInfo()Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;

    move-result-object v1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    .line 143
    invoke-static {v1}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->access$000(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;)Ljava/io/ByteArrayOutputStream;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 144
    invoke-static {v1}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->access$000(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/DemuxOutputStream;->processBuffer(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_0

    .line 146
    :cond_0
    invoke-static {v1}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->access$100(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    invoke-static {v1}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->access$000(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;)Ljava/io/ByteArrayOutputStream;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/DemuxOutputStream;->processBuffer(Ljava/io/ByteArrayOutputStream;)V

    .line 151
    :cond_1
    invoke-static {v1}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->access$000(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;)Ljava/io/ByteArrayOutputStream;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_0
    const/16 p1, 0xd

    if-ne v0, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 153
    :goto_1
    invoke-static {v1, p1}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->access$102(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;Z)Z

    .line 154
    invoke-static {v1}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->access$100(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {v1}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->access$000(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    const/16 v0, 0x400

    if-le p1, v0, :cond_3

    .line 155
    invoke-static {v1}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->access$000(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;)Ljava/io/ByteArrayOutputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/DemuxOutputStream;->processBuffer(Ljava/io/ByteArrayOutputStream;)V

    :cond_3
    return-void
.end method

.method public write([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    invoke-direct {p0}, Lorg/apache/tools/ant/DemuxOutputStream;->getBufferInfo()Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;

    move-result-object v0

    :cond_0
    if-lez p3, :cond_4

    move v1, p2

    :goto_0
    const/16 v2, 0xd

    const/16 v3, 0xa

    if-lez p3, :cond_1

    .line 231
    aget-byte v4, p1, v1

    if-eq v4, v3, :cond_1

    if-eq v4, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    sub-int v4, v1, p2

    if-lez v4, :cond_2

    .line 238
    invoke-static {v0}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->access$000(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;)Ljava/io/ByteArrayOutputStream;

    move-result-object v5

    invoke-virtual {v5, p1, p2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_2
    move p2, v1

    :goto_1
    if-lez p3, :cond_0

    .line 240
    aget-byte v1, p1, p2

    if-eq v1, v3, :cond_3

    if-ne v1, v2, :cond_0

    .line 241
    :cond_3
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/DemuxOutputStream;->write(I)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method
