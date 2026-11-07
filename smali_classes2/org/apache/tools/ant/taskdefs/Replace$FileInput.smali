.class Lorg/apache/tools/ant/taskdefs/Replace$FileInput;
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
    name = "FileInput"
.end annotation


# static fields
.field private static final BUFF_SIZE:I = 0x1000


# instance fields
.field private buffer:[C

.field private final is:Ljava/io/InputStream;

.field private outputBuffer:Ljava/lang/StringBuffer;

.field private reader:Ljava/io/Reader;

.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/Replace;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/Replace;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;->this$0:Lorg/apache/tools/ant/taskdefs/Replace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;->outputBuffer:Ljava/lang/StringBuffer;

    const/16 v0, 0x1000

    new-array v0, v0, [C

    .line 367
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;->buffer:[C

    .line 368
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p2, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;->is:Ljava/io/InputStream;

    .line 370
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    .line 371
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/Replace;->access$400(Lorg/apache/tools/ant/taskdefs/Replace;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/Replace;->access$400(Lorg/apache/tools/ant/taskdefs/Replace;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 372
    :cond_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    :goto_0
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;->reader:Ljava/io/Reader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 374
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;->reader:Ljava/io/Reader;

    if-nez p2, :cond_1

    .line 375
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;->is:Ljava/io/InputStream;

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 377
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

    .line 409
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method getOutputBuffer()Ljava/lang/StringBuffer;
    .locals 1

    .line 386
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;->outputBuffer:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method readChunk()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;->reader:Ljava/io/Reader;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;->buffer:[C

    invoke-virtual {v0, v1}, Ljava/io/Reader;->read([C)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 399
    :cond_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;->outputBuffer:Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Replace$FileInput;->buffer:[C

    invoke-direct {v3, v4, v1, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    return v0
.end method
