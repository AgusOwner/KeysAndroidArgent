.class public Lorg/apache/tools/ant/taskdefs/Jikes;
.super Ljava/lang/Object;
.source "Jikes.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MAX_FILES_ON_COMMAND_LINE:I = 0xfa


# instance fields
.field protected command:Ljava/lang/String;

.field protected jop:Lorg/apache/tools/ant/taskdefs/JikesOutputParser;

.field protected project:Lorg/apache/tools/ant/Project;


# direct methods
.method protected constructor <init>(Lorg/apache/tools/ant/taskdefs/JikesOutputParser;Ljava/lang/String;Lorg/apache/tools/ant/Project;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "As of Ant 1.2 released in October 2000, the Jikes class"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "is considered to be dead code by the Ant developers and is unmaintained."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 65
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Don\'t use it!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Jikes;->jop:Lorg/apache/tools/ant/taskdefs/JikesOutputParser;

    .line 68
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/Jikes;->command:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lorg/apache/tools/ant/taskdefs/Jikes;->project:Lorg/apache/tools/ant/Project;

    return-void
.end method


# virtual methods
.method protected compile([Ljava/lang/String;)V
    .locals 12

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "windows"

    .line 83
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    array-length v1, p1

    const/16 v4, 0xfa

    if-le v1, v4, :cond_1

    .line 84
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/Jikes;->project:Lorg/apache/tools/ant/Project;

    const-string v7, "jikes"

    const-string v8, "tmp"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v5 .. v11}, Lorg/apache/tools/ant/util/FileUtils;->createTempFile(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZ)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 86
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 87
    :try_start_2
    array-length v4, p1

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, p1, v5

    .line 88
    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    .line 92
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Jikes;->command:Ljava/lang/String;

    aput-object v4, p1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 86
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_0
    move-exception p1

    .line 95
    :try_start_6
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Error creating temporary file"

    invoke-direct {v1, v2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 98
    :cond_1
    array-length v1, p1

    add-int/2addr v1, v3

    new-array v1, v1, [Ljava/lang/String;

    .line 99
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Jikes;->command:Ljava/lang/String;

    aput-object v4, v1, v2

    .line 100
    array-length v4, p1

    invoke-static {p1, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object p1, v1

    .line 108
    :goto_2
    :try_start_7
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Execute;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Jikes;->jop:Lorg/apache/tools/ant/taskdefs/JikesOutputParser;

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)V

    .line 109
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Jikes;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/Execute;->setAntRun(Lorg/apache/tools/ant/Project;)V

    .line 110
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Jikes;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v2}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/Execute;->setWorkingDirectory(Ljava/io/File;)V

    .line 111
    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->execute()I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v0, :cond_2

    .line 117
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_2

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    :cond_2
    return-void

    :catch_1
    move-exception p1

    .line 114
    :try_start_8
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Error running Jikes compiler"

    invoke-direct {v1, v2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_3

    .line 117
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_3

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 120
    :cond_3
    throw p1
.end method
