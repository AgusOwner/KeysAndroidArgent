.class public Lorg/apache/tools/ant/taskdefs/Touch;
.super Lorg/apache/tools/ant/Task;
.source "Touch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;
    }
.end annotation


# static fields
.field public static final DEFAULT_DF_FACTORY:Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field private dateTime:Ljava/lang/String;

.field private dateTimeConfigured:Z

.field private dfFactory:Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;

.field private file:Ljava/io/File;

.field private fileNameMapper:Lorg/apache/tools/ant/util/FileNameMapper;

.field private filesets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/FileSet;",
            ">;"
        }
    .end annotation
.end field

.field private millis:J

.field private mkdirs:Z

.field private resources:Lorg/apache/tools/ant/types/resources/Union;

.field private verbose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Touch$1;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Touch$1;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Touch;->DEFAULT_DF_FACTORY:Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;

    .line 79
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Touch;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const-wide/16 v0, -0x1

    .line 82
    iput-wide v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->millis:J

    .line 84
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->filesets:Ljava/util/List;

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->verbose:Z

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->fileNameMapper:Lorg/apache/tools/ant/util/FileNameMapper;

    .line 90
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Touch;->DEFAULT_DF_FACTORY:Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->dfFactory:Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;

    return-void
.end method

.method private getTimestamp()J
    .locals 4

    .line 326
    iget-wide v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->millis:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method private touch(Ljava/io/File;J)V
    .locals 2

    .line 353
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Creating "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Touch;->verbose:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 354
    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Touch;->log(Ljava/lang/String;I)V

    .line 357
    :try_start_0
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Touch;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Touch;->mkdirs:Z

    invoke-virtual {v0, p1, v1}, Lorg/apache/tools/ant/util/FileUtils;->createNewFile(Ljava/io/File;Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 359
    new-instance p3, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not create "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 360
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Touch;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    invoke-direct {p3, p1, p2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw p3

    .line 363
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 367
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Touch;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/tools/ant/util/FileUtils;->setFileLastModified(Ljava/io/File;J)V

    return-void

    .line 364
    :cond_2
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    const-string p3, "Can not change modification date of read-only file %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method private touch(Lorg/apache/tools/ant/types/Resource;J)V
    .locals 5

    .line 330
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->fileNameMapper:Lorg/apache/tools/ant/util/FileNameMapper;

    if-nez v0, :cond_1

    .line 331
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    if-eqz v0, :cond_0

    .line 334
    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/Touch;->touch(Ljava/io/File;J)V

    goto :goto_1

    .line 336
    :cond_0
    const-class v0, Lorg/apache/tools/ant/types/resources/Touchable;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/types/resources/Touchable;

    invoke-interface {p1, p2, p3}, Lorg/apache/tools/ant/types/resources/Touchable;->touch(J)V

    goto :goto_1

    .line 339
    :cond_1
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 340
    array-length v1, v0

    if-lez v1, :cond_3

    .line 342
    iget-wide v1, p0, Lorg/apache/tools/ant/taskdefs/Touch;->millis:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 343
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide p2

    .line 345
    :cond_2
    array-length p1, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_3

    aget-object v2, v0, v1

    .line 346
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Touch;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lorg/apache/tools/ant/taskdefs/Touch;->touch(Ljava/io/File;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 1

    monitor-enter p0

    .line 209
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/tools/ant/types/resources/Union;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Union;-><init>()V

    :cond_0
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->resources:Lorg/apache/tools/ant/types/resources/Union;

    .line 210
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Union;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public add(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->fileNameMapper:Lorg/apache/tools/ant/util/FileNameMapper;

    if-nez v0, :cond_0

    .line 183
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Touch;->fileNameMapper:Lorg/apache/tools/ant/util/FileNameMapper;

    return-void

    .line 180
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 181
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Touch;->getTaskName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Only one mapper may be added to the %s task."

    invoke-direct {p1, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public addConfiguredMapper(Lorg/apache/tools/ant/types/Mapper;)V
    .locals 0

    .line 169
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Touch;->add(Lorg/apache/tools/ant/util/FileNameMapper;)V

    return-void
.end method

.method public addFilelist(Lorg/apache/tools/ant/types/FileList;)V
    .locals 0

    .line 200
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Touch;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .locals 1

    .line 191
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->filesets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Touch;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method protected declared-synchronized checkConfiguration()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "Setting millis to "

    monitor-enter p0

    .line 219
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Touch;->file:Ljava/io/File;

    if-nez v1, :cond_1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Touch;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Specify at least one source--a file or resource collection."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 223
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Touch;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 224
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Use a resource collection to touch directories."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Touch;->dateTime:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Touch;->dateTimeConfigured:Z

    if-nez v2, :cond_9

    .line 227
    iget-wide v2, p0, Lorg/apache/tools/ant/taskdefs/Touch;->millis:J

    const-string v4, "now"

    .line 228
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    if-eqz v1, :cond_4

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    goto :goto_4

    .line 231
    :cond_4
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Touch;->dfFactory:Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;

    invoke-interface {v1}, Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;->getPrimaryFormat()Ljava/text/DateFormat;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x0

    .line 234
    :try_start_1
    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/Touch;->dateTime:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 236
    :try_start_2
    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/Touch;->dfFactory:Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;

    invoke-interface {v8}, Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;->getFallbackFormat()Ljava/text/DateFormat;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v8, :cond_5

    :goto_2
    move-object v7, v1

    goto :goto_3

    .line 241
    :cond_5
    :try_start_3
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Touch;->dateTime:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :goto_3
    if-nez v7, :cond_8

    cmp-long v1, v2, v5

    if-ltz v1, :cond_7

    move-wide v1, v2

    .line 256
    :goto_4
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " from datetime attribute"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    iget-wide v7, p0, Lorg/apache/tools/ant/taskdefs/Touch;->millis:J

    cmp-long v3, v7, v5

    if-gez v3, :cond_6

    const/4 v3, 0x4

    goto :goto_5

    :cond_6
    const/4 v3, 0x3

    .line 256
    :goto_5
    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/Touch;->log(Ljava/lang/String;I)V

    .line 258
    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Touch;->setMillis(J)V

    .line 260
    iput-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Touch;->dateTimeConfigured:Z

    goto :goto_6

    .line 251
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Date of %s results in negative milliseconds value relative to epoch (January 1, 1970, 00:00:00 GMT)."

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Touch;->dateTime:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 248
    :cond_8
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v7}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Touch;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 262
    :cond_9
    :goto_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public execute()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 272
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Touch;->checkConfiguration()V

    .line 273
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Touch;->touch()V

    return-void
.end method

.method public setDatetime(Ljava/lang/String;)V
    .locals 2

    .line 118
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->dateTime:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Resetting datetime attribute to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Touch;->log(Ljava/lang/String;I)V

    .line 121
    :cond_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Touch;->dateTime:Ljava/lang/String;

    const/4 p1, 0x0

    .line 122
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Touch;->dateTimeConfigured:Z

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Touch;->file:Ljava/io/File;

    return-void
.end method

.method public setMillis(J)V
    .locals 0

    .line 107
    iput-wide p1, p0, Lorg/apache/tools/ant/taskdefs/Touch;->millis:J

    return-void
.end method

.method public setMkdirs(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Touch;->mkdirs:Z

    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 1

    .line 151
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Touch$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/tools/ant/taskdefs/Touch$2;-><init>(Lorg/apache/tools/ant/taskdefs/Touch;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Touch;->dfFactory:Lorg/apache/tools/ant/taskdefs/Touch$DateFormatFactory;

    return-void
.end method

.method public setVerbose(Z)V
    .locals 0

    .line 142
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Touch;->verbose:Z

    return-void
.end method

.method protected touch()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 281
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Touch;->getTimestamp()J

    move-result-wide v0

    .line 283
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Touch;->file:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 284
    new-instance v2, Lorg/apache/tools/ant/types/resources/FileResource;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Touch;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Touch;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v2, v0, v1}, Lorg/apache/tools/ant/taskdefs/Touch;->touch(Lorg/apache/tools/ant/types/Resource;J)V

    .line 287
    :cond_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Touch;->resources:Lorg/apache/tools/ant/types/resources/Union;

    if-nez v2, :cond_1

    return-void

    .line 291
    :cond_1
    invoke-virtual {v2}, Lorg/apache/tools/ant/types/resources/Union;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/types/Resource;

    .line 292
    const-class v4, Lorg/apache/tools/ant/types/resources/Touchable;

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/tools/ant/types/resources/Touchable;

    if-eqz v4, :cond_2

    .line 296
    invoke-direct {p0, v3, v0, v1}, Lorg/apache/tools/ant/taskdefs/Touch;->touch(Lorg/apache/tools/ant/types/Resource;J)V

    goto :goto_0

    .line 294
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t touch "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_3
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Touch;->filesets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/types/FileSet;

    .line 303
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Touch;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v4

    .line 304
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Touch;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/tools/ant/types/FileSet;->getDir(Lorg/apache/tools/ant/Project;)Ljava/io/File;

    move-result-object v3

    .line 306
    invoke-virtual {v4}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedDirectories()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 307
    new-instance v8, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v8, v3, v7}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v8, v0, v1}, Lorg/apache/tools/ant/taskdefs/Touch;->touch(Lorg/apache/tools/ant/types/Resource;J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method protected touch(Ljava/io/File;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 322
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Touch;->getTimestamp()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/tools/ant/taskdefs/Touch;->touch(Ljava/io/File;J)V

    return-void
.end method
