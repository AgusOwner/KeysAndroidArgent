.class Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;
.super Ljava/lang/Object;
.source "Replace.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Replace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileOutput"
.end annotation


# instance fields
.field private inputBuffer:Ljava/lang/StringBuffer;

.field private final os:Ljava/io/OutputStream;

.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/Replace;

.field private writer:Ljava/io/Writer;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/Replace;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;->this$0:Lorg/apache/tools/ant/taskdefs/Replace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p2, v0}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;->os:Ljava/io/OutputStream;

    .line 432
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    .line 433
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/Replace;->access$400(Lorg/apache/tools/ant/taskdefs/Replace;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/Replace;->access$400(Lorg/apache/tools/ant/taskdefs/Replace;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 434
    :cond_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    :goto_0
    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;->writer:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 436
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;->writer:Ljava/io/Writer;

    if-nez p2, :cond_1

    .line 437
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;->os:Ljava/io/OutputStream;

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 439
    :cond_1
    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 472
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;->process()Z

    .line 473
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method process()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;->writer:Ljava/io/Writer;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;->inputBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    return v2
.end method

.method setInputBuffer(Ljava/lang/StringBuffer;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileOutput;->inputBuffer:Ljava/lang/StringBuffer;

    return-void
.end method
