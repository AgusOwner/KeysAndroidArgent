.class public Lorg/apache/tools/ant/util/ConcatFileInputStream;
.super Ljava/io/InputStream;
.source "ConcatFileInputStream.java"


# static fields
.field private static final EOF:I = -0x1


# instance fields
.field private currentIndex:I

.field private currentStream:Ljava/io/InputStream;

.field private eof:Z

.field private file:[Ljava/io/File;

.field private managingPc:Lorg/apache/tools/ant/ProjectComponent;


# direct methods
.method public constructor <init>([Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->currentIndex:I

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->eof:Z

    .line 51
    iput-object p1, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->file:[Ljava/io/File;

    return-void
.end method

.method private closeCurrent()V
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->currentStream:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->currentStream:Ljava/io/InputStream;

    return-void
.end method

.method private openFile(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ConcatFileInputStream;->closeCurrent()V

    .line 120
    iget-object v0, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->file:[Ljava/io/File;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Opening "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->file:[Ljava/io/File;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/util/ConcatFileInputStream;->log(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 123
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->file:[Ljava/io/File;

    aget-object v2, v2, p1

    .line 124
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    new-array v3, v0, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->currentStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to open "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->file:[Ljava/io/File;

    aget-object p1, v3, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/util/ConcatFileInputStream;->log(Ljava/lang/String;I)V

    .line 127
    throw v1

    :cond_0
    const/4 p1, 0x1

    .line 130
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->eof:Z

    :goto_0
    return-void
.end method

.method private readCurrent()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->eof:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->currentStream:Ljava/io/InputStream;

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

    .line 60
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ConcatFileInputStream;->closeCurrent()V

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->eof:Z

    return-void
.end method

.method public log(Ljava/lang/String;I)V
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->managingPc:Lorg/apache/tools/ant/ProjectComponent;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/ProjectComponent;->log(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    .line 107
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_1
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ConcatFileInputStream;->readCurrent()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 72
    iget-boolean v1, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->eof:Z

    if-nez v1, :cond_0

    .line 73
    iget v0, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->currentIndex:I

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/util/ConcatFileInputStream;->openFile(I)V

    .line 74
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ConcatFileInputStream;->readCurrent()I

    move-result v0

    :cond_0
    return v0
.end method

.method public setManagingComponent(Lorg/apache/tools/ant/ProjectComponent;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/apache/tools/ant/util/ConcatFileInputStream;->managingPc:Lorg/apache/tools/ant/ProjectComponent;

    return-void
.end method

.method public setManagingTask(Lorg/apache/tools/ant/Task;)V
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/ConcatFileInputStream;->setManagingComponent(Lorg/apache/tools/ant/ProjectComponent;)V

    return-void
.end method
