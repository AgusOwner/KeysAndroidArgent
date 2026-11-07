.class Lorg/apache/tools/ant/taskdefs/Get$GetThread;
.super Ljava/lang/Thread;
.source "Get.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Get;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetThread"
.end annotation


# instance fields
.field private connection:Ljava/net/URLConnection;

.field private final dest:Ljava/io/File;

.field private exception:Lorg/apache/tools/ant/BuildException;

.field private final hasTimestamp:Z

.field private ioexception:Ljava/io/IOException;

.field private is:Ljava/io/InputStream;

.field private final logLevel:I

.field private os:Ljava/io/OutputStream;

.field private final progress:Lorg/apache/tools/ant/taskdefs/Get$DownloadProgress;

.field private redirections:I

.field private final source:Ljava/net/URL;

.field private success:Z

.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/Get;

.field private final timestamp:J

.field private userAgent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/Get;Ljava/net/URL;Ljava/io/File;ZJLorg/apache/tools/ant/taskdefs/Get$DownloadProgress;ILjava/lang/String;)V
    .locals 1

    .line 676
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 666
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->success:Z

    const/4 v0, 0x0

    .line 667
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->ioexception:Ljava/io/IOException;

    .line 668
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->exception:Lorg/apache/tools/ant/BuildException;

    .line 669
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->is:Ljava/io/InputStream;

    .line 670
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->os:Ljava/io/OutputStream;

    .line 672
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->redirections:I

    .line 677
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->source:Ljava/net/URL;

    .line 678
    iput-object p3, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->dest:Ljava/io/File;

    .line 679
    iput-boolean p4, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->hasTimestamp:Z

    .line 680
    iput-wide p5, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->timestamp:J

    .line 681
    iput-object p7, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->progress:Lorg/apache/tools/ant/taskdefs/Get$DownloadProgress;

    .line 682
    iput p8, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->logLevel:I

    .line 683
    iput-object p9, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->userAgent:Ljava/lang/String;

    return-void
.end method

