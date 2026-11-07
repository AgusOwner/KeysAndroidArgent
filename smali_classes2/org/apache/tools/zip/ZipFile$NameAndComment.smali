.class final Lorg/apache/tools/zip/ZipFile$NameAndComment;
.super Ljava/lang/Object;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NameAndComment"
.end annotation


# instance fields
.field private final comment:[B

.field private final name:[B


# direct methods
.method private constructor <init>([B[B)V
    .locals 0

    .line 1002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1003
    iput-object p1, p0, Lorg/apache/tools/zip/ZipFile$NameAndComment;->name:[B

    .line 1004
    iput-object p2, p0, Lorg/apache/tools/zip/ZipFile$NameAndComment;->comment:[B

    return-void
.end method

.method synthetic constructor <init>([B[BLorg/apache/tools/zip/ZipFile$1;)V
    .locals 0

    .line 999
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/zip/ZipFile$NameAndComment;-><init>([B[B)V

    return-void
.end method

.method static synthetic access$400(Lorg/apache/tools/zip/ZipFile$NameAndComment;)[B
    .locals 0

    .line 999
    iget-object p0, p0, Lorg/apache/tools/zip/ZipFile$NameAndComment;->name:[B

    return-object p0
.end method

.method static synthetic access$500(Lorg/apache/tools/zip/ZipFile$NameAndComment;)[B
    .locals 0

    .line 999
    iget-object p0, p0, Lorg/apache/tools/zip/ZipFile$NameAndComment;->comment:[B

    return-object p0
.end method
