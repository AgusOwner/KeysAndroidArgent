.class Lorg/apache/tools/zip/ZipFile$BoundedInputStream;
.super Ljava/io/InputStream;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoundedInputStream"
.end annotation


# instance fields
.field private addDummyByte:Z

.field private loc:J

.field private remaining:J

.field final synthetic this$0:Lorg/apache/tools/zip/ZipFile;


# direct methods
.method constructor <init>(Lorg/apache/tools/zip/ZipFile;JJ)V
    .locals 0

    .line 940
    iput-object p1, p0, Lorg/apache/tools/zip/ZipFile$BoundedInputStream;->this$0:Lorg/apache/tools/zip/ZipFile;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 p1, 0x0

    .line 938
    iput-boolean p1, p0, Lorg/apache/tools/zip/ZipFile$BoundedInputStream;->addDummyByte:Z

    .line 941
    iput-wide p4, p0, Lorg/apache/tools/zip/ZipFile$BoundedInputStream;->remaining:J

    .line 942
    iput-wide p2, p0, Lorg/apache/tools/zip/ZipFile$BoundedInputStream;->loc:J

    return-void
.end method


# virtual methods
.method addDummy()V
    .locals 1

    const/4 v0, 0x1

    .line 995
    iput-boolean v0, p0, Lorg/apache/tools/zip/ZipFile$BoundedInputStream;->addDummyByte:Z

    return-void
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 947
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipFile$BoundedInputStream;->remaining:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lorg/apache/tools/zip/ZipFile$BoundedInputStream;->remaining:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_1

    .line 948
    iget-boolean v0, p0, Lorg/apache/tools/zip/ZipFile$BoundedInputStream;->addDummyByte:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 949
    iput-boolean v0, p0, Lorg/apache/tools/zip/ZipFile$BoundedInputStream;->addDummyByte:Z

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0

    .line 954
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile$BoundedInputStream;->this$0:Lorg/apache/tools/zip/ZipFile;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipFile;->access$600(Lorg/apache/tools/zip/ZipFile;)Ljava/io/RandomAccessFile;

    move-result-object v0

    monitor-enter v0

    .line 955
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile$BoundedInputStream;->this$0:Lorg/apache/tools/zip/ZipFile;

    invoke-static {v1}, Lorg/apache/tools/zip/ZipFile;->access$600(Lorg/apache/tools/zip/ZipFile;)Ljava/io/RandomAccessFile;

    move-result-object v1

    iget-wide v4, p0, Lorg/apache/tools/zip/ZipFile$BoundedInputStream;->loc:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/tools/zip/ZipFile$BoundedInputStream;->loc:J

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 956
    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile$BoundedInputStream;->this$0:Lorg/apache/tools/zip/ZipFile;

    invoke-static {v1}, Lorg/apache/tools/zip/ZipFile;->access$600(Lorg/apache/tools/zip/ZipFile;)Ljava/io/RandomAccessFile;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 957
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 962
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipFile$BoundedInputStream;->remaining:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gtz v2, :cond_1

    .line 963
    iget-boolean p3, p0, Lorg/apache/tools/zip/ZipFile$BoundedInputStream;->addDummyByte:Z

    if-eqz p3, :cond_0

    .line 964
    iput-boolean v3, p0, Lorg/apache/tools/zip/ZipFile$BoundedInputStream;->addDummyByte:Z

    .line 965
    aput-byte v3, p1, p2

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1

    :cond_1
    if-gtz p3, :cond_2

    return v3

    :cond_2
    int-to-long v2, p3

    cmp-long v2, v2, v0

    if-lez v2, :cond_3

    long-to-int p3, v0

    .line 979
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile$BoundedInputStream;->this$0:Lorg/apache/tools/zip/ZipFile;

    invoke-static {v0}, Lorg/apache/tools/zip/ZipFile;->access$600(Lorg/apache/tools/zip/ZipFile;)Ljava/io/RandomAccessFile;

    move-result-object v0

    monitor-enter v0

    .line 980
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile$BoundedInputStream;->this$0:Lorg/apache/tools/zip/ZipFile;

    invoke-static {v1}, Lorg/apache/tools/zip/ZipFile;->access$600(Lorg/apache/tools/zip/ZipFile;)Ljava/io/RandomAccessFile;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/tools/zip/ZipFile$BoundedInputStream;->loc:J

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 981
    iget-object v1, p0, Lorg/apache/tools/zip/ZipFile$BoundedInputStream;->this$0:Lorg/apache/tools/zip/ZipFile;

    invoke-static {v1}, Lorg/apache/tools/zip/ZipFile;->access$600(Lorg/apache/tools/zip/ZipFile;)Ljava/io/RandomAccessFile;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    .line 982
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_4

    .line 984
    iget-wide p2, p0, Lorg/apache/tools/zip/ZipFile$BoundedInputStream;->loc:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lorg/apache/tools/zip/ZipFile$BoundedInputStream;->loc:J

    .line 985
    iget-wide p2, p0, Lorg/apache/tools/zip/ZipFile$BoundedInputStream;->remaining:J

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lorg/apache/tools/zip/ZipFile$BoundedInputStream;->remaining:J

    :cond_4
    return p1

    :catchall_0
    move-exception p1

    .line 982
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
