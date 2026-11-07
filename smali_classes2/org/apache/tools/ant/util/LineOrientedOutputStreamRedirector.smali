.class public Lorg/apache/tools/ant/util/LineOrientedOutputStreamRedirector;
.super Lorg/apache/tools/ant/util/LineOrientedOutputStream;
.source "LineOrientedOutputStreamRedirector.java"


# instance fields
.field private stream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/apache/tools/ant/util/LineOrientedOutputStream;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/apache/tools/ant/util/LineOrientedOutputStreamRedirector;->stream:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-super {p0}, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->close()V

    .line 55
    iget-object v0, p0, Lorg/apache/tools/ant/util/LineOrientedOutputStreamRedirector;->stream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-super {p0}, Lorg/apache/tools/ant/util/LineOrientedOutputStream;->flush()V

    .line 61
    iget-object v0, p0, Lorg/apache/tools/ant/util/LineOrientedOutputStreamRedirector;->stream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method protected processLine(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/apache/tools/ant/util/LineOrientedOutputStreamRedirector;->stream:Ljava/io/OutputStream;

    const-string v1, "%s%n"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method protected processLine([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lorg/apache/tools/ant/util/LineOrientedOutputStreamRedirector;->stream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 44
    iget-object p1, p0, Lorg/apache/tools/ant/util/LineOrientedOutputStreamRedirector;->stream:Ljava/io/OutputStream;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
