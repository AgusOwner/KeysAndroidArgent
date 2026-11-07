.class public Lorg/apache/tools/tar/TarBuffer;
.super Ljava/lang/Object;
.source "TarBuffer.java"


# static fields
.field public static final DEFAULT_BLKSIZE:I = 0x2800

.field public static final DEFAULT_RCDSIZE:I = 0x200


# instance fields
.field private final blockBuffer:[B

.field private final blockSize:I

.field private currBlkIdx:I

.field private currRecIdx:I

.field private debug:Z

.field private inStream:Ljava/io/InputStream;

.field private outStream:Ljava/io/OutputStream;

.field private final recordSize:I

.field private final recsPerBlock:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/16 v0, 0x2800

    .line 68
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/tar/TarBuffer;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    const/16 v0, 0x200

    .line 77
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tools/tar/TarBuffer;-><init>(Ljava/io/InputStream;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/tools/tar/TarBuffer;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;II)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;II)V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lorg/apache/tools/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    .line 122
    iput-object p2, p0, Lorg/apache/tools/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    const/4 p2, 0x0

    .line 123
    iput-boolean p2, p0, Lorg/apache/tools/tar/TarBuffer;->debug:Z

    .line 124
    iput p3, p0, Lorg/apache/tools/tar/TarBuffer;->blockSize:I

    .line 125
    iput p4, p0, Lorg/apache/tools/tar/TarBuffer;->recordSize:I

    .line 126
    div-int p4, p3, p4

    iput p4, p0, Lorg/apache/tools/tar/TarBuffer;->recsPerBlock:I

    .line 127
    new-array p3, p3, [B

    iput-object p3, p0, Lorg/apache/tools/tar/TarBuffer;->blockBuffer:[B

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 130
    iput p1, p0, Lorg/apache/tools/tar/TarBuffer;->currBlkIdx:I

    .line 131
    iput p4, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    goto :goto_0

    .line 133
    :cond_0
    iput p2, p0, Lorg/apache/tools/tar/TarBuffer;->currBlkIdx:I

    .line 134
    iput p2, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/16 v0, 0x2800

    .line 95
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/tar/TarBuffer;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    const/16 v0, 0x200

    .line 104
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tools/tar/TarBuffer;-><init>(Ljava/io/OutputStream;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;II)V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/tools/tar/TarBuffer;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;II)V

    return-void
.end method

.method private readBlock()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    iget-boolean v0, p0, Lorg/apache/tools/tar/TarBuffer;->debug:Z

    if-eqz v0, :cond_0

    .line 240
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ReadBlock: blkIdx = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/tools/tar/TarBuffer;->currBlkIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 243
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 247
    iput v0, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    .line 250
    iget v1, p0, Lorg/apache/tools/tar/TarBuffer;->blockSize:I

    move v2, v0

    :cond_1
    :goto_0
    if-lez v1, :cond_4

    .line 253
    iget-object v3, p0, Lorg/apache/tools/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/apache/tools/tar/TarBuffer;->blockBuffer:[B

    invoke-virtual {v3, v4, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_3

    if-nez v2, :cond_2

    return v0

    .line 282
    :cond_2
    iget-object v3, p0, Lorg/apache/tools/tar/TarBuffer;->blockBuffer:[B

    add-int/2addr v1, v2

    invoke-static {v3, v2, v1, v0}, Ljava/util/Arrays;->fill([BIIB)V

    goto :goto_1

    :cond_3
    int-to-long v5, v2

    add-long/2addr v5, v3

    long-to-int v2, v5

    int-to-long v5, v1

    sub-long/2addr v5, v3

    long-to-int v1, v5

    .line 290
    iget v5, p0, Lorg/apache/tools/tar/TarBuffer;->blockSize:I

    int-to-long v5, v5

    cmp-long v5, v3, v5

    if-eqz v5, :cond_1

    .line 291
    iget-boolean v5, p0, Lorg/apache/tools/tar/TarBuffer;->debug:Z

    if-eqz v5, :cond_1

    .line 292
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ReadBlock: INCOMPLETE READ "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/apache/tools/tar/TarBuffer;->blockSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes read."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_4
    :goto_1
    iget v0, p0, Lorg/apache/tools/tar/TarBuffer;->currBlkIdx:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/tools/tar/TarBuffer;->currBlkIdx:I

    return v1

    .line 244
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "reading from an output buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeBlock()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    iget-boolean v0, p0, Lorg/apache/tools/tar/TarBuffer;->debug:Z

    if-eqz v0, :cond_0

    .line 405
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WriteBlock: blkIdx = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/tools/tar/TarBuffer;->currBlkIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 408
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 412
    iget-object v1, p0, Lorg/apache/tools/tar/TarBuffer;->blockBuffer:[B

    iget v2, p0, Lorg/apache/tools/tar/TarBuffer;->blockSize:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 413
    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 415
    iput v3, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    .line 416
    iget v0, p0, Lorg/apache/tools/tar/TarBuffer;->currBlkIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tools/tar/TarBuffer;->currBlkIdx:I

    .line 417
    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->blockBuffer:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    return-void

    .line 409
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "writing to an input buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 443
    iget-boolean v0, p0, Lorg/apache/tools/tar/TarBuffer;->debug:Z

    if-eqz v0, :cond_0

    .line 444
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "TarBuffer.closeBuffer()."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 447
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 448
    invoke-virtual {p0}, Lorg/apache/tools/tar/TarBuffer;->flushBlock()V

    .line 450
    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-eq v0, v2, :cond_3

    .line 452
    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 454
    iput-object v1, p0, Lorg/apache/tools/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    goto :goto_0

    .line 456
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    .line 457
    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-eq v0, v2, :cond_2

    .line 458
    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 460
    :cond_2
    iput-object v1, p0, Lorg/apache/tools/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    :cond_3
    :goto_0
    return-void
.end method

.method flushBlock()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    iget-boolean v0, p0, Lorg/apache/tools/tar/TarBuffer;->debug:Z

    if-eqz v0, :cond_0

    .line 425
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "TarBuffer.flushBlock() called."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 428
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    .line 432
    iget v0, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    if-lez v0, :cond_1

    .line 433
    invoke-direct {p0}, Lorg/apache/tools/tar/TarBuffer;->writeBlock()V

    :cond_1
    return-void

    .line 429
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "writing to an input buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 143
    iget v0, p0, Lorg/apache/tools/tar/TarBuffer;->blockSize:I

    return v0
.end method

.method public getCurrentBlockNum()I
    .locals 1

    .line 310
    iget v0, p0, Lorg/apache/tools/tar/TarBuffer;->currBlkIdx:I

    return v0
.end method

.method public getCurrentRecordNum()I
    .locals 1

    .line 320
    iget v0, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getRecordSize()I
    .locals 1

    .line 151
    iget v0, p0, Lorg/apache/tools/tar/TarBuffer;->recordSize:I

    return v0
.end method

.method public isEOFRecord([B)Z
    .locals 4

    .line 171
    invoke-virtual {p0}, Lorg/apache/tools/tar/TarBuffer;->getRecordSize()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 172
    aget-byte v3, p1, v2

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public readRecord()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    iget-boolean v0, p0, Lorg/apache/tools/tar/TarBuffer;->debug:Z

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ReadRecord: recIdx = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " blkIdx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/tools/tar/TarBuffer;->currBlkIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 213
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    if-nez v0, :cond_2

    .line 214
    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    .line 215
    new-instance v0, Ljava/io/IOException;

    const-string v1, "input buffer is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "reading from an output buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_2
    iget v0, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    iget v1, p0, Lorg/apache/tools/tar/TarBuffer;->recsPerBlock:I

    if-lt v0, v1, :cond_3

    invoke-direct {p0}, Lorg/apache/tools/tar/TarBuffer;->readBlock()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    return-object v0

    .line 224
    :cond_3
    iget v0, p0, Lorg/apache/tools/tar/TarBuffer;->recordSize:I

    new-array v1, v0, [B

    .line 226
    iget-object v2, p0, Lorg/apache/tools/tar/TarBuffer;->blockBuffer:[B

    iget v3, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    mul-int/2addr v3, v0

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    iget v0, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    return-object v1
.end method

.method public setDebug(Z)V
    .locals 0

    .line 160
    iput-boolean p1, p0, Lorg/apache/tools/tar/TarBuffer;->debug:Z

    return-void
.end method

.method public skipRecord()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    iget-boolean v0, p0, Lorg/apache/tools/tar/TarBuffer;->debug:Z

    if-eqz v0, :cond_0

    .line 186
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SkipRecord: recIdx = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " blkIdx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/tools/tar/TarBuffer;->currBlkIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 190
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 194
    iget v0, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    iget v1, p0, Lorg/apache/tools/tar/TarBuffer;->recsPerBlock:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lorg/apache/tools/tar/TarBuffer;->readBlock()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 198
    :cond_1
    iget v0, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    return-void

    .line 191
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "reading (via skip) from an output buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeRecord([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    iget-boolean v0, p0, Lorg/apache/tools/tar/TarBuffer;->debug:Z

    if-eqz v0, :cond_0

    .line 331
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WriteRecord: recIdx = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " blkIdx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/tools/tar/TarBuffer;->currBlkIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 335
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    if-nez v0, :cond_2

    .line 336
    iget-object p1, p0, Lorg/apache/tools/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    if-nez p1, :cond_1

    .line 337
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Output buffer is closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 339
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "writing to an input buffer"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 342
    :cond_2
    array-length v0, p1

    iget v1, p0, Lorg/apache/tools/tar/TarBuffer;->recordSize:I

    if-ne v0, v1, :cond_4

    .line 349
    iget v0, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    iget v1, p0, Lorg/apache/tools/tar/TarBuffer;->recsPerBlock:I

    if-lt v0, v1, :cond_3

    .line 350
    invoke-direct {p0}, Lorg/apache/tools/tar/TarBuffer;->writeBlock()V

    .line 353
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->blockBuffer:[B

    iget v1, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    iget v2, p0, Lorg/apache/tools/tar/TarBuffer;->recordSize:I

    mul-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    iget p1, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    return-void

    .line 343
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "record to write has length \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' which is not the record size of \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lorg/apache/tools/tar/TarBuffer;->recordSize:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeRecord([BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    iget-boolean v0, p0, Lorg/apache/tools/tar/TarBuffer;->debug:Z

    if-eqz v0, :cond_0

    .line 371
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WriteRecord: recIdx = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " blkIdx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/tools/tar/TarBuffer;->currBlkIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 375
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->outStream:Ljava/io/OutputStream;

    if-nez v0, :cond_2

    .line 376
    iget-object p1, p0, Lorg/apache/tools/tar/TarBuffer;->inStream:Ljava/io/InputStream;

    if-nez p1, :cond_1

    .line 377
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Output buffer is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 379
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "writing to an input buffer"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 382
    :cond_2
    iget v0, p0, Lorg/apache/tools/tar/TarBuffer;->recordSize:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_4

    .line 389
    iget v0, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    iget v1, p0, Lorg/apache/tools/tar/TarBuffer;->recsPerBlock:I

    if-lt v0, v1, :cond_3

    .line 390
    invoke-direct {p0}, Lorg/apache/tools/tar/TarBuffer;->writeBlock()V

    .line 393
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/tar/TarBuffer;->blockBuffer:[B

    iget v1, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    iget v2, p0, Lorg/apache/tools/tar/TarBuffer;->recordSize:I

    mul-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    iget p1, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/tools/tar/TarBuffer;->currRecIdx:I

    return-void

    .line 383
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "record has length \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' with offset \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\' which is less than the record size of \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lorg/apache/tools/tar/TarBuffer;->recordSize:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
