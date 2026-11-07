.class public Lorg/apache/tools/ant/taskdefs/LogStreamHandler;
.super Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;
.source "LogStreamHandler.java"


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/ProjectComponent;II)V
    .locals 1

    .line 51
    new-instance v0, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    invoke-direct {v0, p1, p2}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/ProjectComponent;I)V

    new-instance p2, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    invoke-direct {p2, p1, p3}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/ProjectComponent;I)V

    invoke-direct {p0, v0, p2}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Task;II)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;-><init>(Lorg/apache/tools/ant/ProjectComponent;II)V

    return-void
.end method


# virtual methods
.method public stop()V
    .locals 1

    .line 60
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;->stop()V

    .line 61
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;->getErr()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 62
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;->getOut()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    return-void
.end method
