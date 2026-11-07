.class public Lorg/apache/tools/ant/taskdefs/JikesOutputParser;
.super Ljava/lang/Object;
.source "JikesOutputParser.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected br:Ljava/io/BufferedReader;

.field protected emacsMode:Z

.field protected error:Z

.field protected errorFlag:Z

.field protected errors:I

.field protected task:Lorg/apache/tools/ant/Task;

.field protected warnings:I


# direct methods
.method protected constructor <init>(Lorg/apache/tools/ant/Task;Z)V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/JikesOutputParser;->errorFlag:Z

    .line 48
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/JikesOutputParser;->error:Z

    .line 99
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "As of Ant 1.2 released in October 2000, the JikesOutputParser class"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "is considered to be dead code by the Ant developers and is unmaintained."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Don\'t use it!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/JikesOutputParser;->task:Lorg/apache/tools/ant/Task;

    .line 106
    iput-boolean p2, p0, Lorg/apache/tools/ant/taskdefs/JikesOutputParser;->emacsMode:Z

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    .line 171
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/JikesOutputParser;->emacsMode:Z

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/JikesOutputParser;->task:Lorg/apache/tools/ant/Task;

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/JikesOutputParser;->error:Z

    xor-int/lit8 v1, v1, 0x1

    const-string v2, ""

    invoke-virtual {v0, v2, v1}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/JikesOutputParser;->task:Lorg/apache/tools/ant/Task;

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/JikesOutputParser;->error:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    return-void
.end method

.method private parseEmacsOutput(Ljava/io/BufferedReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/JikesOutputParser;->parseStandardOutput(Ljava/io/BufferedReader;)V

    return-void
.end method

.method private parseStandardOutput(Ljava/io/BufferedReader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 135
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "error"

    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 140
    invoke-direct {p0, v3}, Lorg/apache/tools/ant/taskdefs/JikesOutputParser;->setError(Z)V

    goto :goto_1

    :cond_1
    const-string v2, "warning"

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 142
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/JikesOutputParser;->setError(Z)V

    goto :goto_1

    .line 150
    :cond_2
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/JikesOutputParser;->emacsMode:Z

    if-eqz v1, :cond_3

    .line 151
    invoke-direct {p0, v3}, Lorg/apache/tools/ant/taskdefs/JikesOutputParser;->setError(Z)V

    .line 154
    :cond_3
    :goto_1
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/JikesOutputParser;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private setError(Z)V
    .locals 0

    .line 164
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/JikesOutputParser;->error:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 166
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/JikesOutputParser;->errorFlag:Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected getErrorFlag()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/JikesOutputParser;->errorFlag:Z

    return v0
.end method

.method protected parseOutput(Ljava/io/BufferedReader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/JikesOutputParser;->emacsMode:Z

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/JikesOutputParser;->parseEmacsOutput(Ljava/io/BufferedReader;)V

    goto :goto_0

    .line 118
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/JikesOutputParser;->parseStandardOutput(Ljava/io/BufferedReader;)V

    :goto_0
    return-void
.end method

.method public setProcessErrorStream(Ljava/io/InputStream;)V
    .locals 0

    return-void
.end method

.method public setProcessInputStream(Ljava/io/OutputStream;)V
    .locals 0

    return-void
.end method

.method public setProcessOutputStream(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/JikesOutputParser;->br:Ljava/io/BufferedReader;

    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/JikesOutputParser;->br:Ljava/io/BufferedReader;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/JikesOutputParser;->parseOutput(Ljava/io/BufferedReader;)V

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method
