.class public Lorg/apache/tools/ant/taskdefs/Available;
.super Lorg/apache/tools/ant/Task;
.source "Available.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Available$FileDir;
    }
.end annotation


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field private classname:Ljava/lang/String;

.field private classpath:Lorg/apache/tools/ant/types/Path;

.field private file:Ljava/io/File;

.field private filename:Ljava/lang/String;

.field private filepath:Lorg/apache/tools/ant/types/Path;

.field private ignoreSystemclasses:Z

.field private isTask:Z

.field private loader:Lorg/apache/tools/ant/AntClassLoader;

.field private property:Ljava/lang/String;

.field private resource:Ljava/lang/String;

.field private searchParents:Z

.field private type:Lorg/apache/tools/ant/taskdefs/Available$FileDir;

.field private value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Available;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const-string v0, "true"

    .line 55
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->value:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->isTask:Z

    .line 57
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->ignoreSystemclasses:Z

    .line 58
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->searchParents:Z

    return-void
.end method

.method private checkClass(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 450
    :try_start_0
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Available;->ignoreSystemclasses:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 451
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Available;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Available;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v2, v4}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Available;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 452
    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/AntClassLoader;->setParentFirst(Z)V

    .line 453
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Available;->loader:Lorg/apache/tools/ant/AntClassLoader;

    invoke-virtual {v2}, Lorg/apache/tools/ant/AntClassLoader;->addJavaLibraries()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    .line 455
    :try_start_1
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Available;->loader:Lorg/apache/tools/ant/AntClassLoader;

    invoke-virtual {v2, p1}, Lorg/apache/tools/ant/AntClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    return v3

    .line 462
    :cond_0
    :try_start_2
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Available;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v2, :cond_1

    .line 463
    invoke-virtual {v2, p1}, Lorg/apache/tools/ant/AntClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    goto :goto_0

    .line 465
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 469
    invoke-static {p1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    goto :goto_0

    .line 471
    :cond_2
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    return v3

    :catch_1
    move-exception v2

    .line 480
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not load dependent class \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" for class \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Available;->log(Ljava/lang/String;I)V

    return v1

    .line 476
    :catch_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "class \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\" was not found"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Available;->log(Ljava/lang/String;I)V

    return v1
.end method

.method private checkFile()Z
    .locals 12

    .line 334
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->filepath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->file:Ljava/io/File;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Available;->filename:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Available;->checkFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 337
    :cond_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v0

    .line 338
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_c

    aget-object v4, v0, v3

    .line 339
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Searching "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {p0, v5, v6}, Lorg/apache/tools/ant/taskdefs/Available;->log(Ljava/lang/String;I)V

    .line 340
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    const-string v8, "Found directory: "

    const-string v9, "Found: "

    const/4 v10, 0x1

    if-eqz v7, :cond_5

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/Available;->filename:Ljava/lang/String;

    .line 345
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Available;->filename:Ljava/lang/String;

    .line 346
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 347
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->type:Lorg/apache/tools/ant/taskdefs/Available$FileDir;

    if-nez v0, :cond_2

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/Available;->log(Ljava/lang/String;I)V

    return v10

    .line 351
    :cond_2
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Available$FileDir;->isDir()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 352
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/Available;->log(Ljava/lang/String;I)V

    return v10

    .line 356
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->type:Lorg/apache/tools/ant/taskdefs/Available$FileDir;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Available$FileDir;->isFile()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 357
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Found file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/Available;->log(Ljava/lang/String;I)V

    return v10

    :cond_4
    return v2

    .line 364
    :cond_5
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 366
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/Available;->filename:Ljava/lang/String;

    .line 367
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 368
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->type:Lorg/apache/tools/ant/taskdefs/Available$FileDir;

    if-nez v0, :cond_6

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/Available;->log(Ljava/lang/String;I)V

    return v10

    .line 372
    :cond_6
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Available$FileDir;->isDir()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/Available;->log(Ljava/lang/String;I)V

    return v10

    :cond_7
    return v2

    .line 380
    :cond_8
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    const-string v7, " in "

    if-eqz v6, :cond_9

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 381
    new-instance v6, Ljava/io/File;

    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/Available;->filename:Ljava/lang/String;

    invoke-direct {v6, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lorg/apache/tools/ant/taskdefs/Available;->filename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v6, v5}, Lorg/apache/tools/ant/taskdefs/Available;->checkFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    return v10

    .line 388
    :cond_9
    :goto_1
    iget-boolean v5, p0, Lorg/apache/tools/ant/taskdefs/Available;->searchParents:Z

    if-eqz v5, :cond_b

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 389
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/Available;->filename:Ljava/lang/String;

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/Available;->filename:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lorg/apache/tools/ant/taskdefs/Available;->checkFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    return v10

    .line 393
    :cond_a
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    goto :goto_1

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_c
    return v2
.end method

.method private checkFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3

    .line 403
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->type:Lorg/apache/tools/ant/taskdefs/Available$FileDir;

    const/4 v1, 0x3

    if-eqz v0, :cond_3

    .line 404
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Available$FileDir;->isDir()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Found directory: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v1}, Lorg/apache/tools/ant/taskdefs/Available;->log(Ljava/lang/String;I)V

    .line 408
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    return p1

    .line 410
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->type:Lorg/apache/tools/ant/taskdefs/Available$FileDir;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Available$FileDir;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 411
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Found file: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v1}, Lorg/apache/tools/ant/taskdefs/Available;->log(Ljava/lang/String;I)V

    .line 414
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    return p1

    .line 417
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Found: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v1}, Lorg/apache/tools/ant/taskdefs/Available;->log(Ljava/lang/String;I)V

    .line 420
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method private checkResource(Ljava/lang/String;)Z
    .locals 1

    .line 429
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/AntClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_0

    .line 432
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 434
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_0

    .line 436
    :cond_1
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 441
    :goto_1
    invoke-static {p1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    return v0

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 442
    throw p1
.end method


# virtual methods
.method public createClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 87
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Available;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public createFilepath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 119
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->filepath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Available;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->filepath:Lorg/apache/tools/ant/types/Path;

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->filepath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method public eval()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "Unable to load resource "

    const-string v1, "Unable to load class "

    const-string v2, " to set property "

    const/4 v3, 0x0

    .line 264
    :try_start_0
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Available;->classname:Ljava/lang/String;

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Available;->file:Ljava/io/File;

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Available;->resource:Ljava/lang/String;

    if-eqz v4, :cond_0

    goto :goto_0

    .line 265
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "At least one of (classname|file|resource) is required"

    .line 267
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Available;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 269
    :cond_1
    :goto_0
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Available;->type:Lorg/apache/tools/ant/taskdefs/Available$FileDir;

    if-eqz v4, :cond_3

    .line 270
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Available;->file:Ljava/io/File;

    if-eqz v4, :cond_2

    goto :goto_1

    .line 271
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The type attribute is only valid when specifying the file attribute."

    .line 273
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Available;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 276
    :cond_3
    :goto_1
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Available;->classpath:Lorg/apache/tools/ant/types/Path;

    if-eqz v4, :cond_4

    .line 277
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Available;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/types/Path;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 278
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Available;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Available;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/tools/ant/taskdefs/Available;->loader:Lorg/apache/tools/ant/AntClassLoader;

    :cond_4
    const-string v4, ""

    .line 281
    iget-boolean v5, p0, Lorg/apache/tools/ant/taskdefs/Available;->isTask:Z

    if-eqz v5, :cond_5

    .line 282
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Available;->property:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_5
    const-string v2, "available"

    .line 284
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/Available;->setTaskName(Ljava/lang/String;)V

    .line 286
    :goto_2
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Available;->classname:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-eqz v2, :cond_8

    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/Available;->checkClass(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Available;->classname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/Available;->log(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v0, :cond_6

    .line 307
    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 308
    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/Available;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 310
    :cond_6
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->isTask:Z

    if-nez v0, :cond_7

    .line 311
    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/taskdefs/Available;->setTaskName(Ljava/lang/String;)V

    :cond_7
    return v5

    .line 291
    :cond_8
    :try_start_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Available;->file:Ljava/io/File;

    if-eqz v1, :cond_c

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Available;->checkFile()Z

    move-result v1

    if-nez v1, :cond_c

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to find "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Available;->type:Lorg/apache/tools/ant/taskdefs/Available$FileDir;

    if-eqz v1, :cond_9

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    :cond_9
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Available;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/Available;->log(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v0, :cond_a

    .line 307
    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 308
    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/Available;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 310
    :cond_a
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->isTask:Z

    if-nez v0, :cond_b

    .line 311
    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/taskdefs/Available;->setTaskName(Ljava/lang/String;)V

    :cond_b
    return v5

    .line 300
    :cond_c
    :try_start_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Available;->resource:Ljava/lang/String;

    if-eqz v1, :cond_f

    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/Available;->checkResource(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->resource:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/Available;->log(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 306
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v0, :cond_d

    .line 307
    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 308
    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/Available;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 310
    :cond_d
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->isTask:Z

    if-nez v0, :cond_e

    .line 311
    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/taskdefs/Available;->setTaskName(Ljava/lang/String;)V

    :cond_e
    return v5

    .line 306
    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v0, :cond_10

    .line 307
    invoke-virtual {v0}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 308
    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/Available;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 310
    :cond_10
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->isTask:Z

    if-nez v0, :cond_11

    .line 311
    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/taskdefs/Available;->setTaskName(Ljava/lang/String;)V

    :cond_11
    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 306
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Available;->loader:Lorg/apache/tools/ant/AntClassLoader;

    if-eqz v1, :cond_12

    .line 307
    invoke-virtual {v1}, Lorg/apache/tools/ant/AntClassLoader;->cleanup()V

    .line 308
    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/Available;->loader:Lorg/apache/tools/ant/AntClassLoader;

    .line 310
    :cond_12
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Available;->isTask:Z

    if-nez v1, :cond_13

    .line 311
    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/taskdefs/Available;->setTaskName(Ljava/lang/String;)V

    .line 313
    :cond_13
    throw v0
.end method

.method public execute()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->property:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 236
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->isTask:Z

    const/4 v1, 0x0

    .line 238
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Available;->eval()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Available;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v2

    .line 240
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Available;->property:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/PropertyHelper;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 241
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Available;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "DEPRECATED - <available> used to override an existing property.%n  Build file should not reuse the same property name for different values."

    new-array v4, v1, [Ljava/lang/Object;

    .line 242
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lorg/apache/tools/ant/taskdefs/Available;->log(Ljava/lang/String;I)V

    .line 248
    :cond_0
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Available;->property:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Available;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v0}, Lorg/apache/tools/ant/PropertyHelper;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :cond_1
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Available;->isTask:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Available;->isTask:Z

    .line 252
    throw v0

    .line 232
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "property attribute is required"

    .line 233
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Available;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method public setClassname(Ljava/lang/String;)V
    .locals 1

    .line 162
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Available;->classname:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 78
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Available;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    return-void
.end method

.method public setClasspathRef(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 100
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Available;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 2

    .line 174
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Available;->file:Ljava/io/File;

    .line 175
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Available;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Available;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/util/FileUtils;->removeLeadingPath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Available;->filename:Ljava/lang/String;

    return-void
.end method

.method public setFilepath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1

    .line 109
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Available;->createFilepath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    return-void
.end method

.method public setIgnoresystemclasses(Z)V
    .locals 0

    .line 221
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Available;->ignoreSystemclasses:Z

    return-void
.end method

.method public setProperty(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Available;->property:Ljava/lang/String;

    return-void
.end method

.method public setResource(Ljava/lang/String;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Available;->resource:Ljava/lang/String;

    return-void
.end method

.method public setSearchParents(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Available;->searchParents:Z

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "DEPRECATED - The setType(String) method has been deprecated. Use setType(Available.FileDir) instead."

    const/4 v1, 0x1

    .line 197
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Available;->log(Ljava/lang/String;I)V

    .line 199
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Available$FileDir;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Available$FileDir;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Available;->type:Lorg/apache/tools/ant/taskdefs/Available$FileDir;

    .line 200
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Available$FileDir;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setType(Lorg/apache/tools/ant/taskdefs/Available$FileDir;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Available;->type:Lorg/apache/tools/ant/taskdefs/Available$FileDir;

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Available;->value:Ljava/lang/Object;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 152
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Available;->setValue(Ljava/lang/Object;)V

    return-void
.end method
