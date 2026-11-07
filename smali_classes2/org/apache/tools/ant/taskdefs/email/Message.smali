.class public Lorg/apache/tools/ant/taskdefs/email/Message;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "Message.java"


# instance fields
.field private buffer:Ljava/lang/StringBuffer;

.field private charset:Ljava/lang/String;

.field private inputEncoding:Ljava/lang/String;

.field private messageSource:Ljava/io/File;

.field private mimeType:Ljava/lang/String;

.field private specified:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->messageSource:Ljava/io/File;

    .line 41
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "text/plain"

    .line 42
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->mimeType:Ljava/lang/String;

    const/4 v1, 0x0

    .line 43
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->specified:Z

    .line 44
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->charset:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->messageSource:Ljava/io/File;

    .line 41
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "text/plain"

    .line 42
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->mimeType:Ljava/lang/String;

    const/4 v1, 0x0

    .line 43
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->specified:Z

    .line 44
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->charset:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->messageSource:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->messageSource:Ljava/io/File;

    .line 41
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->buffer:Ljava/lang/StringBuffer;

    const-string v1, "text/plain"

    .line 42
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->mimeType:Ljava/lang/String;

    const/4 v1, 0x0

    .line 43
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->specified:Z

    .line 44
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->charset:Ljava/lang/String;

    .line 57
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/email/Message;->addText(Ljava/lang/String;)V

    return-void
.end method

.method private getReader(Ljava/io/File;)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->inputEncoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1

    .line 182
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->inputEncoding:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 184
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 185
    throw v0

    .line 188
    :cond_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    return-object v0
.end method


# virtual methods
.method public addText(Ljava/lang/String;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public isMimeTypeSpecified()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->specified:Z

    return v0
.end method

.method public print(Ljava/io/PrintStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->charset:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    goto :goto_0

    .line 119
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->charset:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 120
    :goto_0
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->messageSource:Ljava/io/File;

    if-eqz p1, :cond_2

    .line 122
    new-instance p1, Ljava/io/BufferedReader;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->messageSource:Ljava/io/File;

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/email/Message;->getReader(Ljava/io/File;)Ljava/io/Reader;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 124
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 125
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/email/Message;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 128
    :cond_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 122
    :try_start_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0

    .line 130
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/email/Message;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 133
    :goto_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->charset:Ljava/lang/String;

    return-void
.end method

.method public setInputEncoding(Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->inputEncoding:Ljava/lang/String;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->mimeType:Ljava/lang/String;

    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->specified:Z

    return-void
.end method

.method public setSrc(Ljava/io/File;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/email/Message;->messageSource:Ljava/io/File;

    return-void
.end method
