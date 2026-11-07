.class Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;
.super Ljava/lang/Object;
.source "DemuxOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/DemuxOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferInfo"
.end annotation


# instance fields
.field private buffer:Ljava/io/ByteArrayOutputStream;

.field private crSeen:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->crSeen:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/DemuxOutputStream$1;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;)Ljava/io/ByteArrayOutputStream;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->buffer:Ljava/io/ByteArrayOutputStream;

    return-object p0
.end method

.method static synthetic access$002(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->buffer:Ljava/io/ByteArrayOutputStream;

    return-object p1
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->crSeen:Z

    return p0
.end method

.method static synthetic access$102(Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lorg/apache/tools/ant/DemuxOutputStream$BufferInfo;->crSeen:Z

    return p1
.end method
