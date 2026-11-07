.class Lorg/apache/tools/zip/ZipFile$Entry;
.super Lorg/apache/tools/zip/ZipEntry;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field private final offsetEntry:Lorg/apache/tools/zip/ZipFile$OffsetEntry;


# direct methods
.method constructor <init>(Lorg/apache/tools/zip/ZipFile$OffsetEntry;)V
    .locals 0

    .line 1041
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipEntry;-><init>()V

    .line 1042
    iput-object p1, p0, Lorg/apache/tools/zip/ZipFile$Entry;->offsetEntry:Lorg/apache/tools/zip/ZipFile$OffsetEntry;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1057
    invoke-super {p0, p1}, Lorg/apache/tools/zip/ZipEntry;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1059
    check-cast p1, Lorg/apache/tools/zip/ZipFile$Entry;

    .line 1060
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile$Entry;->offsetEntry:Lorg/apache/tools/zip/ZipFile$OffsetEntry;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/tools/zip/ZipFile$OffsetEntry;)J

    move-result-wide v2

    iget-object v0, p1, Lorg/apache/tools/zip/ZipFile$Entry;->offsetEntry:Lorg/apache/tools/zip/ZipFile$OffsetEntry;

    .line 1061
    invoke-static {v0}, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/tools/zip/ZipFile$OffsetEntry;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile$Entry;->offsetEntry:Lorg/apache/tools/zip/ZipFile$OffsetEntry;

    .line 1062
    invoke-static {v0}, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->access$000(Lorg/apache/tools/zip/ZipFile$OffsetEntry;)J

    move-result-wide v2

    iget-object p1, p1, Lorg/apache/tools/zip/ZipFile$Entry;->offsetEntry:Lorg/apache/tools/zip/ZipFile$OffsetEntry;

    .line 1063
    invoke-static {p1}, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->access$000(Lorg/apache/tools/zip/ZipFile$OffsetEntry;)J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method getOffsetEntry()Lorg/apache/tools/zip/ZipFile$OffsetEntry;
    .locals 1

    .line 1046
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile$Entry;->offsetEntry:Lorg/apache/tools/zip/ZipFile$OffsetEntry;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1051
    invoke-super {p0}, Lorg/apache/tools/zip/ZipEntry;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile$Entry;->offsetEntry:Lorg/apache/tools/zip/ZipFile$OffsetEntry;

    .line 1052
    invoke-static {v1}, Lorg/apache/tools/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/tools/zip/ZipFile$OffsetEntry;)J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    rem-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method
