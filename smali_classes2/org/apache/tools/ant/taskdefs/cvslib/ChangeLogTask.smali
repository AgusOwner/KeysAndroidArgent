.class public Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;
.super Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;
.source "ChangeLogTask.java"


# instance fields
.field private cvsUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/cvslib/CvsUser;",
            ">;"
        }
    .end annotation
.end field

.field private destFile:Ljava/io/File;

.field private endDate:Ljava/util/Date;

.field private endTag:Ljava/lang/String;

.field private final filesets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/FileSet;",
            ">;"
        }
    .end annotation
.end field

.field private inputDir:Ljava/io/File;

.field private remote:Z

.field private startDate:Ljava/util/Date;

.field private startTag:Ljava/lang/String;

.field private usersFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;-><init>()V

    .line 73
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->cvsUsers:Ljava/util/List;

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->remote:Z

    .line 101
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->filesets:Ljava/util/List;

    return-void
.end method

.method private filterEntrySet([Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;)[Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;
    .locals 7

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 369
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p1, v3

    .line 370
    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;->getDate()Ljava/util/Date;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 383
    :cond_0
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->startDate:Ljava/util/Date;

    if-eqz v6, :cond_1

    invoke-virtual {v6, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 387
    :cond_1
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->endDate:Ljava/util/Date;

    if-eqz v6, :cond_2

    invoke-virtual {v6, v5}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 391
    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-array p1, v2, [Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;

    .line 394
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;

    return-object p1
.end method

.method private loadUserlist(Ljava/util/Properties;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->usersFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 353
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 355
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method private replaceAuthorIdWithName(Ljava/util/Properties;[Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;)V
    .locals 4

    .line 402
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 403
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;->getAuthor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 404
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;->getAuthor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;->setAuthor(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->inputDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 322
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->inputDir:Ljava/io/File;

    .line 324
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->destFile:Ljava/io/File;

    if-eqz v0, :cond_7

    .line 327
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->inputDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 331
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->usersFile:Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 332
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->usersFile:Ljava/io/File;

    .line 333
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Cannot find user lookup list %s"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 335
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->startTag:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->endTag:Ljava/lang/String;

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->startDate:Ljava/util/Date;

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->endDate:Ljava/util/Date;

    if-nez v0, :cond_5

    :cond_4
    return-void

    .line 337
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Specify either a tag or date range, not both"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->inputDir:Ljava/io/File;

    .line 329
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Cannot find base dir %s"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 325
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Destfile must be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeChangeLog([Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 418
    :try_start_0
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->destFile:Ljava/io/File;

    .line 419
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    new-array v4, v0, [Ljava/nio/file/OpenOption;

    invoke-static {v3, v4}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :try_start_1
    new-instance v2, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogWriter;

    invoke-direct {v2}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogWriter;-><init>()V

    invoke-virtual {v2, v1, p1}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogWriter;->printChangeLog(Ljava/io/PrintWriter;[Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;)V

    .line 423
    invoke-virtual {v1}, Ljava/io/PrintWriter;->checkError()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_0

    .line 426
    :try_start_2
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 424
    :cond_0
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string v2, "Encountered an error writing changelog"

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 418
    :try_start_4
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 429
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 427
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->filesets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addUser(Lorg/apache/tools/ant/taskdefs/cvslib/CvsUser;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->cvsUsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public execute()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->inputDir:Ljava/io/File;

    .line 220
    :try_start_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->validate()V

    .line 221
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 223
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->loadUserlist(Ljava/util/Properties;)V

    .line 225
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->cvsUsers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/taskdefs/cvslib/CvsUser;

    .line 226
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsUser;->validate()V

    .line 227
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsUser;->getUserID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsUser;->getDisplayname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 230
    :cond_0
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->remote:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v3, "-S"

    const-string v4, ""

    if-nez v2, :cond_1

    :try_start_1
    const-string v2, "log"

    .line 231
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->setCommand(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->getTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 234
    new-instance v2, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;

    invoke-direct {v2}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;-><init>()V

    .line 235
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->setProject(Lorg/apache/tools/ant/Project;)V

    const-string v5, "cvsversion"

    .line 236
    invoke-virtual {v2, v5}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->setTaskName(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->getCvsRoot()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->setCvsRoot(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->getCvsRsh()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->setCvsRsh(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->getPassFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->setPassfile(Ljava/io/File;)V

    .line 240
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->inputDir:Ljava/io/File;

    invoke-virtual {v2, v5}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->setDest(Ljava/io/File;)V

    .line 241
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->execute()V

    .line 242
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsVersion;->supportsCvsLogWithSOption()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 243
    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->addCommandArgument(Ljava/lang/String;)V

    goto :goto_1

    .line 248
    :cond_1
    invoke-virtual {p0, v4}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->setCommand(Ljava/lang/String;)V

    const-string v2, "rlog"

    .line 249
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->addCommandArgument(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->addCommandArgument(Ljava/lang/String;)V

    const-string v2, "-N"

    .line 255
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->addCommandArgument(Ljava/lang/String;)V

    .line 257
    :cond_2
    :goto_1
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->startTag:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->endTag:Ljava/lang/String;

    if-eqz v3, :cond_3

    goto :goto_2

    .line 262
    :cond_3
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->startDate:Ljava/util/Date;

    if-eqz v2, :cond_7

    .line 263
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->startDate:Ljava/util/Date;

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-d"

    .line 270
    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->addCommandArgument(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->addCommandArgument(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    :goto_2
    if-nez v2, :cond_5

    move-object v2, v4

    .line 260
    :cond_5
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->endTag:Ljava/lang/String;

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    move-object v4, v3

    .line 261
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-r"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->addCommandArgument(Ljava/lang/String;)V

    .line 275
    :cond_7
    :goto_4
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->filesets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/types/FileSet;

    .line 277
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/tools/ant/types/FileSet;->getDirectoryScanner(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v3

    .line 278
    invoke-virtual {v3}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    :goto_5
    if-ge v4, v5, :cond_8

    aget-object v6, v3, v4

    .line 279
    invoke-virtual {p0, v6}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->addCommandArgument(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 283
    :cond_9
    new-instance v2, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;

    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->remote:Z

    .line 284
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->getPackage()Ljava/lang/String;

    move-result-object v5

    .line 285
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->getModules()Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v3, v5, v6}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;-><init>(ZLjava/lang/String;Ljava/util/List;)V

    .line 286
    new-instance v3, Lorg/apache/tools/ant/taskdefs/cvslib/RedirectingStreamHandler;

    invoke-direct {v3, v2}, Lorg/apache/tools/ant/taskdefs/cvslib/RedirectingStreamHandler;-><init>(Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;)V

    .line 289
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->getCommand()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {p0, v5, v6}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->log(Ljava/lang/String;I)V

    .line 291
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->inputDir:Ljava/io/File;

    invoke-virtual {p0, v5}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->setDest(Ljava/io/File;)V

    .line 292
    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->setExecuteStreamHandler(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 294
    :try_start_2
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->execute()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 296
    :try_start_3
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/cvslib/RedirectingStreamHandler;->getErrors()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 299
    invoke-virtual {p0, v3, v4}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->log(Ljava/lang/String;I)V

    .line 302
    :cond_a
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogParser;->getEntrySetAsArray()[Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;

    move-result-object v2

    .line 303
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->filterEntrySet([Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;)[Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;

    move-result-object v2

    .line 305
    invoke-direct {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->replaceAuthorIdWithName(Ljava/util/Properties;[Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;)V

    .line 307
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->writeChangeLog([Lorg/apache/tools/ant/taskdefs/cvslib/CVSEntry;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 310
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->inputDir:Ljava/io/File;

    return-void

    :catchall_0
    move-exception v1

    .line 296
    :try_start_4
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/cvslib/RedirectingStreamHandler;->getErrors()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 299
    invoke-virtual {p0, v2, v4}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->log(Ljava/lang/String;I)V

    .line 301
    :cond_b
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    .line 310
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->inputDir:Ljava/io/File;

    .line 311
    throw v1
.end method

.method public setDaysinpast(I)V
    .locals 6

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p1

    const-wide/16 v4, 0x18

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 168
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->setStart(Ljava/util/Date;)V

    return-void
.end method

.method public setDestfile(Ljava/io/File;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->destFile:Ljava/io/File;

    return-void
.end method

.method public setDir(Ljava/io/File;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->inputDir:Ljava/io/File;

    return-void
.end method

.method public setEnd(Ljava/util/Date;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->endDate:Ljava/util/Date;

    return-void
.end method

.method public setEndTag(Ljava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->endTag:Ljava/lang/String;

    return-void
.end method

.method public setRemote(Z)V
    .locals 0

    .line 179
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->remote:Z

    return-void
.end method

.method public setStart(Ljava/util/Date;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->startDate:Ljava/util/Date;

    return-void
.end method

.method public setStartTag(Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->startTag:Ljava/lang/String;

    return-void
.end method

.method public setUsersfile(Ljava/io/File;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/ChangeLogTask;->usersFile:Ljava/io/File;

    return-void
.end method
