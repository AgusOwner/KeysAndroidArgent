.class public Lorg/apache/tools/ant/util/ConcatResourceInputStream;
.super Ljava/io/InputStream;
.source "ConcatResourceInputStream.java"


# static fields
.field private static final EOF:I = -0x1


# instance fields
.field private currentStream:Ljava/io/InputStream;

.field private eof:Z

.field private ignoreErrors:Z

.field private iter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation
.end field

.field private managingPc:Lorg/apache/tools/ant/ProjectComponent;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->eof:Z

    .line 43
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->ignoreErrors:Z

    .line 51
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->iter:Ljava/util/Iterator;

    return-void
.end method

.method private closeCurrent()V
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->currentStream:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->currentStream:Ljava/io/InputStream;

    return-void
.end method

.method private nextResource()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->closeCurrent()V

    .line 126
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 128
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Concatenating "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->toLongString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->log(Ljava/lang/String;I)V

    .line 133
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->currentStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 136
    iget-boolean v2, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->ignoreErrors:Z

    if-eqz v2, :cond_1

    goto :goto_0

    .line 137
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to get input stream for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->log(Ljava/lang/String;I)V

    .line 138
    throw v1

    :cond_2
    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->eof:Z

    return-void
.end method

.method private readCurrent()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->eof:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->currentStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->closeCurrent()V

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->eof:Z

    return-void
.end method

.method public isIgnoreErrors()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->ignoreErrors:Z

    return v0
.end method

.method public log(Ljava/lang/String;I)V
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->managingPc:Lorg/apache/tools/ant/ProjectComponent;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    .line 116
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    goto :goto_0

    :cond_1
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->eof:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 90
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->readCurrent()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 92
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->nextResource()V

    .line 93
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->readCurrent()I

    move-result v0

    :cond_1
    return v0
.end method

.method public setIgnoreErrors(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->ignoreErrors:Z

    return-void
.end method

.method public setManagingComponent(Lorg/apache/tools/ant/ProjectComponent;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lorg/apache/tools/ant/util/ConcatResourceInputStream;->managingPc:Lorg/apache/tools/ant/ProjectComponent;

    return-void
.end method
