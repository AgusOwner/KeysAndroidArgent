.class public Lorg/apache/tools/ant/taskdefs/FixCRLF;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "FixCRLF.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/ChainableReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/FixCRLF$CrLf;,
        Lorg/apache/tools/ant/taskdefs/FixCRLF$AddAsisRemove;,
        Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;
    }
.end annotation


# static fields
.field public static final ERROR_FILE_AND_SRCDIR:Ljava/lang/String; = "<fixcrlf> error: srcdir and file are mutually exclusive"

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final FIXCRLF_ERROR:Ljava/lang/String; = "<fixcrlf> error: "


# instance fields
.field private destDir:Ljava/io/File;

.field private encoding:Ljava/lang/String;

.field private fcv:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;"
        }
    .end annotation
.end field

.field private file:Ljava/io/File;

.field private filter:Lorg/apache/tools/ant/filters/FixCrLfFilter;

.field private outputEncoding:Ljava/lang/String;

.field private preserveLastModified:Z

.field private srcDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 85
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->preserveLastModified:Z

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->destDir:Ljava/io/File;

    .line 98
    new-instance v1, Lorg/apache/tools/ant/filters/FixCrLfFilter;

    invoke-direct {v1}, Lorg/apache/tools/ant/filters/FixCrLfFilter;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->filter:Lorg/apache/tools/ant/filters/FixCrLfFilter;

    .line 99
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->fcv:Ljava/util/Vector;

    .line 104
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->encoding:Ljava/lang/String;

    .line 109
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->outputEncoding:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/taskdefs/FixCRLF;)Lorg/apache/tools/ant/filters/FixCrLfFilter;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->filter:Lorg/apache/tools/ant/filters/FixCrLfFilter;

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/taskdefs/FixCRLF;)Ljava/lang/String;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->encoding:Ljava/lang/String;

    return-object p0
.end method

