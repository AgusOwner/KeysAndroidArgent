.class public abstract Lorg/apache/tools/ant/util/LineOrientedOutputStream;
.super Ljava/io/OutputStream;
.source "LineOrientedOutputStream.java"


# static fields
.field private static final CR:I = 0xd

.field private static final INITIAL_SIZE:I = 0x84

.field private static final LF:I = 0xa


# instance fields
.field private buffer:Ljava/io/ByteArrayOutputStream;

.field private skip:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 42
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x84

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->buffer:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->skip:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->processBuffer()V

    .line 121
    :cond_0
    invoke-super {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected processBuffer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->processLine([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iget-object v0, p0, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 84
    throw v0
.end method

.method protected abstract processLine(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected processLine([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->processLine(Ljava/lang/String;)V

    return-void
.end method

.method public final write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte v0, p1

    const/16 v1, 0xa

    const/16 v2, 0xd

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 57
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->skip:Z

    if-nez p1, :cond_2

    .line 58
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->processBuffer()V

    :cond_2
    :goto_1
    if-ne v0, v2, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 63
    :goto_2
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->skip:Z

    return-void
.end method

.method public final write([BII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    if-lez p3, :cond_4

    move v0, p2

    :goto_0
    const/16 v1, 0xd

    const/16 v2, 0xa

    if-lez p3, :cond_1

    .line 140
    aget-byte v3, p1, v0

    if-eq v3, v2, :cond_1

    if-eq v3, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    sub-int v3, v0, p2

    if-lez v3, :cond_2

    .line 147
    iget-object v4, p0, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, p1, p2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_2
    move p2, v0

    :goto_1
    if-lez p3, :cond_0

    .line 149
    aget-byte v0, p1, p2

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_0

    .line 150
    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->write(I)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method
