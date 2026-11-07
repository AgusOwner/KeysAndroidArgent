.class public Lorg/apache/tools/ant/taskdefs/CVSPass;
.super Lorg/apache/tools/ant/Task;
.source "CVSPass.java"


# instance fields
.field private cvsRoot:Ljava/lang/String;

.field private passFile:Ljava/io/File;

.field private password:Ljava/lang/String;

.field private final shifts:[C


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 72
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/CVSPass;->cvsRoot:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/CVSPass;->passFile:Ljava/io/File;

    .line 47
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/CVSPass;->password:Ljava/lang/String;

    const/16 v0, 0x100

    new-array v0, v0, [C

    .line 50
    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/CVSPass;->shifts:[C

    .line 73
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user.home"

    .line 75
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cygwin.user.home"

    .line 74
    invoke-static {v3, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".cvspass"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/CVSPass;->passFile:Ljava/io/File;

    return-void

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
        0x7s
        0x8s
        0x9s
        0xas
        0xbs
        0xcs
        0xds
        0xes
        0xfs
        0x10s
        0x11s
        0x12s
        0x13s
        0x14s
        0x15s
        0x16s
        0x17s
        0x18s
        0x19s
        0x1as
        0x1bs
        0x1cs
        0x1ds
        0x1es
        0x1fs
        0x72s
        0x78s
        0x35s
        0x4fs
        0x60s
        0x6ds
        0x48s
        0x6cs
        0x46s
        0x40s
        0x4cs
        0x43s
        0x74s
        0x4as
        0x44s
        0x57s
        0x6fs
        0x34s
        0x4bs
        0x77s
        0x31s
        0x22s
        0x52s
        0x51s
        0x5fs
        0x41s
        0x70s
        0x56s
        0x76s
        0x6es
        0x7as
        0x69s
        0x29s
        0x39s
        0x53s
        0x2bs
        0x2es
        0x66s
        0x28s
        0x59s
        0x26s
        0x67s
        0x2ds
        0x32s
        0x2as
        0x7bs
        0x5bs
        0x23s
        0x7ds
        0x37s
        0x36s
        0x42s
        0x7cs
        0x7es
        0x3bs
        0x2fs
        0x5cs
        0x47s
        0x73s
        0x4es
        0x58s
        0x6bs
        0x6as
        0x38s
        0x24s
        0x79s
        0x75s
        0x68s
        0x65s
        0x64s
        0x45s
        0x49s
        0x63s
        0x3fs
        0x5es
        0x5ds
        0x27s
        0x25s
        0x3ds
        0x30s
        0x3as
        0x71s
        0x20s
        0x5as
        0x2cs
        0x62s
        0x3cs
        0x33s
        0x21s
        0x61s
        0x3es
        0x4ds
        0x54s
        0x50s
        0x55s
        0xdfs
        0xe1s
        0xd8s
        0xbbs
        0xa6s
        0xe5s
        0xbds
        0xdes
        0xbcs
        0x8ds
        0xf9s
        0x94s
        0xc8s
        0xb8s
        0x88s
        0xf8s
        0xbes
        0xc7s
        0xaas
        0xb5s
        0xccs
        0x8as
        0xe8s
        0xdas
        0xb7s
        0xffs
        0xeas
        0xdcs
        0xf7s
        0xd5s
        0xcbs
        0xe2s
        0xc1s
        0xaes
        0xacs
        0xe4s
        0xfcs
        0xd9s
        0xc9s
        0x83s
        0xe6s
        0xc5s
        0xd3s
        0x91s
        0xees
        0xa1s
        0xb3s
        0xa0s
        0xd4s
        0xcfs
        0xdds
        0xfes
        0xads
        0xcas
        0x92s
        0xe0s
        0x97s
        0x8cs
        0xc4s
        0xcds
        0x82s
        0x87s
        0x85s
        0x8fs
        0xf6s
        0xc0s
        0x9fs
        0xf4s
        0xefs
        0xb9s
        0xa8s
        0xd7s
        0x90s
        0x8bs
        0xa5s
        0xb4s
        0x9ds
        0x93s
        0xbas
        0xd6s
        0xb0s
        0xe3s
        0xe7s
        0xdbs
        0xa9s
        0xafs
        0x9cs
        0xces
        0xc6s
        0x81s
        0xa4s
        0x96s
        0xd2s
        0x9as
        0xb1s
        0x86s
        0x7fs
        0xb6s
        0x80s
        0x9es
        0xd0s
        0xa2s
        0x84s
        0xa7s
        0xd1s
        0x95s
        0xf1s
        0x99s
        0xfbs
        0xeds
        0xecs
        0xabs
        0xc3s
        0xf3s
        0xe9s
        0xfds
        0xf0s
        0xc2s
        0xfas
        0xbfs
        0x9bs
        0x8es
        0x89s
        0xf5s
        0xebs
        0xa3s
        0xf2s
        0xb2s
        0x98s
    .end array-data
.end method

.method private final mangle(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-char v3, p1, v2

    .line 134
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/CVSPass;->shifts:[C

    aget-char v3, v4, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final execute()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CVSPass;->cvsRoot:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 89
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/CVSPass;->password:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cvsRoot: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/CVSPass;->cvsRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/CVSPass;->log(Ljava/lang/String;I)V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "password: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/CVSPass;->password:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/CVSPass;->log(Ljava/lang/String;I)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "passFile: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/CVSPass;->passFile:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/CVSPass;->log(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 100
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/CVSPass;->passFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/CVSPass;->passFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 107
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 108
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/CVSPass;->cvsRoot:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 109
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    move-object v3, v0

    .line 114
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/CVSPass;->cvsRoot:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " A"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/CVSPass;->password:Ljava/lang/String;

    .line 115
    invoke-direct {p0, v4}, Lorg/apache/tools/ant/taskdefs/CVSPass;->mangle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Writing -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v1}, Lorg/apache/tools/ant/taskdefs/CVSPass;->log(Ljava/lang/String;I)V

    .line 119
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/CVSPass;->passFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 121
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    invoke-static {v3}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/Reader;)V

    .line 127
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/Writer;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_1
    move-object v0, v3

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_2
    move-object v0, v3

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    .line 124
    :goto_3
    :try_start_3
    new-instance v3, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v3, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v2

    .line 126
    :goto_4
    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/Reader;)V

    .line 127
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/Writer;)V

    .line 128
    throw v2

    .line 90
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "password is required"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "cvsroot is required"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCvsroot(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/CVSPass;->cvsRoot:Ljava/lang/String;

    return-void
.end method

.method public setPassfile(Ljava/io/File;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/CVSPass;->passFile:Ljava/io/File;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/CVSPass;->password:Ljava/lang/String;

    return-void
.end method
