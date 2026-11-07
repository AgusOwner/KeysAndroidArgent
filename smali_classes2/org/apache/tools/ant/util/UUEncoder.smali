.class public Lorg/apache/tools/ant/util/UUEncoder;
.super Ljava/lang/Object;
.source "UUEncoder.java"


# static fields
.field protected static final DEFAULT_MODE:I = 0x284

.field private static final INPUT_BUFFER_SIZE:I = 0x1194

.field private static final MAX_CHARS_PER_LINE:I = 0x2d


# instance fields
.field private name:Ljava/lang/String;

.field private out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/apache/tools/ant/util/UUEncoder;->name:Ljava/lang/String;

    return-void
.end method

.method private encodeBegin()V
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "begin 644 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/util/UUEncoder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/util/UUEncoder;->encodeString(Ljava/lang/String;)V

    return-void
.end method

.method private encodeEnd()V
    .locals 1

    const-string v0, " \nend\n"

    .line 95
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/util/UUEncoder;->encodeString(Ljava/lang/String;)V

    return-void
.end method

.method private encodeLine([BIILjava/io/OutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p3, 0x3f

    add-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    .line 112
    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, p2

    .line 123
    aget-byte v0, p1, v0

    const/4 v2, 0x1

    if-ge v1, p3, :cond_1

    add-int/lit8 v3, v1, 0x1

    add-int/2addr v1, p2

    .line 125
    aget-byte v1, p1, v1

    if-ge v3, p3, :cond_0

    add-int/lit8 v2, v3, 0x1

    add-int/2addr v3, p2

    .line 127
    aget-byte v3, p1, v3

    move v6, v2

    move v2, v1

    move v1, v6

    goto :goto_1

    :cond_0
    move v6, v2

    move v2, v1

    move v1, v3

    move v3, v6

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    ushr-int/lit8 v4, v0, 0x2

    and-int/lit8 v4, v4, 0x3f

    add-int/lit8 v4, v4, 0x20

    int-to-byte v4, v4

    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x30

    ushr-int/lit8 v5, v2, 0x4

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    shl-int/lit8 v2, v2, 0x2

    and-int/lit8 v2, v2, 0x3c

    ushr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3

    or-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    and-int/lit8 v3, v3, 0x3f

    add-int/lit8 v3, v3, 0x20

    int-to-byte v3, v3

    .line 138
    invoke-virtual {p4, v4}, Ljava/io/OutputStream;->write(I)V

    .line 139
    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    .line 140
    invoke-virtual {p4, v2}, Ljava/io/OutputStream;->write(I)V

    .line 141
    invoke-virtual {p4, v3}, Ljava/io/OutputStream;->write(I)V

    move v0, v1

    goto :goto_0

    :cond_2
    const/16 p1, 0xa

    .line 145
    invoke-virtual {p4, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private encodeString(Ljava/lang/String;)V
    .locals 2

    .line 85
    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/apache/tools/ant/util/UUEncoder;->out:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 86
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iput-object p2, p0, Lorg/apache/tools/ant/util/UUEncoder;->out:Ljava/io/OutputStream;

    .line 63
    invoke-direct {p0}, Lorg/apache/tools/ant/util/UUEncoder;->encodeBegin()V

    const/16 v0, 0x1194

    new-array v1, v0, [B

    :cond_0
    const/4 v2, 0x0

    .line 66
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    :goto_0
    if-lez v3, :cond_0

    const/16 v4, 0x2d

    if-le v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    .line 72
    :goto_1
    invoke-direct {p0, v1, v2, v4, p2}, Lorg/apache/tools/ant/util/UUEncoder;->encodeLine([BIILjava/io/OutputStream;)V

    add-int/2addr v2, v4

    sub-int/2addr v3, v4

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 78
    invoke-direct {p0}, Lorg/apache/tools/ant/util/UUEncoder;->encodeEnd()V

    return-void
.end method