.method private downloadFile()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 845
    :goto_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/Get;->access$800(Lorg/apache/tools/ant/taskdefs/Get;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 850
    :try_start_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->connection:Ljava/net/URLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->is:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 853
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error opening connection "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->logLevel:I

    invoke-virtual {v3, v2, v4}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 856
    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->is:Ljava/io/InputStream;

    if-nez v1, :cond_2

    .line 857
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t get "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->source:Ljava/net/URL;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->dest:Ljava/io/File;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v5, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->logLevel:I

    invoke-virtual {v1, v2, v5}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;I)V

    .line 858
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Get;->access$300(Lorg/apache/tools/ant/taskdefs/Get;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 861
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->source:Ljava/net/URL;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->dest:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    .line 862
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Get;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 865
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Get;->access$400(Lorg/apache/tools/ant/taskdefs/Get;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->connection:Ljava/net/URLConnection;

    .line 866
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gzip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 867
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->is:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->is:Ljava/io/InputStream;

    .line 870
    :cond_3
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->dest:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    new-array v2, v0, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->os:Ljava/io/OutputStream;

    .line 871
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->progress:Lorg/apache/tools/ant/taskdefs/Get$DownloadProgress;

    invoke-interface {v1}, Lorg/apache/tools/ant/taskdefs/Get$DownloadProgress;->beginDownload()V

    const v1, 0x19000

    :try_start_1
    new-array v1, v1, [B

    .line 876
    :goto_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->is:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_4

    .line 877
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->os:Ljava/io/OutputStream;

    invoke-virtual {v3, v1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 878
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->progress:Lorg/apache/tools/ant/taskdefs/Get$DownloadProgress;

    invoke-interface {v2}, Lorg/apache/tools/ant/taskdefs/Get$DownloadProgress;->onTick()V

    goto :goto_2

    .line 880
    :cond_4
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->isInterrupted()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 882
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->os:Ljava/io/OutputStream;

    invoke-static {v2}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 883
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->is:Ljava/io/InputStream;

    invoke-static {v2}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    if-nez v0, :cond_5

    .line 889
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->dest:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 892
    :cond_5
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->progress:Lorg/apache/tools/ant/taskdefs/Get$DownloadProgress;

    invoke-interface {v0}, Lorg/apache/tools/ant/taskdefs/Get$DownloadProgress;->endDownload()V

    return v1

    :catchall_0
    move-exception v0

    .line 882
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->os:Ljava/io/OutputStream;

    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 883
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->is:Ljava/io/InputStream;

    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 889
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->dest:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 891
    throw v0
.end method

.method private get()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 699
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->source:Ljava/net/URL;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Get;->access$000(Lorg/apache/tools/ant/taskdefs/Get;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/Get;->access$100(Lorg/apache/tools/ant/taskdefs/Get;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->openConnection(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->connection:Ljava/net/URLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 705
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->downloadFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 710
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Get;->access$200(Lorg/apache/tools/ant/taskdefs/Get;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 711
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->updateTimeStamp()V

    :cond_1
    return v0
.end method

.method private openConnection(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URLConnection;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 753
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 756
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->hasTimestamp:Z

    if-eqz v1, :cond_0

    .line 757
    iget-wide v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setIfModifiedSince(J)V

    :cond_0
    const-string v1, "User-Agent"

    .line 760
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    if-eqz p3, :cond_2

    .line 764
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 769
    new-instance v2, Lorg/apache/tools/ant/taskdefs/Get$Base64Converter;

    invoke-direct {v2}, Lorg/apache/tools/ant/taskdefs/Get$Base64Converter;-><init>()V

    .line 770
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/taskdefs/Get$Base64Converter;->encode([B)Ljava/lang/String;

    move-result-object v1

    .line 771
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Basic "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-virtual {v0, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Get;->access$400(Lorg/apache/tools/ant/taskdefs/Get;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    .line 775
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    :cond_3
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Get;->access$500(Lorg/apache/tools/ant/taskdefs/Get;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 780
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Adding header \'%s\' "

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;)V

    .line 781
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 784
    :cond_4
    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_5

    .line 785
    move-object v2, v0

    check-cast v2, Ljava/net/HttpURLConnection;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 786
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/Get;->access$600(Lorg/apache/tools/ant/taskdefs/Get;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 790
    :cond_5
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_e

    .line 798
    move-object v1, v0

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 799
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 800
    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/Get;->isMoved(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_a

    const-string v0, "Location"

    .line 801
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 802
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x12d

    if-ne v2, v3, :cond_6

    const-string v2, " permanently"

    goto :goto_1

    :cond_6
    const-string v2, ""

    .line 804
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " moved to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 805
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    iget v3, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->logLevel:I

    invoke-virtual {v2, v1, v3}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;I)V

    .line 806
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 807
    invoke-direct {p0, p1, v1}, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->redirectionAllowed(Ljava/net/URL;Ljava/net/URL;)Z

    move-result p1

    if-nez p1, :cond_7

    return-object v4

    .line 811
    :cond_7
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/Get;->access$700(Lorg/apache/tools/ant/taskdefs/Get;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    move-object p2, v4

    .line 812
    :goto_2
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/Get;->access$700(Lorg/apache/tools/ant/taskdefs/Get;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    move-object p3, v4

    .line 810
    :goto_3
    invoke-direct {p0, v1, p2, p3}, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->openConnection(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object p1

    return-object p1

    .line 815
    :cond_a
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide p1

    const/16 p3, 0x130

    if-eq v2, p3, :cond_d

    const-wide/16 v5, 0x0

    cmp-long p3, p1, v5

    if-eqz p3, :cond_b

    .line 816
    iget-boolean p3, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->hasTimestamp:Z

    if-eqz p3, :cond_b

    iget-wide v5, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->timestamp:J

    cmp-long p1, v5, p1

    if-ltz p1, :cond_b

    goto :goto_4

    :cond_b
    const/16 p1, 0x191

    if-ne v2, p1, :cond_e

    .line 828
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/Get;->access$300(Lorg/apache/tools/ant/taskdefs/Get;)Z

    move-result p1

    const-string p2, "HTTP Authorization failure"

    if-eqz p1, :cond_c

    .line 829
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    iget p3, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->logLevel:I

    invoke-virtual {p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;I)V

    return-object v4

    .line 832
    :cond_c
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 822
    :cond_d
    :goto_4
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    const-string p2, "Not modified - so not downloaded"

    iget p3, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->logLevel:I

    invoke-virtual {p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;I)V

    return-object v4

    :cond_e
    return-object v0

    :catch_0
    move-exception p1

    .line 793
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Failed to parse "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->source:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private redirectionAllowed(Ljava/net/URL;Ljava/net/URL;)Z
    .locals 3

    .line 719
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "http"

    .line 720
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https"

    .line 721
    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    .line 720
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 722
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Redirection detected from "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 723
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ". Protocol switch unsafe, not allowed."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 725
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    invoke-static {p2}, Lorg/apache/tools/ant/taskdefs/Get;->access$300(Lorg/apache/tools/ant/taskdefs/Get;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 726
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->logLevel:I

    invoke-virtual {p2, p1, v0}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;I)V

    return v1

    .line 729
    :cond_1
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 733
    :cond_2
    iget p1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->redirections:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->redirections:I

    const/16 v0, 0x19

    if-le p1, v0, :cond_4

    .line 737
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/Get;->access$300(Lorg/apache/tools/ant/taskdefs/Get;)Z

    move-result p1

    const-string p2, "More than 25 times redirected, giving up"

    if-eqz p1, :cond_3

    .line 738
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->logLevel:I

    invoke-virtual {p1, p2, v0}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;I)V

    return v1

    .line 741
    :cond_3
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return p2
.end method

.method private updateTimeStamp()V
    .locals 8

    .line 897
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->connection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v0

    .line 898
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/Get;->access$900(Lorg/apache/tools/ant/taskdefs/Get;)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    .line 899
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 900
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "last modified = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    cmp-long v6, v0, v3

    if-nez v6, :cond_0

    const-string v6, " - using current time instead"

    goto :goto_0

    :cond_0
    const-string v6, ""

    .line 901
    :goto_0
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v6, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->logLevel:I

    .line 900
    invoke-virtual {v5, v2, v6}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;I)V

    :cond_1
    cmp-long v2, v0, v3

    if-eqz v2, :cond_2

    .line 904
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/Get;->access$1000()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->dest:Ljava/io/File;

    invoke-virtual {v2, v3, v0, v1}, Lorg/apache/tools/ant/util/FileUtils;->setFileLastModified(Ljava/io/File;J)V

    :cond_2
    return-void
.end method


# virtual methods
.method closeStreams()V
    .locals 1

    .line 928
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->interrupt()V

    .line 929
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->os:Ljava/io/OutputStream;

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 930
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->is:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 931
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->success:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->dest:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->dest:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .line 689
    :try_start_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->get()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->success:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 693
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->exception:Lorg/apache/tools/ant/BuildException;

    goto :goto_0

    :catch_1
    move-exception v0

    .line 691
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->ioexception:Ljava/io/IOException;

    :goto_0
    return-void
.end method

.method wasSuccessful()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 914
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->ioexception:Ljava/io/IOException;

    if-nez v0, :cond_1

    .line 917
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->exception:Lorg/apache/tools/ant/BuildException;

    if-nez v0, :cond_0

    .line 920
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->success:Z

    return v0

    .line 918
    :cond_0
    throw v0

    .line 915
    :cond_1
    throw v0
.end method