.method private processFile(Ljava/lang/String;)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "preserved lastModified for "

    const-string v3, "destFile "

    const-string v4, "error running fixcrlf on file "

    .line 347
    new-instance v15, Ljava/io/File;

    iget-object v5, v1, Lorg/apache/tools/ant/taskdefs/FixCRLF;->srcDir:Ljava/io/File;

    invoke-direct {v15, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 348
    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    .line 349
    iget-object v5, v1, Lorg/apache/tools/ant/taskdefs/FixCRLF;->destDir:Ljava/io/File;

    if-nez v5, :cond_0

    iget-object v5, v1, Lorg/apache/tools/ant/taskdefs/FixCRLF;->srcDir:Ljava/io/File;

    :cond_0
    move-object v12, v5

    .line 351
    iget-object v5, v1, Lorg/apache/tools/ant/taskdefs/FixCRLF;->fcv:Ljava/util/Vector;

    const/4 v11, 0x1

    if-nez v5, :cond_1

    .line 352
    new-instance v5, Lorg/apache/tools/ant/types/FilterChain;

    invoke-direct {v5}, Lorg/apache/tools/ant/types/FilterChain;-><init>()V

    .line 353
    iget-object v6, v1, Lorg/apache/tools/ant/taskdefs/FixCRLF;->filter:Lorg/apache/tools/ant/filters/FixCrLfFilter;

    invoke-virtual {v5, v6}, Lorg/apache/tools/ant/types/FilterChain;->add(Lorg/apache/tools/ant/filters/ChainableReader;)V

    .line 354
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6, v11}, Ljava/util/Vector;-><init>(I)V

    iput-object v6, v1, Lorg/apache/tools/ant/taskdefs/FixCRLF;->fcv:Ljava/util/Vector;

    .line 355
    invoke-virtual {v6, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_1
    sget-object v10, Lorg/apache/tools/ant/taskdefs/FixCRLF;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/FixCRLF;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v17

    const-string v18, "fixcrlf"

    const-string v19, ""

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v16, v10

    invoke-virtual/range {v16 .. v22}, Lorg/apache/tools/ant/util/FileUtils;->createTempFile(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZ)Ljava/io/File;

    move-result-object v9

    const/4 v8, 0x0

    .line 359
    :try_start_0
    iget-object v7, v1, Lorg/apache/tools/ant/taskdefs/FixCRLF;->fcv:Ljava/util/Vector;

    const/16 v16, 0x1

    const/16 v17, 0x0

    iget-object v6, v1, Lorg/apache/tools/ant/taskdefs/FixCRLF;->encoding:Ljava/lang/String;

    .line 360
    iget-object v5, v1, Lorg/apache/tools/ant/taskdefs/FixCRLF;->outputEncoding:Ljava/lang/String;

    if-nez v5, :cond_2

    move-object/from16 v18, v6

    goto :goto_0

    :cond_2
    move-object/from16 v18, v5

    .line 361
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/FixCRLF;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v19
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, v10

    move-object/from16 v20, v6

    move-object v6, v15

    move-object/from16 v21, v7

    move-object v7, v9

    move-object/from16 v23, v9

    move-object/from16 v9, v21

    move-object/from16 v24, v10

    move/from16 v10, v16

    move/from16 v11, v17

    move-object/from16 v25, v12

    move-object/from16 v12, v20

    move-wide/from16 v26, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v19

    .line 359
    :try_start_1
    invoke-virtual/range {v5 .. v14}, Lorg/apache/tools/ant/util/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Lorg/apache/tools/ant/types/FilterSetCollection;Ljava/util/Vector;ZZLjava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;)V

    .line 363
    new-instance v5, Ljava/io/File;

    move-object/from16 v6, v25

    invoke-direct {v5, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 366
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v6, 0x4

    if-eqz v0, :cond_5

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " exists"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Lorg/apache/tools/ant/taskdefs/FixCRLF;->log(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v3, v23

    move-object/from16 v0, v24

    .line 369
    :try_start_2
    invoke-virtual {v0, v5, v3}, Lorg/apache/tools/ant/util/FileUtils;->contentEquals(Ljava/io/File;Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v11, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    move v11, v7

    .line 370
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v11, :cond_4

    const-string v8, " is being written"

    goto :goto_2

    :cond_4
    const-string v8, " is not written, as the contents are identical"

    .line 371
    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 370
    invoke-virtual {v1, v7, v6}, Lorg/apache/tools/ant/taskdefs/FixCRLF;->log(Ljava/lang/String;I)V

    goto :goto_3

    :cond_5
    move-object/from16 v3, v23

    move-object/from16 v0, v24

    const/4 v11, 0x1

    :goto_3
    if-eqz v11, :cond_6

    const/4 v7, 0x1

    .line 375
    invoke-virtual {v0, v3, v5, v7}, Lorg/apache/tools/ant/util/FileUtils;->rename(Ljava/io/File;Ljava/io/File;Z)V

    .line 376
    iget-boolean v7, v1, Lorg/apache/tools/ant/taskdefs/FixCRLF;->preserveLastModified:Z

    if-eqz v7, :cond_6

    .line 377
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lorg/apache/tools/ant/taskdefs/FixCRLF;->log(Ljava/lang/String;I)V

    move-wide/from16 v6, v26

    .line 379
    invoke-virtual {v0, v5, v6, v7}, Lorg/apache/tools/ant/util/FileUtils;->setFileLastModified(Ljava/io/File;J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_6
    :goto_4
    if-eqz v3, :cond_7

    .line 385
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 386
    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/util/FileUtils;->tryHardToDelete(Ljava/io/File;)Z

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v3, v23

    goto :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v3, v23

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v3, v9

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v3, v9

    .line 383
    :goto_5
    :try_start_3
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    :goto_6
    if-eqz v3, :cond_8

    .line 385
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 386
    sget-object v2, Lorg/apache/tools/ant/taskdefs/FixCRLF;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/util/FileUtils;->tryHardToDelete(Ljava/io/File;)Z

    .line 388
    :cond_8
    throw v0
.end method

.method private validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->file:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->srcDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->fileset:Lorg/apache/tools/ant/types/FileSet;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/FileSet;->setFile(Ljava/io/File;)V

    .line 319
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->srcDir:Ljava/io/File;

    goto :goto_0

    .line 314
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "<fixcrlf> error: srcdir and file are mutually exclusive"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->srcDir:Ljava/io/File;

    if-eqz v0, :cond_7

    .line 325
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 329
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->srcDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 333
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->destDir:Ljava/io/File;

    if-eqz v0, :cond_4

    .line 334
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 338
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->destDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 339
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->destDir:Ljava/io/File;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "<fixcrlf> error: destdir is not a directory: \'%s\'"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 335
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->destDir:Ljava/io/File;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "<fixcrlf> error: destdir does not exist: \'%s\'"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_4
    :goto_1
    return-void

    .line 330
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->srcDir:Ljava/io/File;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "<fixcrlf> error: srcdir is not a directory: \'%s\'"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 326
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->srcDir:Ljava/io/File;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "<fixcrlf> error: srcdir does not exist: \'%s\'"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 322
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "<fixcrlf> error: srcdir attribute must be set!"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final chain(Ljava/io/Reader;)Ljava/io/Reader;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->filter:Lorg/apache/tools/ant/filters/FixCrLfFilter;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->chain(Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object p1

    return-object p1
.end method

.method public execute()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 290
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/FixCRLF;->validate()V

    .line 293
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->encoding:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "default"

    .line 294
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "options: eol="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->filter:Lorg/apache/tools/ant/filters/FixCrLfFilter;

    .line 295
    invoke-virtual {v2}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->getEol()Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tab="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->filter:Lorg/apache/tools/ant/filters/FixCrLfFilter;

    .line 296
    invoke-virtual {v2}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->getTab()Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " eof="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->filter:Lorg/apache/tools/ant/filters/FixCrLfFilter;

    .line 297
    invoke-virtual {v2}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->getEof()Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tablength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->filter:Lorg/apache/tools/ant/filters/FixCrLfFilter;

    .line 298
    invoke-virtual {v2}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->getTablength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " encoding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " outputencoding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 301
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->outputEncoding:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 294
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/FixCRLF;->log(Ljava/lang/String;I)V

    .line 304
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->srcDir:Ljava/io/File;

    invoke-super {p0, v0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;->getDirectoryScanner(Ljava/io/File;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 307
    invoke-direct {p0, v3}, Lorg/apache/tools/ant/taskdefs/FixCRLF;->processFile(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setCr(Lorg/apache/tools/ant/taskdefs/FixCRLF$AddAsisRemove;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "DEPRECATED: The cr attribute has been deprecated,"

    const/4 v1, 0x1

    .line 187
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/FixCRLF;->log(Ljava/lang/String;I)V

    const-string v0, "Please use the eol attribute instead"

    .line 189
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/FixCRLF;->log(Ljava/lang/String;I)V

    .line 190
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/FixCRLF$AddAsisRemove;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 191
    new-instance v0, Lorg/apache/tools/ant/taskdefs/FixCRLF$CrLf;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/FixCRLF$CrLf;-><init>()V

    const-string v1, "remove"

    .line 192
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "lf"

    .line 193
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/FixCRLF$CrLf;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "asis"

    .line 194
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 195
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/FixCRLF$CrLf;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "crlf"

    .line 198
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/FixCRLF$CrLf;->setValue(Ljava/lang/String;)V

    .line 200
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/FixCRLF;->setEol(Lorg/apache/tools/ant/taskdefs/FixCRLF$CrLf;)V

    return-void
.end method

.method public setDestdir(Ljava/io/File;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->destDir:Ljava/io/File;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setEof(Lorg/apache/tools/ant/taskdefs/FixCRLF$AddAsisRemove;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->filter:Lorg/apache/tools/ant/filters/FixCrLfFilter;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/FixCRLF$AddAsisRemove;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->newInstance(Ljava/lang/String;)Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->setEof(Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;)V

    return-void
.end method

.method public setEol(Lorg/apache/tools/ant/taskdefs/FixCRLF$CrLf;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->filter:Lorg/apache/tools/ant/filters/FixCrLfFilter;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/FixCRLF$CrLf;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;->newInstance(Ljava/lang/String;)Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->setEol(Lorg/apache/tools/ant/filters/FixCrLfFilter$CrLf;)V

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->file:Ljava/io/File;

    return-void
.end method

.method public setFixlast(Z)V
    .locals 1

    .line 271
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->filter:Lorg/apache/tools/ant/filters/FixCrLfFilter;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->setFixlast(Z)V

    return-void
.end method

.method public setJavafiles(Z)V
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->filter:Lorg/apache/tools/ant/filters/FixCrLfFilter;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->setJavafiles(Z)V

    return-void
.end method

.method public setOutputEncoding(Ljava/lang/String;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->outputEncoding:Ljava/lang/String;

    return-void
.end method

.method public setPreserveLastModified(Z)V
    .locals 0

    .line 280
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->preserveLastModified:Z

    return-void
.end method

.method public setSrcdir(Ljava/io/File;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->srcDir:Ljava/io/File;

    return-void
.end method

.method public setTab(Lorg/apache/tools/ant/taskdefs/FixCRLF$AddAsisRemove;)V
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->filter:Lorg/apache/tools/ant/filters/FixCrLfFilter;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/FixCRLF$AddAsisRemove;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;->newInstance(Ljava/lang/String;)Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->setTab(Lorg/apache/tools/ant/filters/FixCrLfFilter$AddAsisRemove;)V

    return-void
.end method

.method public setTablength(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 225
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF;->filter:Lorg/apache/tools/ant/filters/FixCrLfFilter;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->setTablength(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 229
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
