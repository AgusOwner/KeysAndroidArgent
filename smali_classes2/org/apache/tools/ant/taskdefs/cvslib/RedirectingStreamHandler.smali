.class Lorg/apache/tools/ant/taskdefs/cvslib/RedirectingStreamHandler;
.super Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;
.source "RedirectingStreamHandler.java"


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;)V
    .locals 1

    .line 32
    new-instance v0, Lorg/apache/tools/ant/taskdefs/cvslib/RedirectingOutputStream;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/taskdefs/cvslib/RedirectingOutputStream;-><init>(Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;)V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method getErrors()Ljava/lang/String;
    .locals 2

    .line 39
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/RedirectingStreamHandler;->getErr()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    const-string v1, "ASCII"

    .line 41
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public stop()V
    .locals 1

    .line 49
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->stop()V

    .line 50
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/RedirectingStreamHandler;->getErr()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 51
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/RedirectingStreamHandler;->getOut()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    return-void
.end method
