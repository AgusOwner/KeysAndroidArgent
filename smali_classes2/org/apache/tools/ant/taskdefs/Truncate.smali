.class public Lorg/apache/tools/ant/taskdefs/Truncate;
.super Lorg/apache/tools/ant/Task;
.source "Truncate.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final FILL_BUFFER:[B

.field private static final INVALID_LENGTH:Ljava/lang/String; = "Cannot truncate to length "

.field private static final NO_CHILD:Ljava/lang/String; = "No files specified."

.field private static final READ_WRITE:Ljava/lang/String; = "rw"

.field private static final ZERO:Ljava/lang/Long;


# instance fields
.field private adjust:Ljava/lang/Long;

.field private create:Z

.field private length:Ljava/lang/Long;

.field private mkdirs:Z

.field private path:Lorg/apache/tools/ant/types/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 43
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Truncate;->ZERO:Ljava/lang/Long;

    .line 51
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Truncate;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 53
    sput-object v0, Lorg/apache/tools/ant/taskdefs/Truncate;->FILL_BUFFER:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->create:Z

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->mkdirs:Z

    return-void
.end method

.method private declared-synchronized getPath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    monitor-enter p0

    .line 199
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->path:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Truncate;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->path:Lorg/apache/tools/ant/types/Path;

    .line 202
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->path:Lorg/apache/tools/ant/types/Path;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private process(Ljava/io/File;)V
    .locals 12

    .line 160
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 161
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->length:Ljava/lang/Long;

    if-nez v2, :cond_0

    .line 162
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->adjust:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    return-void

    .line 170
    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    cmp-long p1, v2, v0

    const/4 v5, 0x1

    const-string v6, " closing "

    const-string v7, "Caught "

    if-lez p1, :cond_2

    .line 177
    :try_start_1
    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_1
    cmp-long p1, v0, v2

    if-gez p1, :cond_3

    .line 179
    sget-object p1, Lorg/apache/tools/ant/taskdefs/Truncate;->FILL_BUFFER:[B

    array-length v8, p1

    int-to-long v8, v8

    sub-long v10, v2, v0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    const/4 v10, 0x0

    long-to-int v11, v8

    .line 181
    invoke-virtual {v4, p1, v10, v11}, Ljava/io/RandomAccessFile;->write([BII)V

    add-long/2addr v0, v8

    goto :goto_1

    .line 185
    :cond_2
    invoke-virtual {v4, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :cond_3
    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v5}, Lorg/apache/tools/ant/taskdefs/Truncate;->log(Ljava/lang/String;I)V

    :goto_2
    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 188
    :try_start_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception working with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 191
    :goto_3
    :try_start_4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lorg/apache/tools/ant/taskdefs/Truncate;->log(Ljava/lang/String;I)V

    .line 195
    :goto_4
    throw p1

    :catch_3
    move-exception v0

    .line 172
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not open "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " for writing"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private shouldProcess(Ljava/io/File;)Z
    .locals 5

    .line 137
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 140
    :cond_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->create:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 145
    :cond_1
    :try_start_0
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Truncate;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->mkdirs:Z

    invoke-virtual {v0, p1, v3}, Lorg/apache/tools/ant/util/FileUtils;->createNewFile(Ljava/io/File;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 151
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to create "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez v0, :cond_3

    .line 153
    invoke-virtual {p0, p1, v1}, Lorg/apache/tools/ant/taskdefs/Truncate;->log(Ljava/lang/String;I)V

    return v2

    .line 156
    :cond_3
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Truncate;->getPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method public execute()V
    .locals 3

    .line 118
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->length:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->adjust:Ljava/lang/Long;

    if-nez v1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "length and adjust are mutually exclusive options"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 122
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->adjust:Ljava/lang/Long;

    if-nez v0, :cond_2

    .line 123
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Truncate;->ZERO:Ljava/lang/Long;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->length:Ljava/lang/Long;

    .line 125
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->path:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_5

    .line 128
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Resource;

    .line 129
    const-class v2, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-interface {v1}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v1

    .line 130
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/Truncate;->shouldProcess(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 131
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/Truncate;->process(Ljava/io/File;)V

    goto :goto_1

    :cond_4
    return-void

    .line 126
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No files specified."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAdjust(Ljava/lang/Long;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->adjust:Ljava/lang/Long;

    return-void
.end method

.method public setCreate(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->create:Z

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 1

    .line 67
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Truncate;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method public setLength(Ljava/lang/Long;)V
    .locals 4

    .line 93
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->length:Ljava/lang/Long;

    if-eqz p1, :cond_1

    .line 94
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot truncate to length "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public setMkdirs(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Truncate;->mkdirs:Z

    return-void
.end method
