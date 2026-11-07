.class public Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;
.super Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;
.source "CvsTagDiff.java"


# static fields
.field private static final DOM_WRITER:Lorg/apache/tools/ant/util/DOMElementWriter;

.field static final FILE_HAS_CHANGED:Ljava/lang/String; = " changed from revision "

.field static final FILE_IS_NEW:Ljava/lang/String; = " is new;"

.field static final FILE_STRING:Ljava/lang/String; = "File "

.field static final FILE_STRING_LENGTH:I

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field static final FILE_WAS_REMOVED:Ljava/lang/String; = " is removed"

.field static final REVISION:Ljava/lang/String; = "revision "

.field static final TO_STRING:Ljava/lang/String; = " to "


# instance fields
.field private ignoreRemoved:Z

.field private mydestfile:Ljava/io/File;

.field private myendDate:Ljava/lang/String;

.field private myendTag:Ljava/lang/String;

.field private mypackage:Ljava/lang/String;

.field private mystartDate:Ljava/lang/String;

.field private mystartTag:Ljava/lang/String;

.field private packageNamePrefixLengths:[I

.field private packageNamePrefixes:[Ljava/lang/String;

.field private packageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 81
    new-instance v0, Lorg/apache/tools/ant/util/DOMElementWriter;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/DOMElementWriter;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->DOM_WRITER:Lorg/apache/tools/ant/util/DOMElementWriter;

    const/4 v0, 0x5

    .line 90
    sput v0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->FILE_STRING_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;-><init>()V

    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->ignoreRemoved:Z

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNames:Ljava/util/List;

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNamePrefixes:[Ljava/lang/String;

    .line 162
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNamePrefixLengths:[I

    return-void
.end method

.method private doFileHasChanged(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const-string v0, " changed from revision "

    .line 358
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 364
    :cond_0
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, " to "

    .line 365
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v0, v0, 0x17

    .line 367
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x4

    .line 369
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 370
    new-instance v2, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;

    invoke-direct {v2, v1, p2, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->log(Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1
.end method

.method private doFileIsNew(Ljava/util/List;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const-string v0, " is new;"

    .line 339
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 345
    :cond_0
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "revision "

    .line 347
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_1

    add-int/lit8 v0, v0, 0x9

    .line 349
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 351
    :goto_0
    new-instance v0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;

    invoke-direct {v0, v1, p2}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->log(Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1
.end method

.method private doFileWasRemoved(Ljava/util/List;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 379
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->ignoreRemoved:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, " is removed"

    .line 382
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return v1

    .line 387
    :cond_1
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "revision "

    .line 389
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    add-int/lit8 v0, v0, 0x9

    .line 391
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p2, v3

    .line 393
    :goto_0
    new-instance v0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;

    invoke-direct {v0, v1, v3, p2}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->log(Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1
.end method

.method private handlePackageNames()V
    .locals 4

    .line 503
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->mypackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 505
    new-instance v0, Ljava/util/StringTokenizer;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->mypackage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 506
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 508
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNames:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->addCommandArgument(Ljava/lang/String;)V

    goto :goto_0

    .line 512
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->getModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask$Module;

    .line 513
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNames:Ljava/util/List;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask$Module;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 516
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNamePrefixes:[Ljava/lang/String;

    .line 517
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNamePrefixLengths:[I

    const/4 v0, 0x0

    .line 518
    :goto_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNamePrefixes:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 519
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "File "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNames:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 520
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNamePrefixLengths:[I

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNamePrefixes:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private parseRDiff(Ljava/io/File;)[Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 297
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :try_start_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 316
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 319
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNamePrefixes:[Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNamePrefixLengths:[I

    invoke-static {v1, v2, v3}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->removePackageName(Ljava/lang/String;[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 325
    invoke-direct {p0, p1, v1}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->doFileIsNew(Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 326
    invoke-direct {p0, p1, v1}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->doFileHasChanged(Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 327
    invoke-direct {p0, p1, v1}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->doFileWasRemoved(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    .line 329
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;

    .line 332
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 297
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 334
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Error in parsing"

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static removePackageName(Ljava/lang/String;[Ljava/lang/String;[I)Ljava/lang/String;
    .locals 2

    .line 532
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->FILE_STRING_LENGTH:I

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 535
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 536
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 537
    aget p1, p2, v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 540
    :cond_2
    sget p1, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->FILE_STRING_LENGTH:I

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 471
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->mypackage:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->getModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 472
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Package/module must be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->mydestfile:Ljava/io/File;

    if-eqz v0, :cond_a

    .line 479
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->mystartTag:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->mystartDate:Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_1

    .line 480
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Start tag or start date must be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    .line 483
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->mystartDate:Ljava/lang/String;

    if-nez v0, :cond_4

    goto :goto_2

    .line 484
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one of start tag and start date must be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->myendTag:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->myendDate:Ljava/lang/String;

    if-eqz v1, :cond_6

    goto :goto_3

    .line 489
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "End tag or end date must be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_3
    if-eqz v0, :cond_9

    .line 492
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->myendDate:Ljava/lang/String;

    if-nez v0, :cond_8

    goto :goto_4

    .line 493
    :cond_8
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Only one of end tag and end date must be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_4
    return-void

    .line 476
    :cond_a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Destfile must be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeTagDiff([Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 406
    :try_start_0
    new-instance v7, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->mydestfile:Ljava/io/File;

    .line 407
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    new-array v3, v0, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v7, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    .line 408
    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    invoke-static {}, Lorg/apache/tools/ant/util/DOMUtils;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    const-string v2, "tagdiff"

    .line 410
    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 411
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->mystartTag:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v4, "startTag"

    .line 412
    invoke-interface {v2, v4, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v3, "startDate"

    .line 414
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->mystartDate:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :goto_0
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->myendTag:Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v4, "endTag"

    .line 417
    invoke-interface {v2, v4, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v3, "endDate"

    .line 419
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->myendDate:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v3, "cvsroot"

    .line 422
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->getCvsRoot()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "package"

    const-string v4, ","

    .line 423
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNames:Ljava/util/List;

    .line 424
    invoke-static {v4, v5}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 423
    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    sget-object v3, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->DOM_WRITER:Lorg/apache/tools/ant/util/DOMElementWriter;

    const-string v4, "\t"

    invoke-virtual {v3, v2, v7, v0, v4}, Lorg/apache/tools/ant/util/DOMElementWriter;->openElement(Lorg/w3c/dom/Element;Ljava/io/Writer;ILjava/lang/String;)V

    .line 426
    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    .line 427
    array-length v3, p1

    move v4, v0

    :goto_2
    if-ge v4, v3, :cond_2

    aget-object v5, p1, v4

    .line 428
    invoke-direct {p0, v1, v7, v5}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->writeTagEntry(Lorg/w3c/dom/Document;Ljava/io/PrintWriter;Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 430
    :cond_2
    sget-object v1, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->DOM_WRITER:Lorg/apache/tools/ant/util/DOMElementWriter;

    const/4 v4, 0x0

    const-string v5, "\t"

    const/4 v6, 0x1

    move-object v3, v7

    invoke-virtual/range {v1 .. v6}, Lorg/apache/tools/ant/util/DOMElementWriter;->closeElement(Lorg/w3c/dom/Element;Ljava/io/Writer;ILjava/lang/String;Z)V

    .line 431
    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V

    .line 432
    invoke-virtual {v7}, Ljava/io/PrintWriter;->checkError()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_3

    .line 435
    :try_start_2
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 433
    :cond_3
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Encountered an error writing tagdiff"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 406
    :try_start_4
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 438
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 436
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->log(Ljava/lang/String;I)V

    :goto_4
    return-void
.end method

.method private writeTagEntry(Lorg/w3c/dom/Document;Ljava/io/PrintWriter;Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "entry"

    .line 452
    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    const-string v0, "file"

    .line 453
    invoke-static {p1, v0}, Lorg/apache/tools/ant/util/DOMUtils;->createChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "name"

    .line 454
    invoke-virtual {p3}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/tools/ant/util/DOMUtils;->appendCDATAElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-virtual {p3}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->getRevision()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "revision"

    .line 456
    invoke-virtual {p3}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->getRevision()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/tools/ant/util/DOMUtils;->appendTextElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :cond_0
    invoke-virtual {p3}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->getPreviousRevision()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "prevrevision"

    .line 460
    invoke-virtual {p3}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;->getPreviousRevision()Ljava/lang/String;

    move-result-object p3

    .line 459
    invoke-static {v0, v1, p3}, Lorg/apache/tools/ant/util/DOMUtils;->appendTextElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_1
    sget-object p3, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->DOM_WRITER:Lorg/apache/tools/ant/util/DOMElementWriter;

    const/4 v0, 0x1

    const-string v1, "\t"

    invoke-virtual {p3, p1, p2, v0, v1}, Lorg/apache/tools/ant/util/DOMElementWriter;->write(Lorg/w3c/dom/Element;Ljava/io/Writer;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 237
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->validate()V

    const-string v0, "rdiff"

    .line 240
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->addCommandArgument(Ljava/lang/String;)V

    const-string v0, "-s"

    .line 241
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->addCommandArgument(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->mystartTag:Ljava/lang/String;

    const-string v1, "-r"

    const-string v2, "-D"

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->addCommandArgument(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->mystartTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->addCommandArgument(Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->addCommandArgument(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->mystartDate:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->addCommandArgument(Ljava/lang/String;)V

    .line 249
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->myendTag:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 250
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->addCommandArgument(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->myendTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->addCommandArgument(Ljava/lang/String;)V

    goto :goto_1

    .line 253
    :cond_1
    invoke-virtual {p0, v2}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->addCommandArgument(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->myendDate:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->addCommandArgument(Ljava/lang/String;)V

    :goto_1
    const-string v0, ""

    .line 258
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->setCommand(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 261
    :try_start_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->handlePackageNames()V

    .line 263
    sget-object v1, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    const-string v3, "cvstagdiff"

    const-string v4, ".log"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lorg/apache/tools/ant/util/FileUtils;->createTempFile(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZ)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 265
    :try_start_1
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->setOutput(Ljava/io/File;)V

    .line 268
    invoke-super {p0}, Lorg/apache/tools/ant/taskdefs/AbstractCvsTask;->execute()V

    .line 271
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->parseRDiff(Ljava/io/File;)[Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;

    move-result-object v2

    .line 274
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->writeTagDiff([Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNamePrefixes:[Ljava/lang/String;

    .line 278
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNamePrefixLengths:[I

    .line 279
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz v1, :cond_2

    .line 281
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    goto :goto_2

    :catchall_1
    move-exception v2

    move-object v1, v0

    .line 277
    :goto_2
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNamePrefixes:[Ljava/lang/String;

    .line 278
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNamePrefixLengths:[I

    .line 279
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->packageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz v1, :cond_3

    .line 281
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 283
    :cond_3
    throw v2
.end method

.method public setDestFile(Ljava/io/File;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->mydestfile:Ljava/io/File;

    return-void
.end method

.method public setEndDate(Ljava/lang/String;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->myendDate:Ljava/lang/String;

    return-void
.end method

.method public setEndTag(Ljava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->myendTag:Ljava/lang/String;

    return-void
.end method

.method public setIgnoreRemoved(Z)V
    .locals 0

    .line 226
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->ignoreRemoved:Z

    return-void
.end method

.method public setPackage(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->mypackage:Ljava/lang/String;

    return-void
.end method

.method public setStartDate(Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->mystartDate:Ljava/lang/String;

    return-void
.end method

.method public setStartTag(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/cvslib/CvsTagDiff;->mystartTag:Ljava/lang/String;

    return-void
.end method
