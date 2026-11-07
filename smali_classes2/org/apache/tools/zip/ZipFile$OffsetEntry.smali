.class final Lorg/apache/tools/zip/ZipFile$OffsetEntry;
.super Ljava/lang/Object;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OffsetEntry"
.end annotation


# instance fields
.field private dataOffset:J

.field private headerOffset:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 98
    iput-wide v0, p0, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->headerOffset:J

    .line 99
    iput-wide v0, p0, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->dataOffset:J

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/zip/ZipFile$1;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipFile$OffsetEntry;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/zip/ZipFile$OffsetEntry;)J
    .locals 2

    .line 97
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->dataOffset:J

    return-wide v0
.end method

.method static synthetic access$002(Lorg/apache/tools/zip/ZipFile$OffsetEntry;J)J
    .locals 0

    .line 97
    iput-wide p1, p0, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->dataOffset:J

    return-wide p1
.end method

.method static synthetic access$200(Lorg/apache/tools/zip/ZipFile$OffsetEntry;)J
    .locals 2

    .line 97
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->headerOffset:J

    return-wide v0
.end method

.method static synthetic access$202(Lorg/apache/tools/zip/ZipFile$OffsetEntry;J)J
    .locals 0

    .line 97
    iput-wide p1, p0, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->headerOffset:J

    return-wide p1
.end method
